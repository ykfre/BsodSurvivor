using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using EnvDTE;

using Microsoft.VisualStudio;
using Microsoft.VisualStudio.Shell.Interop;
using Microsoft.VisualStudio.Shell;
namespace VSIXProject1
{
    public class RunningDocTableEvents : IVsRunningDocTableEvents3
    {
        #region Members

        private RunningDocumentTable mRunningDocumentTable;
        private DTE mDte;

        public delegate void OnBeforeSaveHandler(Document document);
        public event OnBeforeSaveHandler BeforeSave;

        #endregion

        #region Constructor

        public RunningDocTableEvents(Package aPackage)
        {
            mDte = (DTE)Package.GetGlobalService(typeof(DTE));
            mRunningDocumentTable = new RunningDocumentTable(aPackage);
            mRunningDocumentTable.Advise(this);
        }

        #endregion

        #region IVsRunningDocTableEvents3 implementation

        public int OnAfterAttributeChange(uint docCookie, uint grfAttribs)
        {
            return VSConstants.S_OK;
        }

        public int OnAfterAttributeChangeEx(uint docCookie, uint grfAttribs, IVsHierarchy pHierOld, uint itemidOld, string pszMkDocumentOld, IVsHierarchy pHierNew, uint itemidNew, string pszMkDocumentNew)
        {
            return VSConstants.S_OK;
        }

        public int OnAfterDocumentWindowHide(uint docCookie, IVsWindowFrame pFrame)
        {
            return VSConstants.S_OK;
        }

        public int OnAfterFirstDocumentLock(uint docCookie, uint dwRDTLockType, uint dwReadLocksRemaining, uint dwEditLocksRemaining)
        {
            return VSConstants.S_OK;
        }

        public int OnAfterSave(uint docCookie)
        {
            return VSConstants.S_OK;
        }

        public int OnBeforeDocumentWindowShow(uint docCookie, int fFirstShow, IVsWindowFrame pFrame)
        {
            return VSConstants.S_OK;
        }

        public int OnBeforeLastDocumentUnlock(uint docCookie, uint dwRDTLockType, uint dwReadLocksRemaining, uint dwEditLocksRemaining)
        {
            return VSConstants.S_OK;
        }

        public int OnBeforeSave(uint docCookie)
        {
            if (null == BeforeSave)
                return VSConstants.S_OK;

            var document = FindDocumentByCookie(docCookie);
            if (null == document)
                return VSConstants.S_OK;

            BeforeSave(document);
            return VSConstants.S_OK;
        }

        #endregion

        #region Private Methods

        private Document FindDocumentByCookie(uint docCookie)
        {
            var documentInfo = mRunningDocumentTable.GetDocumentInfo(docCookie);
            return mDte.Documents.Cast<Document>().FirstOrDefault(doc => doc.FullName == documentInfo.Moniker);
        }

        #endregion
    }
}
