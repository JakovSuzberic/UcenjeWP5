using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class LoveCalculator
    {

        public static void Izvedi()
        {

            Console.WriteLine("Enter the name for first person: ");

            string name1 = Console.ReadLine().ToUpper();

            Console.WriteLine("Enter the name for the second person: ");

            string name2 = Console.ReadLine().ToUpper();

            int CalculateLoveNumber = CalculateLoveNumber(name1, name2);










        }


        static int CalculateLoveNumber(string name1, string string2)
        {




            return 0;

        }


        static int[] LetterCounts(string name)
        {

            int[] counts = new int[name.Length];

            for(int i = 0; i < name.Length; i++)
            {

                counts[i] = NumberOfOccurrences(name, name[i]); 


            }

            return counts;

        }



        static int NumberOfOccurrences(string name, char letter)
        {

            int count = 0;

            foreach (char c in name)
            {

                if (c == letter)
                {

                   count++;

                }

            }

            return count;

        }


    }
}
