using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.TodoListApp
{
    public partial class TodoListForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void categoriesList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void editCategory_Click(object sender, EventArgs e)
        {
            var id = int.Parse(this.categoriesList.SelectedItem.Value);
            var context = new TodoListEntities();
            var category = context.Categories.FirstOrDefault(x => x.Id == id);
            category.Name = this.categoryName.Text;
            context.SaveChanges();
        }

        protected void insertCategory_Click(object sender, EventArgs e)
        {
            var context = new TodoListEntities();
            var category = new Category() { Name = this.categoryName.Text };
            context.Categories.Add(category);
            context.SaveChanges();
        }

        protected void deleteCategory_Click(object sender, EventArgs e)
        {
            this.categoriesList.Items.Remove(this.categoriesList.SelectedItem);
        }

        protected void todosList_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            var catId = this.categoriesList.SelectedItem.Value;
            this.todosData.InsertParameters.Add("CategoryId", TypeCode.Int32, catId);
            this.todosData.InsertParameters.Add("LastChange", TypeCode.DateTime, (DateTime.Now).ToString());
        }

        protected void todosList_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            var catId = this.categoriesList.SelectedItem.Value;
            this.todosData.InsertParameters.Add("CategoryId", TypeCode.Int32, catId);
            this.todosData.InsertParameters.Add("LastChange", TypeCode.DateTime, (DateTime.Now).ToString());
        }
    }
}