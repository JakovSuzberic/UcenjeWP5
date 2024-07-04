using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UcenjeCS
{
    internal class Zadatak0307
    {

        public static void izvedi()
        {

            Console.WriteLine("Enter number of rows: ");

            int numberOfRow = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Enter number of colums: ");

            int numberOfColums = Convert.ToInt32(Console.ReadLine());

            int product = numberOfColums * numberOfRow;

            int increment = 1;

            int[,] array = new int[numberOfRow, numberOfColums];

            array[numberOfRow - 1, numberOfColums - 1] = increment++;

            for (int i = numberOfRow - 1; i <= 0; i--)
            {

                for (int j = numberOfColums - 1; j <= 0; j--)
                {

                    if (increment == product) break;
                    if (i == numberOfRow - 1 && j >= 0) array[i,j] = increment++;
                    if (j == 0 && i >= 0) array[i, j] = increment++;
                    //if (i == 0 && j  >= 0) array[i, j] = increment++;
                    




                }



            }



            // array[numberOfRow - 1, numberOfColums - 1] = increment;

            // while (increment != (numberOfRow * numberOfColums))
            {


            }


















        }


    }
}
