using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity = nTier.Entity;
using BO = nTier.BO;
using nTier.Services;
using System.Configuration;

namespace nTierWeb01
{
    public partial class AddCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            //CJW:  Add a new customer
            //      1. Instantiate a BO and assign the value
            //      2. Pass the BO to the Service tier that does the operation

            BO.Customer boNewCustomer = new BO.Customer()
            {
                customerID = txtCustomerID.Text.ToString(),
                companyName = txtComanyName.Text.ToString(),
                contactName = txtContactName.Text.ToString(),
                contactTitle = txtContactTitle.Text.ToString(),
                city = txtCity.Text.ToString()

            };

            //CJW:  You can use the regular C# syntax as the above
            //      to asign value at the time the object is instantiated.
            //      Or, using an extension method that simulates 
            //      the behavior of VB’s “With..End” statement
            //      to reduce the repeativeness. 
            //      The following way does not need to set the values  
            //      at the time of the object creation.
            //boNewCustomer.Set(
            //    customerID => txtCustomerID.Text.ToString(),
            //    companyName => txtComanyName.Text.ToString(),
            //    contactName => txtContactName.Text.ToString(),
            //    contactTitle => txtContactTitle.Text.ToString(),
            //    city => txtCity.Text.ToString()
            //);

            string ConnString = ConfigurationManager.ConnectionStrings["NWConnectionString"].ToString();
            boNewCustomer = CustomerSV.AddCustomer(ConnString, boNewCustomer);
            if (boNewCustomer != null)
            {
                //if action is successful, load the grid again
                //btnCompanyNameStartWithA(sender, e);

            }
            else
            {

            }
            Server.Transfer("Default.aspx");
        }
    }
}