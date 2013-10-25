using _02.Employees;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03.FormView
{
    public partial class FormViewForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new northwindEntities();
            var names = context.Employees
                .Select(
                x => new
                {
                    id = x.EmployeeID,
                    fullName = x.FirstName + " " + x.LastName
                })
                .ToList();

            //var first = context.Employees.Where(x => x.EmployeeID == 1).ToList();

            if (!Page.IsPostBack)
            {
                this.employees.DataSource = names;
                this.employees.DataBind();
                //this.details.DataSource = first;
                //this.details.DataBind();
            //}
            //else
            //{
                var parameter = Request.QueryString["id"];
                if (string.IsNullOrWhiteSpace(parameter))
                {
                    var employeeDetails = context.Employees.Where(x => x.EmployeeID == 1).ToList();
                    this.details.DataSource = employeeDetails;
                    this.details.DataBind();
                }
                else
                {
                    var id = int.Parse(Request.QueryString["id"]);
                    var employeeDetails = context.Employees.Where(x => x.EmployeeID == id).ToList();
                    this.details.DataSource = employeeDetails;
                    this.details.DataBind();
                }
            }
        }

        //protected void employees_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    ButtonField btn = (ButtonField)sender;
        //    int number = int.Parse(btn.DataTextField);

        //    var context = new northwindEntities();
        //    var id = 5;
            
        //    var next = context.Employees.Where(x => x.EmployeeID == id).ToList();
        //    this.details.DataSource = next;
        //    this.details.DataBind();
        //}

        //protected void employees_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    // If multiple ButtonField column fields are used, use the
        //    // CommandName property to determine which button was clicked.
        //    if(e.CommandName=="Select")
        //    {

        //      // Convert the row index stored in the CommandArgument
        //      // property to an Integer.
        //      int index = Convert.ToInt32(e.CommandArgument);    

        //      // Get the last name of the selected author from the appropriate
        //      // cell in the GridView control.
        //      GridViewRow selectedRow = this.employees.Rows[index];
        //      TableCell contactName = selectedRow.Cells[2];
        //      string contact = contactName.Attributes["DataField"];  

        //      // Display the selected author.
        //      Message.Text = "You selected " + contact + ".";
        //}
    }
}