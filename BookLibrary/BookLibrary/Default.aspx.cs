using BookLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLibrary
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LibrarySystemEntities context = new LibrarySystemEntities();
            var categories = context.Categories.Include("Books").ToList();
            this.CategoriesList.DataSource = categories;
            this.DataBind();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            var text = this.searchBox.Text;
            Response.Redirect("Search.aspx?q=" + text);
        }
    }
}