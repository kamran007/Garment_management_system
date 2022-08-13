using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }

        }
        protected void Timer1_Trick(object sender, EventArgs e)
        {
            SetImageUrl();

        }
        private void SetImageUrl()
        {
            if (ViewState["ImageDisplayed"] == null)
            {
                Image1.ImageUrl = "~/images/1.jpg";
                ViewState["ImageDisplayed"] = 1;
            }
            else
            {
                int i = (int)ViewState["ImageDisplayed"] + 1;
                if (i == 9)
                {
                    Image1.ImageUrl = "~/images/1.jpg";
                    ViewState["ImageDisplayed"] = 1;
                }
                else
                {
                    Image1.ImageUrl = "~/images/" + i + ".jpg";
                    ViewState["ImageDisplayed"] = i;
                }
            }
        }
    }
}
