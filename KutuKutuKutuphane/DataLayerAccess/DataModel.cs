using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
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
    }
}
