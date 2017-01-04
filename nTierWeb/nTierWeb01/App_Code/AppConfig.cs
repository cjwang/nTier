using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for AppConfig
/// </summary>

namespace nTierWeb01.AppConfig
{


    public class AppConfig
    {
        public AppConfig()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        //CJW:  So that you will have intelli-sense when getting data from the Web.config file
        public static string ConnectString()
        {
            return ConfigurationManager.ConnectionStrings["NWConnectionString"].ToString();
        }
    }
}