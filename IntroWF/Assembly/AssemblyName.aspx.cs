using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assembly
{
    public partial class AssemblyName : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = System.Reflection.Assembly.GetExecutingAssembly().Location;
            this.result.Text = name;
        }
    }
}