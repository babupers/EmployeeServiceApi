using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace EmployeeServiceApi.Controllers
{
    public class EmployeeController : ApiController
    {
        static List<string> values = new List<string>() { "value1", "value2" };
        public static List<string> Values
        {
            get
            {
                return values;
            }
            set
            { values = value; }
        }
        // GET api/values
        public IEnumerable<string> Get()
        {
            return values;
        }

        // GET api/values/5
        public string Get(int id)
        {
            return values[id];
        }

        // POST api/values
        public void Post([FromBody]string value)
        {
            values.Add(value);
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
            if (values.Count() > id)
            {
                values[id] = value;
            }

        }

        // DELETE api/values/5
        public void Delete(int id)
        {
            values.RemoveAt(id);
        }
    }
}
