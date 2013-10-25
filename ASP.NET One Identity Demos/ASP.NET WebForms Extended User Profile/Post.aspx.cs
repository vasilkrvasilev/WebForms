using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsTemplate.Models;

namespace WebFormsTemplate
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new ApplicationDbContext();
            var posts = context.Posts.ToList();
            this.postsList.DataSource = posts;
            this.postsList.DataBind();
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            var context = new ApplicationDbContext();
            var content = this.postContentBox.Text;
            var post = new Post() { Content = content };
            context.Posts.Add(post);
            context.SaveChanges();
            Response.Redirect("~/Post.aspx");
        }
    }
}