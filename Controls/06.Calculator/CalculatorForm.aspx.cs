using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _06.Calculator
{
    public partial class CalculatorForm : System.Web.UI.Page
    {
        private static int resultValue = 0;
        private static int operationIndex = 0;
        private int ExecuteOperation()
        {
            var resultValue = int.Parse(this.resultNumber.Text);
            var operatorValue = this.sign.Text;
            var currentNumber = int.Parse(this.currentNumber.Text);
            switch (operatorValue)
            {
                case "+":
                    resultValue += currentNumber;
                    break;
                case "-":
                    resultValue -= currentNumber;
                    break;
                case "x":
                    resultValue *= currentNumber;
                    break;
                case "/":
                    resultValue /= currentNumber;
                    break;
            }

            this.resultNumber.Text = resultValue.ToString();
            this.currentNumber.Text = string.Empty;

            return resultValue;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void plus_Click(object sender, EventArgs e)
        {
            if (this.enterNumber.Text == string.Empty)
            {
                this.sign.Text = "+";
            }
            else
            {
                ExecuteOperation();
                this.sign.Text = "+";
                this.enterNumber.Text = string.Empty;
            }
        }

        protected void minus_Click(object sender, EventArgs e)
        {
            if (this.enterNumber.Text == string.Empty)
            {
                this.sign.Text = "-";
            }
            else
            {
                ExecuteOperation();
                this.sign.Text = "-";
                this.enterNumber.Text = string.Empty;
            }
        }

        protected void multiply_Click(object sender, EventArgs e)
        {
            if (this.enterNumber.Text == string.Empty)
            {
                this.sign.Text = "x";
            }
            else
            {
                ExecuteOperation();
                this.sign.Text = "x";
                this.enterNumber.Text = string.Empty;
            }
        }

        protected void clear_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text = string.Empty;
            this.currentNumber.Text = string.Empty;
        }

        protected void divide_Click(object sender, EventArgs e)
        {
            if (this.enterNumber.Text == string.Empty)
            {
                this.sign.Text = "/";
            }
            else
            {
                ExecuteOperation();
                this.sign.Text = "/";
                this.enterNumber.Text = string.Empty;
            }
        }

        protected void root_Click(object sender, EventArgs e)
        {
            if (this.enterNumber.Text == string.Empty)
            {
                var resultValue = (int)Math.Round(Math.Sqrt(double.Parse(this.resultNumber.Text)));
                this.resultNumber.Text = resultValue.ToString();
                this.currentNumber.Text = string.Empty;
                this.sign.Text = "+";
                this.enterNumber.Text = string.Empty;
            }
            else
            {
                ExecuteOperation();
                var resultValue = (int)Math.Round(Math.Sqrt(double.Parse(this.resultNumber.Text)));
                this.resultNumber.Text = resultValue.ToString();
                this.currentNumber.Text = string.Empty;
                this.sign.Text = "+";
                this.enterNumber.Text = string.Empty;
            }
        }

        protected void equal_Click(object sender, EventArgs e)
        {
            if (this.enterNumber.Text == string.Empty)
            {
                this.enterNumber.Text += "0";
                this.currentNumber.Text += "0";
                var resultValue = ExecuteOperation();
                this.sign.Text = "+";
                this.enterNumber.Text = string.Empty;
            }
            else
            {
                var resultValue = ExecuteOperation();
                this.sign.Text = "+";
                this.enterNumber.Text = string.Empty;
            }
        }

        protected void one_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "1";
            this.currentNumber.Text += "1";
        }

        protected void two_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "2";
            this.currentNumber.Text += "2";
        }

        protected void three_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "3";
            this.currentNumber.Text += "3";
        }

        protected void four_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "4";
            this.currentNumber.Text += "4";
        }

        protected void five_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "5";
            this.currentNumber.Text += "5";
        }

        protected void six_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "6";
            this.currentNumber.Text += "6";
        }

        protected void seven_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "7";
            this.currentNumber.Text += "7";
        }

        protected void eight_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "8";
            this.currentNumber.Text += "8";
        }

        protected void nine_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "9";
            this.currentNumber.Text += "9";
        }

        protected void zero_Click(object sender, EventArgs e)
        {
            this.enterNumber.Text += "0";
            this.currentNumber.Text += "0";
        }
    }
}