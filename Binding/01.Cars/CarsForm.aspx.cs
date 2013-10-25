using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.Cars
{
    public partial class CarsForm : System.Web.UI.Page
    {
        private Producer[] cars = new Producer[] 
        { 
            new Producer()
            {
                Id = 0,
                Name = "BMW",
                Models = new[]
                {
                    new Model()
                    {
                        Id = 1,
                        Name = "Izetta"
                    },
                    new Model()
                    {
                        Id = 2,
                        Name = "M"
                    }
                }
            },
            new Producer()
            {
                Id = 1,
                Name = "Renault",
                Models = new[]
                {
                    new Model()
                    {
                        Id = 3,
                        Name = "Alpine"
                    },
                    new Model()
                    {
                        Id = 4,
                        Name = "Clio"
                    },
                    new Model()
                    {
                        Id = 5,
                        Name = "Bulgar"
                    }
                }
            },
            new Producer()
            {
                Id = 2,
                Name = "Toyota",
                Models = new[]
                {
                    new Model()
                    {
                        Id = 6,
                        Name = "Avalon"
                    },
                    new Model()
                    {
                        Id = 7,
                        Name = "Previa"
                    },
                    new Model()
                    {
                        Id = 8,
                        Name = "Yaris"
                    }
                }
            }
        };

        private Extra[] extras = new Extra[]
        {
            new Extra()
            {
                Id = 1,
                Title = "Climatronic"
            },
            new Extra()
            {
                Id = 2,
                Title = "Stereo"
            },
            new Extra()
            {
                Id = 3,
                Title = "Boardcomputer"
            }
        };

        private string[] engines = new string[] { "Gasoline", "Diesel", "Electric", "Hybrid" };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.producerList.DataSource = cars;
                this.producerList.DataBind();

                this.modelList.DataSource = cars[0].Models;
                this.modelList.DataBind();

                this.extraList.DataSource = extras;
                this.extraList.DataBind();

                this.engineList.DataSource = engines;
                this.engineList.DataBind();
            }
        }

        protected void producerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.modelList.DataSource = cars[int.Parse(this.producerList.SelectedValue)].Models;
            this.modelList.DataBind();
        }

        protected void select_Click(object sender, EventArgs e)
        {
            var text = string.Format("Select all {0} model {1}, {2} engine with extra: ",
                this.producerList.SelectedItem.Text, this.modelList.SelectedItem.Text,
                this.engineList.SelectedItem.Text);
            foreach (ListItem item in this.extraList.Items)
            {
                if (item.Selected)
                {
                    text += (item.Text + " ");
                }
            }

            this.result.Text = text;
        }
    }
}