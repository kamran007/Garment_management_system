using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GMS
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String r = Session["Table"].ToString();
            String s= Session["id"].ToString();
            String x = null;
            
            if (r != "Management")
            {
                if (r == "Buyer")
                {
                    x = "Buyer_Id";
                    Label1.Text = "User Name:";
                    Label2.Text = "Company Name:";
                    Label3.Text = "Trade Licence No:";
                    Label4.Text = "Address:";
                    Label5.Text = "Country:";
                    Label6.Text = "Email Address:";
                    Label7.Text = "Phone No:";

                }
                else if (r == "Employee")
                {
                    x = "Employee_Id";
                    Label1.Text = "User Name:";
                    Label2.Text = "Name:";
                    Label3.Text = "Rank:";
                    Label4.Text = "Salary:";
                    Label5.Text = "Address:";
                    Label6.Text = "Email Address:";
                    Label7.Text = "Phone No:";
                }
                else if (r == "Quality_Checker")
                {
                    x = "QC_Id";
                    Label1.Text = "User Name:";
                    Label2.Text = "Name:";
                    Label3.Text = "Qualification:";
                    Label4.Text = "Experience:";
                    Label5.Text = "Address:";
                    Label6.Text = "Email Address:";
                    Label7.Text = "Phone No:";
                }
                String query = @"Select * from " + r + " where " + x + " = '" + s + "'";
                string connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices1"].ConnectionString;
                SqlConnection conn;
                conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand SelectCommand = new SqlCommand(query, conn);
                SqlDataReader reader = SelectCommand.ExecuteReader();
                while (reader.Read())
                {
                    Label9.Text = reader[0].ToString();
                    Label10.Text = reader[1].ToString();
                    Label11.Text = reader[2].ToString();
                    Label12.Text = reader[3].ToString();
                    Label13.Text = reader[4].ToString();
                    Label14.Text = reader[5].ToString();
                    Label15.Text = reader[6].ToString();

                }
                conn.Close();
            }
            else if (r == "Management")
            {
                x = "Management_Id";
                Label1.Text = "User Name:";
                Label2.Text = "Name:";
                Label3.Text = "Address:";
                Label4.Text = "Email Address:";
                Label5.Text = "Phone No:";
                String query = @"Select * from " + r + " where " + x + " = '" + s + "'";
                string connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices1"].ConnectionString;
                SqlConnection conn;
                conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand SelectCommand = new SqlCommand(query, conn);
                SqlDataReader reader = SelectCommand.ExecuteReader();
                while (reader.Read())
                {
                    Label9.Text = reader[0].ToString();
                    Label10.Text = reader[1].ToString();
                    Label11.Text = reader[2].ToString();
                    Label12.Text = reader[3].ToString();
                    Label13.Text = reader[4].ToString();
                }
                conn.Close();
            }         
        }
    }
}