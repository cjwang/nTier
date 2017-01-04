using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace nTier.Constants
{
    //CJW:  In addition to string, you can also use byte 
    //      or other data type, depending on your need
    public class MedicationStatus
    {
        public const byte Pending = 1;
        public const byte Stop = 2;
        public const byte Continue = 3;
        public const byte Duplicated = 4;
    }
}
