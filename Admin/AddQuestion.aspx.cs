using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlSubject();
        }
    }
    /* Submit Question */

    protected void SubmitRecord()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String sqlQuery = "INSERT INTO QuestionBank_Master(Subject_id,Question,Option_1,Option_2,Option_3,Option_4,Answer) VALUES (@Subject_id,@Question,@Option_1,@Option_2,@Option_3,@Option_4,@Answer); ";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Subject_id", SqlDbType.VarChar).Value = DdlSubject.SelectedValue;
            cmd.Parameters.Add("@Question", SqlDbType.VarChar).Value = TxtQuestion.Text;
            cmd.Parameters.Add("@Option_1", SqlDbType.VarChar).Value = TxtOption1.Text;
            cmd.Parameters.Add("@Option_2", SqlDbType.VarChar).Value = TxtOption2.Text;
            cmd.Parameters.Add("@Option_3", SqlDbType.VarChar).Value = TxtOption3.Text;
            cmd.Parameters.Add("@Option_4", SqlDbType.VarChar).Value = TxtOption4.Text;
            cmd.Parameters.Add("@Answer", SqlDbType.VarChar).Value = TxtAnswer.Text;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "Question Succesfully Added";
            con.Close();
        }

        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }
    /* Fill  ddl Subject */

    protected void FillDdlSubject()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM Subject_Master";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlSubject.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlSubject.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
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
        Response.Redirect("AddQuestion.aspx");
    }
}