using BookLibrary.Models;
using Error_Handler_Control;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookLibrary
{
    public partial class Contact : Page
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
        public IQueryable<BookLibrary.Models.Category> categoriesGrid_GetData()
        {
            LibrarySystemEntities context = new LibrarySystemEntities();
            return context.Categories.OrderBy(x => x.CategoryId);
        }

        protected void deleteCategoryButton_Command(object sender, CommandEventArgs e)
        {
            this.deleteCategoryPanel.Visible = true;
            this.newCategoryButton.Visible = false;
            int categoryId = Convert.ToInt32(e.CommandArgument);
            LibrarySystemEntities context = new LibrarySystemEntities();
            Category category = context.Categories.Find(categoryId);
            try
            {
                this.deleteCategoryBox.Text = category.Name;
                Session["categoryId"] = categoryId.ToString();
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void editCategoryButton_Command(object sender, CommandEventArgs e)
        {
            this.editCategoryPanel.Visible = true;
            this.newCategoryButton.Visible = false;
            int categoryId = Convert.ToInt32(e.CommandArgument);
            LibrarySystemEntities context = new LibrarySystemEntities();
            Category category = context.Categories.Find(categoryId);
            try
            {
                this.editCategoryBox.Text = category.Name;
                Session["categoryId"] = categoryId.ToString();
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void saveCategoryButton_Click(object sender, EventArgs e)
        {
            try
            {
                var name = this.editCategoryBox.Text;
                if (string.IsNullOrWhiteSpace(name))
                {
                    throw new ArgumentNullException(
                        "The name of a category could not be null or white space");
                }
                var categoryId = Convert.ToInt32(Session["categoryId"]);
                Session["categoryId"] = null;
                LibrarySystemEntities context = new LibrarySystemEntities();
                Category category = context.Categories.Find(categoryId);
                category.Name = name;
                context.SaveChanges();
                this.categoriesGrid.PageIndex = 0;
                this.editCategoryPanel.Visible = false;
                this.newCategoryButton.Visible = true;
                ErrorSuccessNotifier.AddSuccessMessage("Category was successfully edeted.");
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void cancelCategoryButton_Click(object sender, EventArgs e)
        {
            Session["categoryId"] = null;
            this.editCategoryPanel.Visible = false;
            this.newCategoryButton.Visible = true;
        }

        protected void yesCategoryButton_Click(object sender, EventArgs e)
        {
            try
            {
                var categoryId = Convert.ToInt32(Session["categoryId"]);
                Session["categoryId"] = null;
                LibrarySystemEntities context = new LibrarySystemEntities();
                Category category = context.Categories.Find(categoryId);
                context.Books.RemoveRange(category.Books);
                context.Categories.Remove(category);
                context.SaveChanges();
                this.categoriesGrid.PageIndex = 0;
                this.deleteCategoryPanel.Visible = false;
                this.newCategoryButton.Visible = true;
                ErrorSuccessNotifier.AddSuccessMessage("Category was successfully deleted.");
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void noCategoryButton_Click(object sender, EventArgs e)
        {
            Session["categoryId"] = null;
            this.deleteCategoryPanel.Visible = false;
            this.newCategoryButton.Visible = true;
        }

        protected void saveNewCategoryButton_Click(object sender, EventArgs e)
        {
            try
            {
                var name = this.newCategoryBox.Text;
                if (string.IsNullOrWhiteSpace(name))
                {
                    throw new ArgumentNullException(
                        "The name of a category could not be null or white space");
                }

                LibrarySystemEntities context = new LibrarySystemEntities();
                Category category = new Category
                {
                    Name = name
                };

                context.Categories.Add(category);
                context.SaveChanges();
                this.categoriesGrid.PageIndex = 0;
                this.newCategoryPanel.Visible = false;
                this.newCategoryButton.Visible = true;
                ErrorSuccessNotifier.AddSuccessMessage("Category was successfully added.");
            }
            catch (Exception ex)
            {
                ErrorSuccessNotifier.AddErrorMessage(ex);
            }
        }

        protected void cancelNewCategoryButton_Click(object sender, EventArgs e)
        {
            this.newCategoryPanel.Visible = false;
            this.newCategoryButton.Visible = true;
        }

        protected void newCategoryButton_Click(object sender, EventArgs e)
        {
            this.newCategoryPanel.Visible = true;
            this.newCategoryButton.Visible = false;
        }
    }
}