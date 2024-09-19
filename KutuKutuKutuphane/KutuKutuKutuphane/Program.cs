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

            Console.WriteLine("Kütüphaneye Hoşgeldiniz");

            Console.WriteLine("1-Kitap Listele\n2-Yazar Listele\n3-KitapEkle");
            string secim = Console.ReadLine();
            if (secim == "3")
            {
                bool devam = true;
                while (devam == true) { 
                Console.WriteLine("Lütfen Kitap adı giriniz");
                string ad = Console.ReadLine();
                Console.WriteLine("Lütfen Sayfa sayısı giriniz");
                int sayfa = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Kiradami?e/h");
                string cevap = Console.ReadLine();
                bool isrent;
                if (cevap == "e")
                {
                    isrent = true;
                }
                else
                {
                    isrent = false;
                }
                Books book1 = new Books();
                book1.Name = ad;
                book1.Page = sayfa;
                book1.IsRent = isrent;
                model.AddBook(book1);
                Console.WriteLine("Kitap eklemeye devam edilsin mi?e/h");
                cevap = Console.ReadLine();
                    if (cevap == "e") 
                    {
                        devam = true;
                    }
                    else
                    {
                        devam = false;
                    }
                }
            }
            if (secim == "1")
            {
                for (int i = 0; i < books.Count; i++)
                {
                    Books b = books[i];

                    Console.WriteLine($"KİTAP ID:{b.ID}\n-------------\nKitapAdı: {b.Name}\nSayfa Sayisi: {b.Page}\nKirada mı? {b.IsRent} ");
                    Console.WriteLine("");
                }
            }
            if (secim == "2")
            {
                for (int i = 0; i < authors.Count; i++)
                {
                    Authors a = authors[i];

                    Console.WriteLine($"{a.ID}) {a.firstName} {a.lastName}");
                }
            }
        }
    }
}
