using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.Chat
{
    public partial class ChatForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new ChatRoomEntities();
            var messages = context.Messages.OrderByDescending(x => x.Date).Take(100).ToList();
            this.messageList.DataSource = messages;
            this.messageList.DataBind();
        }

        protected void create_Click(object sender, EventArgs e)
        {
            var context = new ChatRoomEntities();
            var text = this.messageBox.Text;
            var message = new Messages() { Text = text, Date = DateTime.Now };
            context.Messages.Add(message);
            context.SaveChanges();
        }
    }
}