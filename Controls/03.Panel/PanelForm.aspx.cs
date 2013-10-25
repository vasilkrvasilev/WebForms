using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03.Panel
{
    public partial class PanelForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void send_Click(object sender, EventArgs e)
        {
            var text = Server.HtmlEncode(this.enterText.Text);
            var box = new TextBox();
            box.Text = this.enterText.Text;
            var label = new Label();
            label.Text = text;
            this.panel.Controls.Add(box);
            this.panel.Controls.Add(label);
        }
    }
}