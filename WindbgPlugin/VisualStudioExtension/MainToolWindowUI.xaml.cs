using System;
using System.ComponentModel;
using System.Drawing;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Diagnostics;
using System;
using System.IO;
using System.Text;
using System.Collections.Generic;

using System.Windows.Navigation;

namespace VSPackage.CPPCheckPlugin
{
    /// <summary>
    /// Interaction logic for MainToolWindowUI.xaml
    /// </summary>
    public partial class MainToolWindowUI : UserControl
    {
        public class SuppresssionRequestedEventArgs : EventArgs
        {
            public SuppresssionRequestedEventArgs(Problem p, ICodeAnalyzer.SuppressionScope scope) { Problem = p; Scope = scope; }
            public Problem Problem { get; set; }
            public ICodeAnalyzer.SuppressionScope Scope { get; set; }
        }

        public class OpenProblemInEditorEventArgs : EventArgs
        {
            public OpenProblemInEditorEventArgs(Problem p) { Problem = p; }
            public Problem Problem { get; set; }
        }

        public delegate void suppresssionRequestedHandler(object sender, SuppresssionRequestedEventArgs e);
        public delegate void openProblemInEditor(object sender, OpenProblemInEditorEventArgs e);

        public event suppresssionRequestedHandler SuppressionRequested;
        public event openProblemInEditor EditorRequestedForProblem;

        private static int iconSize = 20;

        private GridViewColumnHeader listViewSortCol = null;

        private Dictionary<String, int> _columns_order = new Dictionary<String, int>();

        public Dictionary<String, List<int>> FilesLines = new Dictionary<String, List<int>>();

        public MainToolWindowUI()
        {
            InitializeComponent();
        }



        private void Hyperlink_OnRequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            var url = e.Uri.ToString();
            OpenUrl(url);
            e.Handled = true;
        }

        private void menuItem_suppressThisMessageProjectWide(object sender, RoutedEventArgs e)
        {
            menuItem_SuppressSelected(ICodeAnalyzer.SuppressionScope.suppressThisMessage);
        }

        private string getSupressionMessage(ProblemsListItem problem)
        {
            if (problem.MessageType.Contains("Metric"))
            {
                return $"// Argus Waiver Metric{problem.MessageType}:please justify here.\r\n";
            }
            return $"// Argus Waiver {problem.MessageType}:please justify here.\r\n";
        }

        private int calculateNeededLine(ProblemsListItem problem)
        {
            int counter = 0;
            if(FilesLines[problem.FilePath] ==null)
            {
                return problem.Line - 1;
            }
            FilesLines[problem.FilePath].Sort();
            for (int i=0;i< FilesLines[problem.FilePath].Count;i++)
            {
                if(FilesLines[problem.FilePath][i] <= problem.Line - 1)
                {
                    counter += 1;
                }
            }
            return problem.Line - 1 + counter;
        }

        private void menuItem_SuppressSelected(ICodeAnalyzer.SuppressionScope scope)
        {
            var selectedItems = listView.SelectedItems;
            foreach (ProblemsListItem problem in selectedItems)
            {
                if (problem != null)
                {

                    var view = Vsix.GetVsTextViewFrompPath(problem.Problem.FilePath);
                    if(null == view)
                    {
                        return;
                    }
                    var view2 = Vsix.VsToWpfTextView(view);


                    var text = view2.TextBuffer.CurrentSnapshot.GetText();
                    int index = 0;
                    string line;
                    var splittedLines = new List<string>();
                    using (StringReader sr = new StringReader(text))
                    {
                        while ((line = sr.ReadLine()) != null)
                        {
                            splittedLines.Add(line);
                        }
                    }
                    var needed_line = calculateNeededLine(problem);
                    if(problem.Line - 1 >= splittedLines.Count)
                    {
                        continue;
                    }
                    for(int i=0;i< needed_line; i++)
                    {
                        index += "\r\n".Length + splittedLines[i].Length;
                    }
                    List<int> prevLines ;
                    FilesLines.TryGetValue(problem.FilePath, out prevLines);
                    if(null == prevLines)
                    {
                        prevLines = new List<int>();
                    }
                    prevLines.Add(problem.Line - 1);
                    FilesLines[problem.FilePath] = prevLines;
                    var edit = view2.TextBuffer.CreateEdit();
                    var span = new Microsoft.VisualStudio.Text.Span(0,text.Length);
                    var newText = text.Substring(0, index) + getSupressionMessage(problem) + text.Substring(index);
                    edit.Replace(span, newText);
                    edit.Apply();
                }
            }
        }

        private void OpenUrl(string url)
        {
            try
            {
                url = url.Replace(" ", "%20");
                url = url.Replace("%23", "#");
                Process.Start("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe", url);
            }
            catch(Exception e)
            {
            }
        }

        private void onProblemDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var objectClicked = FindVisualParent<ListViewItem, ListView>(e.OriginalSource as DependencyObject);
            if (objectClicked == null)
                return;

            ProblemsListItem item = listView.ItemContainerGenerator.ItemFromContainer(objectClicked) as ProblemsListItem;
            if (item != null)
            {
                EditorRequestedForProblem(this, new OpenProblemInEditorEventArgs(item.Problem));
            }
        }

        public static TParent FindVisualParent<TParent, TLimit>(DependencyObject obj) where TParent : DependencyObject
        {
            while (obj != null && !(obj is TParent))
            {
                if (obj is TLimit)
                    return null;
                obj = VisualTreeHelper.GetParent(obj);
            }
            return obj as TParent;
        }

        private ListSortDirection sortByColumn(String column)
        {
            int counter = 0;
            _columns_order.TryGetValue(column, out counter);
            var new_dir = ListSortDirection.Ascending;
            if (counter == 0)
            {
                new_dir = ListSortDirection.Ascending;
            }
            else if (counter == 1)
            {
                new_dir = ListSortDirection.Descending;
            }
            if (0 == counter || 1 == counter)
            {
                int found_index = -1;
                for (int i = 0; i < listView.Items.SortDescriptions.Count; i++)
                {
                    if (listView.Items.SortDescriptions[i].PropertyName == column)
                    {
                        found_index = i;
                        break;
                    }
                }
                if (found_index == -1)
                {
                    listView.Items.SortDescriptions.Add(new SortDescription(column, new_dir));
                }
                else
                {
                    listView.Items.SortDescriptions[found_index] = new SortDescription(column, new_dir);

                }
            }
            else
            {
                listView.Items.SortDescriptions.Clear();
                listView.Items.SortDescriptions.Add(new SortDescription(column, new_dir));
            }
            _columns_order[column] = (counter + 1) % 3;
            return new_dir;
        }

        private void problemColumnHeader_Click(object sender, RoutedEventArgs e)
        {
            GridViewColumnHeader column = (sender as GridViewColumnHeader);
            string sortBy = column.Tag.ToString();

            var newDir = sortByColumn(sortBy);
            listViewSortCol = column;
        }

        public void ResetSorting()
        {
            CPPCheckPluginPackage.Instance.JoinableTaskFactory.Run(async () =>
            {

                await CPPCheckPluginPackage.Instance.JoinableTaskFactory.SwitchToMainThreadAsync();

                listView.Items.SortDescriptions.Clear();
                _columns_order.Clear();
                sortByColumn("Severity");
                sortByColumn("Message");
                sortByColumn("FileName");
            });
        }

        public class ProblemsListItem
        {
            public ProblemsListItem(Problem problem)
            {
                _problem = problem;
                Debug.Assert(problem != null);
            }

            public String Message
            {
                get { return _problem.Message; }
            }

            public String FileName
            {
                get { return _problem.FileName; }
            }

            public String FilePath
            {
                get { return _problem.FilePath; }
            }

            public int Line
            {
                get { return _problem.Line; }
            }

            public int Col
            {
                get { return _problem.Col; }
            }

            public String Severity
            {
                get { return _problem.Severity; }
            }

            public String AutosarWeb
            {
                get { return _problem.AutosarAddress; }
            }

            public String AxivionWeb
            {
                get { return _problem.AxivionAddress; }
            }

            public String MessageType
            {
                get { return _problem.MessageType; }
            }

            public ImageSource Icon
            {
                get
                {
                    Icon fromIcon = null;

                    fromIcon = SystemIcons.Warning;

                    int destWidth = iconSize;
                    int destHeight = iconSize;
                    using (Bitmap bitmap = new Bitmap(destWidth, destHeight))
                    {
                        using (Graphics graphicsSurface = Graphics.FromImage(bitmap))
                        {
                            graphicsSurface.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
                            using (var iconBitmap = fromIcon.ToBitmap())
                            {
                                graphicsSurface.DrawImage(iconBitmap, 0, 0, destWidth, destHeight);
                            }
                        }
                        // This obtains an unmanaged resource that must be released explicitly
                        IntPtr hBitmap = bitmap.GetHbitmap();
                        try
                        {
                            var sizeOptions = BitmapSizeOptions.FromWidthAndHeight(bitmap.Width, bitmap.Height);
                            ImageSource imgSource = System.Windows.Interop.Imaging.CreateBitmapSourceFromHBitmap(hBitmap, IntPtr.Zero, System.Windows.Int32Rect.Empty, sizeOptions);
                            return imgSource;
                        }
                        finally
                        {
                            DeleteObjectInvoker.DeleteObject(hBitmap);
                        }
                    }
                }
            }

            public Problem Problem
            {
                get { return _problem; }
            }

            Problem _problem;
        }
        private void ListView_SelectionChanged()
        {
        }
        private void ListView_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {
        }
        private void ListView_SelectionChanged_2(object sender, SelectionChangedEventArgs e)
        {
        }
    }

    public class DeleteObjectInvoker
    {
        [System.Runtime.InteropServices.DllImport("gdi32.dll")]
        public static extern bool DeleteObject(IntPtr hObject);
    }

    public class SortAdorner : Adorner
    {
        private static Geometry ascGeometry = Geometry.Parse("M 0 4 L 3.5 0 L 7 4 Z");
        private static Geometry descGeometry = Geometry.Parse("M 0 0 L 3.5 4 L 7 0 Z");

        public ListSortDirection Direction { get; private set; }

        public SortAdorner(UIElement element, ListSortDirection dir)
            : base(element)
        {
            this.Direction = dir;
        }

        protected override void OnRender(DrawingContext drawingContext)
        {
            base.OnRender(drawingContext);

            if (AdornedElement.RenderSize.Width < 20)
            {
                return;
            }

            TranslateTransform transform = new TranslateTransform(AdornedElement.RenderSize.Width - 15, (AdornedElement.RenderSize.Height - 5) / 2);
            drawingContext.PushTransform(transform);

            Geometry geometry = ascGeometry;
            if (this.Direction == ListSortDirection.Descending)
            {
                geometry = descGeometry;
            }
            drawingContext.DrawGeometry(System.Windows.Media.Brushes.Black, null, geometry);

            drawingContext.Pop();
        }
    }
}
