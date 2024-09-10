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

            //01.GET USER INPUT FOR NAMES
            Console.WriteLine("Enter the name for first person: ");

            string name1 = Console.ReadLine().ToUpper();

            Console.WriteLine("Enter the name for the second person: ");

            string name2 = Console.ReadLine().ToUpper();


            //02. COUNT OCCURRENCES OF EACH LETTER IN TWO NAMES
            int[] count1 = LetterCounts(name1);

            int[] count2 = LetterCounts(name2);


            //03. JOIN TWO ARRAYS WITH NAMES IN ONE
            int[] combinedCount = new int[count1.Length + count2.Length];

            Array.Copy(count1, 0, combinedCount, 0, count1.Length);

            Array.Copy(count2, 0, combinedCount, count1.Length, count2.Length);


            //04. REDUCE NUMBER TO TWO DIGITS
            while (combinedCount.Length > 2)
            {

                int[] nextCount = new int[combinedCount.Length - 1];

                for (int i = 0; i < combinedCount.Length - 1; i++)
                {

                    nextCount[i] = ((combinedCount[i] + combinedCount[i + 1]) % 10);                
                
                }

                combinedCount = nextCount;

            }

            //05. CALCULATE LOVE PERCENTAGE
            int lovePercentage = combinedCount[0] * 10 + combinedCount[1];

            Console.WriteLine($"{name1} and {name2} have a {lovePercentage}% chance of love!");


        }



        static int[] LetterCounts(string name)
        {

            int[] counts = new int[name.Length];

            for (int i = 0; i < name.Length; i++)
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
