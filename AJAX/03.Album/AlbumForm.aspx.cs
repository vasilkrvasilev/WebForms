using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03.Album
{
    public partial class AlbumForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        public static AjaxControlToolkit.Slide[] GetSlides()
        {
            AjaxControlToolkit.Slide[] imgSlide = new AjaxControlToolkit.Slide[4];

            imgSlide[1] = new AjaxControlToolkit.Slide("Images/error-icon.png", "error", "Error");
            imgSlide[2] = new AjaxControlToolkit.Slide("Images/info-icon.png", "info", "Info");
            imgSlide[0] = new AjaxControlToolkit.Slide("Images/success-icon.png", "success", "Success");
            imgSlide[3] = new AjaxControlToolkit.Slide("Images/warning-icon.png", "warning", "Warning");

            return (imgSlide);
        }
    }
}