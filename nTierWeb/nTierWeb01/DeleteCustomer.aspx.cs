using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO = nTier.BO;
using nTier.Services;
using System.Configuration;

namespace nTierWeb01
{
    public partial class DeleteCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDeleteCustomer_Click(object sender, EventArgs e)
        {
            //CJW:  Delete a customer
            //      1. Instantiate a BO and assign the PRIMARY KEY value to be deleted
            //      2. Pass the BO to the Service tier that does the operation
            BO.Customer boCutomerToDelete = new nTier.BO.Customer();
            boCutomerToDelete.customerID = txtCustomerID.Text.Trim();
            string ConnString = ConfigurationManager.ConnectionStrings["NWConnectionString"].ToString();
            bool actionStatus = CustomerSV.DeleteCuctomer(ConnString, boCutomerToDelete);

            if (actionStatus)
            {
                Server.Transfer("Default.aspx");
            }
            else
            {

            }
        }
    }
}