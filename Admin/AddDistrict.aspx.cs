using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class Admin_AddDitrict : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlState();
        }
    }   
    /* Submit District */ 

protected void SubmitRecord()
{
    try
    {
        SqlConnection con = new SqlConnection();
        String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.ConnectionString = conString;
        con.Open();

        String sqlQuery = "INSERT INTO District_Master(District_Name,State_ID) VALUES (@District_Name,@State_ID); ";

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sqlQuery;
        cmd.Connection = con;
        cmd.Parameters.Add ("@District_Name", SqlDbType.VarChar).Value = TxtDistrictName.Text;
        cmd.Parameters.Add ("@State_ID", SqlDbType.Int).Value = DdlStateName.SelectedValue;
        cmd.ExecuteNonQuery();
        LblMessage.Text = "One District Added";
        con.Close();
    }
    catch (SqlException se)
    
    {
        LblMessage.Text = se.Message;
    }
}
/* Fill  ddl State  */

protected void FillDdlState()
{
    try
    {
        SqlConnection con = new SqlConnection();
        String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        con.ConnectionString = ConString;
        con.Open();
        String SqlQuery = "SELECT*FROM State_Master";
        SqlCommand Cmd = new SqlCommand();
        Cmd.CommandText = SqlQuery;
        Cmd.Connection = con;
        SqlDataReader Dr = Cmd.ExecuteReader();
        DdlStateName.Items.Add(new ListItem("--SELECT--", "0"));
                while (Dr.Read())
        {
            DdlStateName.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
        }
        con.Close();
    }
    catch (SqlException Se)
    {
        LblMessage.Text = Se.Message;
    }
}
protected void BtnSubmit_Click(object sender, EventArgs e)
{
    SubmitRecord();
}
protected void BtnCancel_Click(object sender, EventArgs e)
{
    Response.Redirect("AddDistrict.aspx");
}
}



