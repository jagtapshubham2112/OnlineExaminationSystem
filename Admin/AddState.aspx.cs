using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_AddState : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlcountry();
        }
    }

    /* Submit State */

    protected void SubmitRecord()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String sqlQuery = "INSERT INTO State_Master(State_Name,Country_ID) VALUES (@State_Name,@Country_ID); ";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@State_Name", SqlDbType.VarChar).Value = TxtStateName.Text;
            cmd.Parameters.Add("@Country_ID", SqlDbType.Int).Value = DdlCountryName.SelectedValue;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "One State Added";
            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }


    /* Fill  ddl country */

    protected void FillDdlcountry()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM Country_Master";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlCountryName.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlCountryName.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
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
        Response.Redirect("AddState.aspx");
    }
}






