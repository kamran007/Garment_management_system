using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class QAReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String r = Session["id"].ToString();
            String s = DropDownList1.SelectedValue.ToString();
            Connection m = new Connection();
            String query = @"insert into QA_Report_List values('" + TextBoxQAReport.Text + "','" + Comment.Text + "','" + s + "','" + r + "')";
            int re = m.SaveData(query);
            if (re == 1)
            {
                LblMessage.Text = @"Data Added Successfully";
            }
            else
            {
                LblMessage.Text = @"You Have no Access to Submit Report";

            }
        }
    }
}