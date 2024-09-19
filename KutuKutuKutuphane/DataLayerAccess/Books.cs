using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayerAccess
{
    public class Books
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public int PublisherID { get; set; }
        public int Page { get; set; }
        public bool IsRent { get; set; }
    }
}
