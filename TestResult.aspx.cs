using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TestResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            showStudentInfo();
            showSubjectInfo();
            showResult();
        }
    }
    /********VIEW GALLERY*******/
    /*************************************/

    protected void showStudentInfo()
    {
        try
        {
            SqlConnection Con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            Con.ConnectionString = ConString;
            Con.Open();
            String SqlQuery = "SELECT * FROM Student_Master WHERE Student_PRNNO = @Student_PRNNO AND Student_Id = @Student_Id;";
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = SqlQuery;
            Cmd.Parameters.AddWithValue("@Student_PRNNO", Session["Student_PRN"].ToString());
            Cmd.Parameters.AddWithValue("@Student_Id", Session["Student_Id"].ToString());
            SqlDataReader dr = Cmd.ExecuteReader();

            DtLstStudent.DataSource = dr;
            DtLstStudent.DataBind();
            Con.Close();
        }

        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    /********VIEW GALLERY*******/
    /*************************************/

    protected void showSubjectInfo()
    {
        try
        {
            SqlConnection Con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            Con.ConnectionString = ConString;
            Con.Open();
            String SqlQuery = "SELECT * FROM Subject_Master WHERE Subject_Id = @Subject_Id;";
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = SqlQuery;
            Cmd.Parameters.AddWithValue("@Subject_Id", Session["Subject_Id"].ToString());
            SqlDataReader dr = Cmd.ExecuteReader();

            DtLstSubject.DataSource = dr;
            DtLstSubject.DataBind();
            Con.Close();
        }

        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    /********VIEW GALLERY*******/
    /*************************************/

    protected void showResult()
    {
        try
        {
            SqlConnection Con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            Con.ConnectionString = ConString;
            Con.Open();
            String SqlQuery = "SELECT * FROM ExamTest_Master WHERE Subject_Id = @Subject_Id AND Student_PRN = @Student_PRNNO;";
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = SqlQuery;
            Cmd.Parameters.AddWithValue("@Subject_Id", Session["Subject_Id"].ToString());
            Cmd.Parameters.AddWithValue("@Student_PRNNO", Session["Student_PRN"].ToString());
            SqlDataReader dr = Cmd.ExecuteReader();


            DtLstResult.DataSource = dr;
            DtLstResult.DataBind();
            Con.Close();
        }

        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
}