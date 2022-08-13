using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;

namespace GMS
{
    public class Connection
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices1"].ConnectionString;
        SqlConnection conn;
        public int SaveData(String y)
        {
            int result = 0;
            conn = new SqlConnection(connectionString);
            conn.Open();
            try
            {
                SqlCommand saveCommand = new SqlCommand(y, conn);
                result = saveCommand.ExecuteNonQuery();
            }
            catch(Exception e)
            {
                result = 0;
            }
            finally
            {

                conn.Close();
            }
                return result;
        }
        public object GetInfo(String Querry)
        {
            conn = new SqlConnection(connectionString);
            conn.Open();
            Object rs = null;
            try
            {
                SqlCommand SelectCommand = new SqlCommand(Querry, conn);
                SqlDataReader reader = SelectCommand.ExecuteReader();
                rs = reader;
            }
            catch (Exception e)
            {
            }
            finally
            {

                conn.Close();
            }
            return rs;
        }
        public String PasswordCheck(string Querry)
        {
            String password = null;
            try
            {
                conn = new SqlConnection(connectionString);
                conn.Open();
                SqlCommand SelectCommand = new SqlCommand(Querry, conn);
                SqlDataReader reader = SelectCommand.ExecuteReader();
                while (reader.Read())
                {
                    password = reader[0].ToString();
                }
            }
            catch(Exception e)
            {
            }
            conn.Close();
            return password;

        }
    }
}