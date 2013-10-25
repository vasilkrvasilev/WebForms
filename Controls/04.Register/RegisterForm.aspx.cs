using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _04.Register
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            var result = "<div><h1>" + this.firstNameBox.Text + " " + this.secondNameBox.Text +
                "</h1></div><div><b>Faculty number: " + this.numberBox.Text +
                "</b></div><div><p>University: " + this.universityList.SelectedItem.Text +
                "</p><p>Courses: ";
            foreach (ListItem item in this.coursesList.Items)
            {
                if (item.Selected)
                {
                    result += (item.Text + " ");
                }
            }

            result += "</p></div>";
            this.result.Text = result;
        }
    }
}