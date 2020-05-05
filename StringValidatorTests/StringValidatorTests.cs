using Microsoft.VisualStudio.TestTools.UnitTesting;
using Ninject;
using Production;
using StringValidator.Interface;
using System.Collections.Generic;

namespace StringValidator.Tests
{
    [TestClass()]
    public class StringValidatorTests
    {
        IStringValidator _validator;
        IKernel _kernel;

        [TestInitialize]
        public void TestInitialize()
        {
            _kernel = new StandardKernel(new ValidationNinjectModule());
            _validator = _kernel.Get<IStringValidator>();
        }

        [TestMethod()]
        public void ValidateStringTest()
        {
            var expected = new List<string>();
            expected.Add("Ac91%cWwWkLq£1c");

            var validatestring = new List<string>();
            validatestring.Add("AAAc91%cWwWkLq$1ci3_848v3d__K");

            var validatedString = _validator.ValidateString(validatestring);

            CollectionAssert.AreEqual(expected, validatedString);
        }

        [TestMethod()]
        public void ValidateEmptyStringTest()
        {
            var expected = new List<string>();
            expected.Add("EMPTY STRING");

            var validatestring = new List<string>();
            validatestring.Add("4_____44");

            var validatedString = _validator.ValidateString(validatestring);

            CollectionAssert.AreEqual(expected, validatedString);
        }
    }
}