using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.EmployeeOrders
{
    public partial class EmployeeOrdersForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var context = new northwindEntities();
            var employees = context.Employees.ToList();
            this.employeeList.DataSource = employees;
            this.employeeList.DataBind();
        }

        protected void employeeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            var employeeId = (int)(this.employeeList.SelectedDataKey.Value);
            var context = new northwindEntities();
            var orders = context.Orders.Where(x => x.EmployeeID == employeeId).ToList();
            this.orderList.DataSource = orders;
            this.orderList.DataBind();
        }
    }
}