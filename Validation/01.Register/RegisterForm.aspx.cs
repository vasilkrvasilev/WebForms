using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.Register
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            //this.errorPanel.Visible = true;
            var acceptValue = this.acceptList.SelectedValue;
            if (acceptValue != "Yes")
            {
                this.acceptListLabel.Text += "<br />You should accept our terms!";
            }
        }
    }
}