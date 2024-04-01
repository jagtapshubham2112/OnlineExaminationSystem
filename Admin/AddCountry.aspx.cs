using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_AddCountry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /* Submit recordd*/
    protected void SubmitRecord()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String sqlQuery = "INSERT INTO Country_Master(Country_Name) VALUES (@Country_Name); ";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Country_Name", SqlDbType.VarChar).Value = TxtCountryName.Text;

            cmd.ExecuteNonQuery();
            LblMessage.Text = "One Country Added";
            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SubmitRecord();
    }
    
    protected void BtnCancel_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AddCountry.aspx");
    }
}