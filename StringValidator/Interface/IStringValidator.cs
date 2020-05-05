using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StringValidator.Interface
{
    public interface IStringValidator
    {
        List<string> ValidateString(List<string> stringList);
    }
}
