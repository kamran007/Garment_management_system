using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class AddQC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Connection m = new Connection();
            String Query1 = @"Select User_Name from Password_List where User_Name= '" + UserName.Text + "'";
            String query = @"insert into Quality_checker values('" + UserName.Text + "','" + Name.Text + "','" +Qualification.Text+ "','" +Experience.Text + "','" + Address.Text + "','" + EmailAddress.Text + "','" + PhoneNo.Text + "','" + Password.Text + "')";
            if (m.PasswordCheck(Query1) != null)
            {
                LabelCorrectUserName.Text = @"" + UserName.Text + " is already exist. Try Other.";
            }
            else
            {
                int re = m.SaveData(query);
                if (re == 1)
                {
                    LblMessage.Text = "Data Added Successfully";
                    UserName.Text = "";
                    Name.Text = "";
                    Qualification.Text = "";
                    Experience.Text = "";
                    Address.Text = "";
                    EmailAddress.Text = "";
                    PhoneNo.Text = "";
                }
                else
                {
                    LblMessage.Text = "DataBase not Response.Please try Other User Name.";
                }
            }
        }
    }
}