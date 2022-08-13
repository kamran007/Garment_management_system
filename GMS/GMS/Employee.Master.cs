using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class Employee : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Table"] = Session["Table"];

        }

        protected void Task_Click(object sender, EventArgs e)
        {
            String dept = Session["Table"].ToString();
            if(dept=="Employee")
            {
                Response.Redirect("~/DistributionWorkList.aspx");
            }
            else if(dept=="Buyer")
            {
                Response.Redirect("~/GiveOrder.aspx");
            }
            else if(dept=="Management")
            {
                Response.Redirect("~/ManagementTask.aspx");

            }
            else if(dept=="Quality_Checker")
            {
                Response.Redirect("~/QAReport.aspx");
            }
            else
            {
                Response.Redirect("~/LogIn.aspx");
            }
        }
    }
}