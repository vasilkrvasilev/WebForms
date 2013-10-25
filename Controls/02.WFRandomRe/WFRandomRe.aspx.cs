using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.WFRandomRe
{
    public partial class WFRandomRe : System.Web.UI.Page
    {
        private static Random rand = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void random_Click(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.InvariantCulture;
            int first;
            bool isFirstNumber = int.TryParse(this.firstNumber.Text, out first);
            int second;
            bool isSecondNumber = int.TryParse(this.secondNumber.Text, out second);
            if (isFirstNumber && isSecondNumber)
            {
                if (first <= second)
                {
                    this.resultNumber.Text = (rand.Next(first, second + 1).ToString());
                }
                else
                {
                    this.resultNumber.Text = (rand.Next(second, first + 1).ToString());
                }
            }
            else
            {
                this.resultNumber.Text = "You entered non integer number";
            }
        }
    }
}