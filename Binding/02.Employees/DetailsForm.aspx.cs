using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.Employees
{
    public partial class DetailsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new northwindEntities();
            var id = int.Parse(Request.QueryString["id"]);
            var employeeDetails = context.Employees.Where(x => x.EmployeeID == id).ToList();
            this.details.DataSource = employeeDetails;
            this.details.DataBind();
        }
    }
}