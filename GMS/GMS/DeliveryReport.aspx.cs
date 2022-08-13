using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class DeliveryReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String r = DropDownList1.SelectedValue.ToString();
            string query = @"select Order_Title from Delivery_Report where Order_Id='" + r + "'";
            Connection m = new Connection();
            OrderTitle.Text = m.PasswordCheck(query);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String r=Session["id"].ToString();
            String myDate = DateTime.Now.ToString("yyyy.MM.dd");
            String n = DropDownList1.SelectedValue.ToString();
            String query = @"insert into Delivery_List values('"+myDate+"','"+n+"','"+r+"')";
            Connection o = new Connection();
            int s = o.SaveData(query);
            if(s==1)
            {
                LabelMessage.Text = "Data Added Successfully";
            }
            else
            {
                LabelMessage.Text = "You have no access to input data.";
            }
        }
    }
}