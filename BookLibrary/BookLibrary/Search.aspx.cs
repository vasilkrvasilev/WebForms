using BookLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLibrary
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = Convert.ToString(Request.Params["q"]);
            this.queryStringLiteral.Text = queryString;
            var context = new LibrarySystemEntities();
            var books = context.Books.Where(
                x => x.Title.Contains(queryString) || x.Author.Contains(queryString)).
                OrderBy(x => x.Title).ThenBy(x => x.Author).ToList();
            this.resultList.DataSource = books;
            this.resultList.DataBind();
        }
    }
}