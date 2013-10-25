using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.Profile
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void one_Click(object sender, ImageClickEventArgs e)
        {
            this.second.Visible = false;
            this.first.Visible = true;
        }

        protected void two_Click(object sender, ImageClickEventArgs e)
        {
            this.first.Visible = false;
            this.second.Visible = true;
        }
    }
}