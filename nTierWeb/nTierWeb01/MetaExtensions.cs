using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace nTierWeb01
{
    public static class MetaExtensions
    {
        public static void Set(this object obj, params Func<string, object>[] hash)
        {
            foreach (Func<string, object> member in hash)
            {
                var propertyName = member.Method.GetParameters()[0].Name;
                var propertyValue = member(string.Empty);
                obj.GetType()
                    .GetProperty(propertyName)
                        .SetValue(obj, propertyValue, null);
            };
        }
    }
}