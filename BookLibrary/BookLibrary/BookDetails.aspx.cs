using BookLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLibrary
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int bookId = Convert.ToInt32(Request.Params["id"]);
            var context = new LibrarySystemEntities();
            var book = context.Books.Find(bookId);
            this.titleLiteral.Text = book.Title;
            this.authorLiteral.Text = "by " + book.Author;
            this.isbnLiteral.Text = "ISBN " + book.ISBN;
            this.websiteLink.NavigateUrl = Server.HtmlEncode(book.WebSite);
            this.websiteLink.Text = Server.HtmlEncode(book.WebSite);
            this.discriptionLiteral.Text = book.Discription;
        }
    }
}