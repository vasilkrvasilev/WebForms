using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsTemplate.Models;

namespace WebFormsTemplate
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var postId = Convert.ToInt32(Request.Params["id"]);
            var context = new ApplicationDbContext();
            var post = context.Posts.FirstOrDefault(x => x.Id == postId);
            this.postOldBox.Text = post.Content;
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            var postId = Convert.ToInt32(Request.Params["id"]);
            var context = new ApplicationDbContext();
            var post = context.Posts.FirstOrDefault(x => x.Id == postId);
            post.Content = this.postEditBox.Text;
            context.SaveChanges();
            Response.Redirect("~/Post.aspx");
        }
    }
}