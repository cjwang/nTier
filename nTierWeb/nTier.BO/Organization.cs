using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nTier.BO
{
    public class Organization
    {
        public string ClusterID { get; set; }
        public string ClusterName { get; set; }
        public string ShortName { get; set; }
        public string Abbreviation { get; set; }
        public string Status { get; set; }
        public string DHSAlternativeClusterName { get; set; }
        public short? DHSDisplayOrder { get; set; }
    }
}
