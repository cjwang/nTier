using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyGeneration.dOOdads;

/// <summary>
/// Summary description for WebBasePage
/// </summary>
public class WebBasePage : System.Web.UI.Page
{
    //CJW:  A web base page is created. 
    //      It is IMPORTANT that ALL PAGES SHALL inherrit from this page.
    public WebBasePage()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    //CJW:  Transactions are stored in the Thread Local Storage (TLS)
    //      This is to clears the state out of the TLS
    //      so that the transaction is reset.
    private void Page_Init(System.Object sender, System.EventArgs e)
    {
        TransactionMgr.ThreadTransactionMgrReset();
    }
}
