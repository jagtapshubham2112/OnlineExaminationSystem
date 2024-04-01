using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_AddTaluka : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlDistrict();
        }
    }
    /* Submit Taluka */

    protected void SubmitRecord()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String sqlQuery = "INSERT INTO Taluka_Master(Taluka_Name,District_ID) VALUES (@Taluka_Name,@District_ID); ";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Taluka_Name", SqlDbType.VarChar).Value = TxtTalukaName.Text;
            cmd.Parameters.Add("@District_ID", SqlDbType.Int).Value = DdlDistrictName.SelectedValue;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "One Taluka Added";
            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }

    /* Fill  ddl District */

    protected void FillDdlDistrict()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM District_Master";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlDistrictName.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlDistrictName.Items.Add(new ListItem(Dr[1].ToString(),Dr[0].ToString()));
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
    protected void BtnSubmit_Click1(object sender, EventArgs e)
    {

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddTaluka.aspx");
    }
}