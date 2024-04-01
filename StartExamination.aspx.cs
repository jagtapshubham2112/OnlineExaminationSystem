using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
public partial class StartExamination : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Student_Id"] == null)
        {
            Response.Redirect("StudentLogin.aspx");
        }
    }
    protected void BtnFinalExam_Click(object sender, EventArgs e)
    {
        Response.Redirect("ExamSubjects.aspx");
    }
    protected void BtnPracticeExam_Click(object sender, EventArgs e)
    {
        Response.Redirect("PracticeSubjects.aspx");
    }
    protected void BtnExamTest_Click(object sender, EventArgs e)
    {
        Random rnd = new Random();
        int cnt = rnd.Next(1, getCount()); 
       Session["Subject_Id"] = cnt;                  

        Response.Redirect("ExamTest.aspx");

    }
    protected Int32 getCount()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String query = "select * from Subject_Master ";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
          
            cmd.CommandText = query;
            SqlDataReader DR = cmd.ExecuteReader();

            int cnt = 0;
            while (DR.Read())
                cnt++;

            return cnt;
        }
        catch (SqlException se)
        {
            lblMessage.Text = se.Message;
        }
        return 0;
    }
}