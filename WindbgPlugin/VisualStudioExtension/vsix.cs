using System;
using System.Windows;
using System.Windows.Threading;
using System.Collections.Generic;
using System.Text;

using System.ComponentModel;
using System.Drawing;
using System.Windows.Controls;
using System.Runtime.InteropServices;
using System.IO;
using System.Diagnostics;
using System.Windows.Input;
using Microsoft.VisualStudio;
using Microsoft.VisualStudio.Shell;
using Microsoft.VisualStudio.Shell.Interop;
using Microsoft.VisualStudio.Threading;

namespace VSPackage.CPPCheckPlugin
{
    using EnvDTE;
    using Microsoft.VisualStudio.Editor;
    using Microsoft.VisualStudio.Shell;
    using Microsoft.VisualStudio.Shell.Interop;
    using Microsoft.VisualStudio.Text;
    using Microsoft.VisualStudio.Text.Editor;
    using Microsoft.VisualStudio.TextManager.Interop;
    using System;
    using System.IO;

    public class Vsix
    {
        /// <summary>
        /// Returns the currently active view if it is a IWpfTextView.
        /// </summary>
        public static IWpfTextView GetCurrentView()
        {
            // The SVsTextManager is a service through which we can get the active view.
            var textManager = (IVsTextManager)Package.GetGlobalService(typeof(SVsTextManager));
            IVsTextView textView;
            textManager.GetActiveView(1, null, out textView);

            // Now we have the active view as IVsTextView, but the text interfaces we need
            // are in the IWpfTextView.
            return VsToWpfTextView(textView);
        }


        public static IWpfTextView GetDocumentView(Document document)
        {
            var textView = GetVsTextViewFrompPath(document.FullName);
            return VsToWpfTextView(textView);
        }

        static private Microsoft.VisualStudio.Editor.IVsEditorAdaptersFactoryService GetEditorAdaptersFactoryService()
        {
            Microsoft.VisualStudio.ComponentModelHost.IComponentModel componentModel =
                (Microsoft.VisualStudio.ComponentModelHost.IComponentModel)Package.GetGlobalService(
                    typeof(Microsoft.VisualStudio.ComponentModelHost.SComponentModel));
            return componentModel.GetService<Microsoft.VisualStudio.Editor.IVsEditorAdaptersFactoryService>();
        }

        public static IWpfTextView VsToWpfTextView(IVsTextView textView)
        {
            return GetEditorAdaptersFactoryService().GetWpfTextView(textView);
        }

        public static IVsTextView GetVsTextViewFrompPath(string filePath)
        {
            IVsTextView view = null;

            var dte2 = (EnvDTE80.DTE2)Package.GetGlobalService(typeof(SDTE));
            var sp = (Microsoft.VisualStudio.OLE.Interop.IServiceProvider)dte2;
            var serviceProvider = new Microsoft.VisualStudio.Shell.ServiceProvider(sp);

            IVsUIHierarchy uiHierarchy;
            uint itemID;
            IVsWindowFrame windowFrame;
            if (VsShellUtilities.IsDocumentOpen(serviceProvider, filePath, Guid.Empty,
                out uiHierarchy, out itemID, out windowFrame))
            {
                // Get the IVsTextView from the windowFrame.
                return VsShellUtilities.GetTextView(windowFrame);
            }
            return null;
        }


    }

}
