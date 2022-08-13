using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class BuyerRegistationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {

            String query = @"Insert into Buyer values('"+UserName.Text+"','"+CompanyName.Text+"','"+TradeLicenceNo.Text+"','"+Address.Text+"','"+Country.Text+"','"+EmailAddress.Text+"','"+PhoneNo.Text+"','"+Password.Text+"')";
            Connection m = new Connection();
            String Query1 = @"Select User_Name from Password_List where User_Name= '" + UserName.Text + "'";
            if (m.PasswordCheck(Query1)!=null)
            {
                LabelCorrectUserName.Text = @"" + UserName.Text + " is already exist. Try Other.";
            }
            else
            {
                int res = m.SaveData(query);
                if (res == 1)
                {
                    LblMessage.Text = "Data Added Successfully";
                    UserName.Text = "";
                    CompanyName.Text = "";
                    TradeLicenceNo.Text = "";
                    Country.Text = "";
                    Address.Text = "";
                    EmailAddress.Text = "";
                    PhoneNo.Text = "";
                }
                else
                {
                    LblMessage.Text = "No Response from Database";

                }
            }
        }
    }
}