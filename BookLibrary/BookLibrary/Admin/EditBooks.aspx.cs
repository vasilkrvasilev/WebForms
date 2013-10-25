using BookLibrary.Models;
using Error_Handler_Control;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLibrary.Admin
{
    public partial class EditBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<BookLibrary.Models.Book> booksGrid_GetData()
        {
            LibrarySystemEntities context = new LibrarySystemEntities();
            return context.Books.Include("Category").OrderBy(x => x.BookId);
        }

        protected void editBookButton_Command(object sender, CommandEventArgs e)
        {
            this.editBookPanel.Visible = true;
            this.newBookButton.Visible = false;
            int bookId = Convert.ToInt32(e.CommandArgument);
            LibrarySystemEntities context = new LibrarySystemEntities();
            Book book = context.Books.Find(bookId);
            try
            {
                this.editTitleBox.Text = book.Title;
                this.editAuthorBox.Text = book.Author;
                this.editISBNBox.Text = book.ISBN;
                this.editWebSiteBox.Text = book.WebSite;
                this.editDescriptionBox.Text = book.Discription;
                this.allCategoriesList.DataSource = context.Categories.ToList();
                this.allCategoriesList.DataBind();
                Session["bookId"] = bookId.ToString();
                Session["categoryId"] = "1";
            }
            catch(Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void deleteBookButton_Command(object sender, CommandEventArgs e)
        {
            this.deleteBookPanel.Visible = true;
            this.newBookButton.Visible = false;
            int bookId = Convert.ToInt32(e.CommandArgument);
            LibrarySystemEntities context = new LibrarySystemEntities();
            Book book = context.Books.Find(bookId);
            try
            {
                this.deleteTitleBox.Text = book.Title;
                Session["bookId"] = bookId.ToString();
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void newBookButton_Click(object sender, EventArgs e)
        {
            this.newBookPanel.Visible = true;
            this.newBookButton.Visible = false;
            LibrarySystemEntities context = new LibrarySystemEntities();
            this.newAllCategoriesList.DataSource = context.Categories.ToList();
            this.newAllCategoriesList.DataBind();
            Session["categoryId"] = "1";
        }

        protected void allCategoriesList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.allCategoriesList.Visible)
            {
                Session["categoryId"] = this.allCategoriesList.SelectedItem.Value;
            }
            else if (this.newAllCategoriesList.Visible)
            {
                Session["categoryId"] = this.newAllCategoriesList.SelectedItem.Value;
            }
        }

        protected void saveBookButton_Click(object sender, EventArgs e)
        {
            try
            {
                var title = this.editTitleBox.Text;
                var author = this.editAuthorBox.Text;
                if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(author))
                {
                    throw new ArgumentNullException(
                        "The title or the author of a book could not be null or white space");
                }
                var isbn = this.editISBNBox.Text;
                var website = this.editWebSiteBox.Text;
                var pattern = @"^(https?|ftp|file)://.+$";
                if (!Regex.IsMatch(website, pattern))
                {
                    throw new ArgumentOutOfRangeException(
                        "The book web site url is not valid");
                }
                var description = this.editDescriptionBox.Text;
                var categoryId = Convert.ToInt32(Session["categoryId"]);
                Session["categoryId"] = null;
                var bookId = Convert.ToInt32(Session["bookId"]);
                Session["bookId"] = null;
                LibrarySystemEntities context = new LibrarySystemEntities();
                Book book = context.Books.Find(bookId);
                book.Title = title;
                book.Author = author;
                book.ISBN = isbn;
                book.WebSite = website;
                book.Discription = description;
                book.CategoryId = categoryId;
                context.SaveChanges();
                this.booksGrid.PageIndex = 0;
                this.editBookPanel.Visible = false;
                this.newBookButton.Visible = true;
                ErrorSuccessNotifier.AddSuccessMessage("Book was successfully edeted.");
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void cancelBookButton_Click(object sender, EventArgs e)
        {
            Session["categoryId"] = null;
            Session["bookId"] = null;
            this.editBookPanel.Visible = false;
            this.newBookButton.Visible = true;
        }

        protected void yesBookButton_Click(object sender, EventArgs e)
        {
            var bookId = Convert.ToInt32(Session["bookId"]);
            Session["bookId"] = null;
            LibrarySystemEntities context = new LibrarySystemEntities();
            Book book = context.Books.Find(bookId);
            try
            {
                context.Books.Remove(book);
                context.SaveChanges();
                this.booksGrid.PageIndex = 0;
                this.deleteBookPanel.Visible = false;
                this.newBookButton.Visible = true;
                ErrorSuccessNotifier.AddSuccessMessage("Book was successfully deleted.");
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void noBookButton_Click(object sender, EventArgs e)
        {
            Session["bookId"] = null;
            this.deleteBookPanel.Visible = false;
            this.newBookButton.Visible = true;
        }

        protected void saveNewBookButton_Click(object sender, EventArgs e)
        {
            try
            {
                var title = this.newTitleBox.Text;
                var author = this.newAuthorBox.Text;
                if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(author))
                {
                    throw new ArgumentNullException(
                        "The title or the author of a book could not be null or white space");
                }

                var isbn = this.newISBNBox.Text;
                var website = this.newWebSiteBox.Text;
                var pattern = @"^(https?|ftp|file)://.+$";
                if (!Regex.IsMatch(website, pattern))
                {
                    throw new ArgumentOutOfRangeException(
                        "The book web site url is not valid");
                }
                var description = this.newDescriptionBox.Text;
                var categoryId = Convert.ToInt32(Session["categoryId"]);
                Session["categoryId"] = null;
                LibrarySystemEntities context = new LibrarySystemEntities();
                Book book = new Book()
                {
                    Title = title,
                    Author = author,
                    ISBN = isbn,
                    WebSite = website,
                    Discription = description
                };

                Category category = context.Categories.Find(categoryId);
                category.Books.Add(book);
                context.SaveChanges();
                this.booksGrid.PageIndex = 0;
                this.newBookPanel.Visible = false;
                this.newBookButton.Visible = true;
                ErrorSuccessNotifier.AddSuccessMessage("Book was successfully added.");
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void cancelNewBookButton_Click(object sender, EventArgs e)
        {
            Session["categoryId"] = null;
            this.newBookPanel.Visible = false;
            this.newBookButton.Visible = true;
        }
    }
}