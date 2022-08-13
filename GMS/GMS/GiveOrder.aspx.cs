using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class GiveOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtSubmit_Click(object sender, EventArgs e)
        {
            String r = Session["id"].ToString();
            String myDate = DateTime.Now.ToString("yyyy.MM.dd");
            Connection m = new Connection();
            String query = @"insert into Order_List values('" +OrderTitle.Text + "','" + Description.Text + "','" + myDate + "','" + DeliveryDate.Text + "','" + r + "')";
            int re = m.SaveData(query);
            if (re == 1)
            {
                String Query = @"select top(1) Order_Id from Order_List order by Order_Id DESC";
                String Serial = m.PasswordCheck(Query);
                LblMessage.Text = @"Thank You for giving Order and Your Order Id is "+Serial+"";

            }
            else
            {
                LblMessage.Text = "You have no authority to giving Order.";

            }
        }
    }
}