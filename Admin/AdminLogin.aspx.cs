using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /* Check Admin login */

    protected void CheckAdminLogin()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String sqlQuery = "SELECT * FROM Admin_Master WHERE Admin_Email=@Admin_Email AND Admin_Password=@Admin_Password";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Admin_Email", SqlDbType.VarChar).Value = TxtEmailMobile.Text;
            cmd.Parameters.Add("@Admin_Password", SqlDbType.VarChar).Value = TxtPassword.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() && dr.HasRows)
            {
                Session["Admin_FullName"] = dr["Admin_FullName"].ToString();
            
                Session["Admin_Email"] = dr["Admin_Email"].ToString();
                Session["Admin_id"] = dr["Admin_id"].ToString();
               
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                LblMessage.Text = "Invalid Admin email. AND/Or Password";
            }
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        CheckAdminLogin();
    }
}