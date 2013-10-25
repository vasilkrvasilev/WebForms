using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using World.Data;

namespace _01.MasterDatails
{
    public partial class MasterDetailsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void continentsList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void insertContinent_Click(object sender, EventArgs e)
        {
            var context = new WorldEntities();
            var continent = new Continent() { Name = this.continentName.Text };
            context.Continents.Add(continent);
            context.SaveChanges();
        }

        protected void deleteContinent_Click(object sender, EventArgs e)
        {
            this.continentsList.Items.Remove(this.continentsList.SelectedItem);
        }

        protected void editContinet_Click(object sender, EventArgs e)
        {
            var id = int.Parse(this.continentsList.SelectedItem.Value);
            var context = new WorldEntities();
            var continent = context.Continents.FirstOrDefault(x => x.Id == id);
            continent.Name = this.continentName.Text;
            context.SaveChanges();
        }

        protected void insertCountry_Click(object sender, EventArgs e)
        {
            var context = new WorldEntities();
            Control form = this.insertCountryForm.Controls[this.insertCountryForm.Controls.Count - 1];
            string name = (form.FindControl("countryNameBox") as TextBox).Text;
            int population = int.Parse((form.FindControl("countryPopulationBox") as TextBox).Text);
            string flag = (form.FindControl("countryFlagBox") as TextBox).Text;
            string lang = (form.FindControl("countryLanguageBox") as TextBox).Text;
            Language language = context.Languages.FirstOrDefault(x => x.Title.ToLower() == lang.ToLower());
            if (language == null)
            {
                language = new Language() { Title = lang };
                context.Languages.Add(language);
            }

            var country = new Country()
            {
                ContinentId = int.Parse(this.continentsList.SelectedItem.Value),
                Name = name,
                Population = population,
                Flag = flag,
                Language = language
            };

            context.Countries.Add(country);
            context.SaveChanges();
        }

        protected void townsList_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
         string id = this.countriesList.SelectedDataKey.Value.ToString();
            this.townsData.InsertParameters.Add("CountryId", TypeCode.Int32, id);
        }

        protected void townsList_ItemEditing(object sender, ListViewEditEventArgs e)
        {

        }
    }
}