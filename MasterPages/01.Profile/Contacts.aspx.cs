using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.Profile
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        List<string> messages = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            var text = this.message.Text;
            messages.Add(text);
            this.message.Text = string.Empty;
        }
    }
}