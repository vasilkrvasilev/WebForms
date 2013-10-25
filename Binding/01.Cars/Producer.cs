using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _01.Cars
{
    public class Producer
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public ICollection<Model> Models { get; set; }
    }
}