using _02.Employees;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _05.ListView
{
    public partial class ListViewForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new northwindEntities();
            var employeeDetails = context.Employees.ToList();
            this.employees.DataSource = employeeDetails;
            this.employees.DataBind();
        }
    }
}