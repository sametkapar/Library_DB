using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace DataLayerAccess
{
    public class DataModel
    {
        SqlConnection con;
        SqlCommand cmd;
        public DataModel()
        {
            con = new SqlConnection(ConnectionStrings.bus);
            cmd = con.CreateCommand();
        }
        public List<Books> ShowBooks()
        {
            List<Books> books = new List<Books>();
            cmd.CommandText = "SELECT ID,Kitap,Sayfa,KiradaMi FROM Kitaplar";
            cmd.Parameters.Clear();
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Books book = new Books();
                book.ID = reader.GetInt32(0);
                book.Name = reader.GetString(1);
                book.Page = reader.GetInt16(2);
                book.IsRent = reader.GetBoolean(3);
                books.Add(book);
            }
            con.Close();
            return books;
            
        }
        public List<Authors> ShowAuthors()
        {
            List<Authors> authors = new List<Authors>();
            cmd.CommandText = "SELECT ID, Isim, Soyisim FROM Yazarlar";
            cmd.Parameters.Clear();
            con.Open();
            SqlDataReader reader1 = cmd.ExecuteReader();
            while (reader1.Read())
            {
                Authors auth = new Authors();
                auth.ID = reader1.GetInt32(0);
                auth.firstName = reader1.GetString(1);
                auth.lastName = reader1.GetString(2);
                authors.Add(auth);
            }
            con.Close();
            return authors;

        }
        public void AddBook(Books book)
        {
            cmd.CommandText = "INSERT INTO Kitaplar(Kitap,Sayfa,KiradaMi) VALUES (@kitap,@sayfa,@kiradaMi)";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@kitap", book.Name);
            cmd.Parameters.AddWithValue("@sayfa", book.Page);
            cmd.Parameters.AddWithValue("@kiradaMi", book.IsRent);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
