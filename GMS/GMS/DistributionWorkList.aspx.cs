using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class DistributionWorkList : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String separation;
            if(Session["Table"].ToString()=="Employee")
            {
                String re = Session["id"].ToString();
                //separation = @"SELECT * FROM [Work_distributionView] where Employee_Id='" + Session["id"] + "'";
            }
        }
    }
}