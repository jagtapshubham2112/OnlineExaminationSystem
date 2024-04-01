using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddCity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlTaluka();
        }
    }
    /* Submit City */

    protected void SubmitRecord()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String sqlQuery = "INSERT INTO City_Master(City_Name,Taluka_ID,City_Pincode) VALUES (@City_Name,@Taluka_ID,@City_Pincode); ";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@City_Name", SqlDbType.VarChar).Value = TxtCityName.Text;
            cmd.Parameters.Add("@Taluka_ID", SqlDbType.Int).Value = DdlTalukaName.SelectedValue;
            cmd.Parameters.Add("@City_Pincode", SqlDbType.VarChar).Value = TxtPincode.Text;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "One City Added";
            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }
    
    /* Fill  ddl Taluka */

    protected void FillDdlTaluka()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM Taluka_Master";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlTalukaName.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlTalukaName.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
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
        Response.Redirect("AddCity.aspx");
    }
}