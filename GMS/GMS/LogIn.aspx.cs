using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn_Click(object sender, EventArgs e)
        {
            Connection m = new Connection();
            String Category = DBCategory.SelectedValue.ToString();
            String query=null;
            if(Category=="Employee")
            {
                query = @"Select Employee_Id from Employee where Employee_Id= '" + UserName.Text + "' and Employee_Password= '" + Password.Text + "'";
            }
            else if(Category=="Buyer")
            {
                query = @"Select Buyer_Id from Buyer where Buyer_Id= '" + UserName.Text + "' and Buyer_Password= '" + Password.Text + "'";
            }
            else if(Category=="Management")
            {
                query = @"Select Management_Id from Management where Management_Id= '" + UserName.Text + "' and Management_Password= '" + Password.Text + "'";
            }
            else if(Category=="Quality_Checker")
            {
                query = @"Select QC_Id from Quality_Checker where QC_Id= '" + UserName.Text + "' and QC_Password= '" + Password.Text + "'";
            }
            String password = m.PasswordCheck(query);
            if(password ==UserName.Text)
            {
                Session["Table"] = Category;
                Session["id"] = UserName.Text;
                Response.Redirect("~/Profile.aspx");
            }
            else
            {
                Label1.Text = "Invalid Log in";
            }
        }
    }
}