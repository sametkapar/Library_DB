using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
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
                book.Page = reader.GetInt32(2);
                book.IsRent = reader.GetBoolean(3);
                books.Add(book);
            }
            return books;
        }
        public List<Authors> ShowAuthors()
        {
            List<Authors> authors = new List<Authors>();
            cmd.CommandText = "SELECT ID,Isim,Soyisim FROM Yazarlar";
            cmd.Parameters.Clear();
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Authors auth = new Authors();
                auth.ID = reader.GetInt32(0);
                auth.firstName = reader.GetString(1);
                auth.lastName = reader.GetString(2);

            }
            return authors;
        }


    }
}
