using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nTier.Services;
using nTier.Constants;
using Entity = nTier.Entity;
using BO = nTier.BO;
using System.Configuration;

namespace nTierWeb01
{

    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCompanyNameStartWithA();
        }
                protected void btnAllCustomer_Click(object sender, EventArgs e)
        {
            //CJW:  To load the data grid, do the following:
            //CJW:  1. Declare a new instance of the business object collection
            //          Note: The BO is exactly what you will be used on the page
            List<BO.Customer> boCustomers = new List<BO.Customer>();

            //CJW:  2. Get the connection string from web.config file
            string ConnString = ConfigurationManager.ConnectionStrings["NWConnectionString"].ToString();

            //CJW:  3. Use the method in nTier.Services to retrieve data
            //          If the function does not exist, create a new one there
            boCustomers = nTier.Services.CustomerSV.GetAllCustomers(ConnString);
            
            //CJW:  4. If the BO returns data, databind it with the grid
            if (boCustomers.Count > 0)
            {
                grdCustomer.DataSource = boCustomers;
                grdCustomer.DataBind();
            }
            else
            {
            }
        }

        protected void btnCompanyNameStartWithA_Click(object sender, EventArgs e)
        {
            LoadCompanyNameStartWithA();
        }

        private void LoadCompanyNameStartWithA()
        {
            //CJW:  Same as Load All Customers. Total 4 steps to load the data.
            //      1. A new instance of BO
            List<BO.Customer> boCustomersA = new List<BO.Customer>();
            //CJW:  2. Connection String
            string ConnString = ConfigurationManager.ConnectionStrings["NWConnectionString"].ToString();
            //CJW:  3. Call the Method in nTier.Services
            //          Create one if not exists
            string nameStartWith = string.Empty;
            boCustomersA = nTier.Services.CustomerSV.GetCustomersWithCompanyNameStartWith(ConnString, nameStartWith);
            //CJW:  4. Populate the grid
            if (boCustomersA.Count > 0)
            {
                grdCustomer.DataSource = boCustomersA;
                grdCustomer.DataBind();
            }
            else
            {
            }
        }

        protected void btnAddNewCustomer_Click(object sender, EventArgs e)
        {
            //Go to the AddCustomer page
            Server.Transfer("AddCustomer.aspx");
        }

        protected void btnDeleteCustomer_Click(object sender, EventArgs e)
        {
            //Go to the DeleteCustomer page
            Server.Transfer("DeleteCustomer.aspx");
        }
    }
}


































