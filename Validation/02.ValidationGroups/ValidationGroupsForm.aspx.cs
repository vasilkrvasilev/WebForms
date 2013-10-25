using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.ValidationGroups
{
    public partial class ValidationGroupsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendLogonInfo_Click(object sender, EventArgs e)
        {
            this.Page.Validate("logon");
        }

        protected void sendPersonalInfo_Click(object sender, EventArgs e)
        {
            this.Page.Validate("personal");
        }

        protected void sendContactsInfo_Click(object sender, EventArgs e)
        {
            this.Page.Validate("contacts");
            var acceptValue = this.acceptList.SelectedValue;
            if (acceptValue != "Yes")
            {
                this.acceptListLabel.Text += "<br />You should accept our terms!";
            }
        }
    }
}