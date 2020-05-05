using StringValidator.Interface;
using System;
using System.Collections.Generic;

namespace StringValidator
{
    public class StringValidator: IStringValidator
    {
        public StringValidator() { }

        public List<string> ValidateString(List<string> stringList)
        {
            var validatedString = new List<string>();
            var result = string.Empty;
            var result2 = string.Empty;

            foreach (string var in stringList)
            {
                result = var.Replace("$", "£");
                result = result.Replace("_", "");
                result = result.Replace("4", "");
                result2 = result;
                result = removeDuplicates(result2.ToCharArray());
                if (string.IsNullOrEmpty(result))
                    result = "EMPTY STRING";
                else if (result.Length >= 15)
                {
                    result = result.Substring(0, 15);
                }
                validatedString.Add(result);
            }
            return validatedString;
        }

        private string removeDuplicates(char[] S)
        {
            int n = S.Length;
            if (n < 2)
                return string.Empty;           

            int j = 0;
            for (int i = 1; i < n; i++)
            {
                if (S[j] != S[i])
                {
                    j++;
                    S[j] = S[i];
                }
            }
            var A = new char[j + 1];
            Array.Copy(S, 0, A, 0, j + 1);
            var str = new string(A);
            return str;
        }
    }
}
