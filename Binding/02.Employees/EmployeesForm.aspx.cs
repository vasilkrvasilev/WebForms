using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.Employees
{
    public partial class EmployeesForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new northwindEntities();
            var names = context.Employees.Select(
                x => new
                {
                    id = x.EmployeeID,
                    fullName = x.FirstName + " " + x.LastName
                }).ToList();

            if (!Page.IsPostBack)
            {
                this.employees.DataSource = names;
                this.employees.DataBind();
            }
        }
    }
}