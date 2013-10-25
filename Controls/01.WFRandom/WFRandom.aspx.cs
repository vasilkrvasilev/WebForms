using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.WFRandom
{
    public partial class WFRandom : System.Web.UI.Page
    {
        private static Random rand = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void random_ServerClick(object sender, EventArgs e)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.InvariantCulture;
            int first;
            bool isFirstNumber = int.TryParse(this.firstNumber.Value, out first);
            int second;
            bool isSecondNumber = int.TryParse(this.secondNumber.Value, out second);
            if (isFirstNumber && isSecondNumber)
            {
                if (first <= second)
                {
                    this.resultNumber.Value = (rand.Next(first, second + 1).ToString());
                }
                else
                {
                    this.resultNumber.Value = (rand.Next(second, first + 1).ToString());
                }
            }
            else
            {
                this.resultNumber.Value = "You entered non integer number";
            }
        }
    }
}