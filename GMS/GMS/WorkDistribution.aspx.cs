using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class WorkDistribution : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownListOrder_SelectedIndexChanged(object sender, EventArgs e)
        {
            String query = @"Select Order_Title from Order_List where Order_Id= '"+DropDownListOrder.SelectedValue.ToString()+"'";
            Connection m = new Connection();
            String OrderTitle = m.PasswordCheck(query);
            TextBoxOrder.Text = OrderTitle;
        }

        protected void DropDownListEmployee_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Query = @"select Employee_Rank from Employee where Employee_Id= '"+DropDownListEmployee.SelectedValue.ToString()+"'";
            Connection m=new Connection();
            String EmployeeRank = m.PasswordCheck(Query);
            TextBoxEmployee.Text = EmployeeRank;
        }

        protected void BtSubmit_Click(object sender, EventArgs e)
        {
            String s=DropDownListEmployee.SelectedValue.ToString();
            String o=DropDownListOrder.SelectedValue.ToString();
            String d = Session["id"].ToString();
            String query1 = @"insert into Distributed_Work_List values('" + TextBoxWorkDetail.Text+ "','"+s+"','"+o+"','"+d+"')";
            Connection m = new Connection();
            int r = m.SaveData(query1);
            if(r>0)
            {
                LblMessage.Text = "Data Added Successfully";
            }
            else
            {
                LblMessage.Text = "You have no access to add data";
            }
        }
    }
}