using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO = nTier.BO;            //CJW:  BO is the shortcut of nTier.BO
using Entity = nTier.Entity;    //CJW:  Set shortcut for nTier.Entity
using dOOdads = MyGeneration.dOOdads;   

namespace nTier.Services
{
    public class CustomerSV
    {
        public static List<BO.Customer> GetAllCustomers(string ConnString)
        {
            //CJW:  This is where the program crunching data
            //      Prepare to populate data from DAL (nTier.Entity) to DTO (nTier.BO)
            //      This is to transfer data from one tier to another tier
            //      Additional business rules are added here too
            Entity.Customers cus = new Entity.Customers();
            List<BO.Customer> boCustomers = new List<BO.Customer>();

            
            cus.ConnectionString = ConnString;
            //CJW:  Load the emtire customers table
            //      Do the following IF data return back
            if (cus.LoadAll())
            {
                //CJW:  Populate data fom DAL (nTier.Entity.Customers) 
                //      to DTO (nTier.BO.Customer)
                //      Loop thru the entire table and save as a collection 
                do
                {
                    boCustomers.Add(new BO.Customer
                    {
                        customerID = cus.CustomerID,
                        companyName = cus.CompanyName,
                        contactName = cus.ContactName,
                        contactTitle = cus.ContactTitle,
                        //CJW:  if you don't fill in the data, 
                        //      you can see the coresponding column on the 
                        //      data grid is empty. 
                        //      For example, "Address" is not populated in this case
                        //address = cus.Address,
                        city = cus.City,
                        postalCode = cus.PostalCode,
                        country = cus.Country,
                        phone = cus.Phone,
                        fax = cus.Fax
                        
                    });
                } while (cus.MoveNext());
                return boCustomers;
            }
            else
            {
                return null;
            }
        }

        public static bool DeleteCuctomer(string connString, BO.Customer boCutomerToDelete)
        {
            Entity.Customers ettCustomerToDelete = new Entity.Customers();
            ettCustomerToDelete.ConnectionString = connString;

            if (ettCustomerToDelete.LoadByPrimaryKey(boCutomerToDelete.customerID))
            {
                ettCustomerToDelete.MarkAsDeleted();
                ettCustomerToDelete.Save();
                return true;
            }
            else
            {
                return false;
            };

        }

        public static List<BO.Customer> GetCustomersWithCompanyNameStartWith(
                            string ConnString
                           ,string StartWithChar)
        {
            //CJW:  Same as the GetAllCustomers method, 
            //      Populate data from Entity to BO
            //      So that data is ready to be carried over to the UI tier
            Entity.Customers cus = new Entity.Customers();
            List<BO.Customer> boCustomers = new List<BO.Customer>();
            cus.ConnectionString = ConnString;
            
            //CJW:  Instead of load all data, this time we show only the records
            //      with Company Name starts with "a"
            //      i.e., filter by CompanyName Like 'A%'
            //CJW:  The following is the dOOdads syntax to do so/
            //      Please refer to the user guide
            cus.Where.CompanyName.Value = "A%";
            cus.Where.CompanyName.Operator = dOOdads.WhereParameter.Operand.Like;

            //CJW:  Let's add more business rule here
            //      Add an Order By to the return dataset
            //      Set the query to order by the city, in decending order
            cus.Query.AddOrderBy(Entity.Customers.ColumnNames.City, dOOdads.WhereParameter.Dir.DESC);

            //CJW:  The query is built, now exec the 
            if (cus.Query.Load())   //CJW:  If any data returned
            {
                //CJW:  Populate data to BO from Entity 
                //      so it can be transferred to the UI tier
                do
                {
                    //CJW:  This is similar to the "With" statement in VB
                    boCustomers.Add(new BO.Customer
                    {
                        customerID = cus.CustomerID,
                        companyName = cus.CompanyName,
                        contactName = cus.ContactName,
                        contactTitle = cus.ContactTitle,
                        address = cus.Address,
                        city = cus.City,
                        postalCode = cus.PostalCode,
                        country = cus.Country,
                        phone = cus.Phone,
                        fax = cus.Fax
                    });
                } while (cus.MoveNext());
                return boCustomers;
            }
            else
            {
                return null;
            }

        }

        public static BO.Customer AddCustomer(string connString, BO.Customer boNewCustomer)
        {
            Entity.Customers ettNewCustomer = new Entity.Customers();
            ettNewCustomer.ConnectionString = connString;

            //CJW:  This is the dOOdads syntax to add a record
            ettNewCustomer.AddNew();

            ettNewCustomer.CustomerID = boNewCustomer.customerID;
            ettNewCustomer.Address = "5555 abc street";
            ettNewCustomer.CompanyName = boNewCustomer.companyName;
            ettNewCustomer.ContactName = boNewCustomer.contactName;
            ettNewCustomer.ContactTitle = boNewCustomer.contactTitle;
            ettNewCustomer.Phone = "818-555-1234";

            ettNewCustomer.Save();

            return boNewCustomer;
        }
    }
}