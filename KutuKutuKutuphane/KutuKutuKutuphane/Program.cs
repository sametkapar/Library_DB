using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLayerAccess;

namespace KutuKutuKutuphane
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

                Console.WriteLine($"{b.ID}:\nKitapAdı: {b.Name}\nSayfa Sayisi: {b.Page}\nKirada mı? {b.IsRent} ");
            }

            for (int i = 0; i < authors.Count; i++)
            {
                Authors a = authors[i];

                Console.WriteLine($"{a.ID}) {a.firstName} {a.lastName}");
            }
        }
    }
}
