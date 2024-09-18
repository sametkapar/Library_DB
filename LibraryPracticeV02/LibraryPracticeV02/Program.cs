using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;

namespace LibraryPracticeV02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            DataModel model = new DataModel();

            List<Books> books = model.ShowBooks();
            List<Authors> authors = model.ShowAuthors();

            for (int i = 0; i < books.Count; i++)
            {
                Books b = books[i];
                Authors a = authors[i];

                Console.WriteLine($"{b.ID} \n KitapAdı:{b.Name}\n Yazar: {a.firstName} {a.lastName}\nSayfa Sayisi: {b.Page}\nKirada mı? {b.IsRent} ");
            }
        }
    }
}
