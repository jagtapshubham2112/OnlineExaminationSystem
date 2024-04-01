using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_SetEamination : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlSubject();
        }
    }
    /********************************************************************************************************************/
    /*****************************************FillGridOrder*******************************************************************/
    /******************************************************************************************************************/
    protected void FillGridQuestionBank()
    {
        SqlConnection Con;
        SqlCommand cmd;
        String ConString, SqlQuery;
        try
        {
            ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            Con = new SqlConnection(ConString);
            Con.Open();


            SqlQuery = "SELECT QuestionBank_Id, Question FROM QuestionBank_Master WHERE Subject_Id=@Subject_Id";
            cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = Con;

            cmd.Parameters.Add("Subject_Id", SqlDbType.Int).Value = DdlSubject.SelectedValue;            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Order_Master");
           GvQuestionBank.DataSource = ds;
            GvQuestionBank.DataBind();

        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }
    /********************************************************************************************************************/
    /*****************************************FillGridOrder*******************************************************************/
    /******************************************************************************************************************/
    protected void FillGridQuestion()
    {
        SqlConnection Con;
        SqlCommand cmd;
        String ConString, SqlQuery;
        try
        {
            ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            Con = new SqlConnection(ConString);
            Con.Open();


            SqlQuery = "SELECT Question_Id, Question FROM Question_Master WHERE Subject_Id=@Subject_Id";
            cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = Con;

            cmd.Parameters.Add("Subject_Id", SqlDbType.Int).Value = DdlSubject.SelectedValue;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Order_Master");
            GvQuestion.DataSource = ds;
            GvQuestion.DataBind();

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
    protected void DdlSubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillGridQuestionBank();
        FillGridQuestion();
        GetTotalQuestions();
    }
    protected void GvQuestionBank_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row = GvQuestionBank.SelectedRow;
        int QuestionBankId = Int32.Parse(row.Cells[0].Text);
        Session["QuestionBank_Id"] = QuestionBankId.ToString();

        AddToExaminationQuestion(QuestionBankId);
        FillGridQuestion();
        GetTotalQuestions();
       
    }
    /***************************************/
    /********AddToExaminationQuestion*****************/
    /***************************************/
   protected  void AddToExaminationQuestion(int QuestionBankId)
    {
        try
        {
            SqlConnection Con = new SqlConnection();
            string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            Con.ConnectionString = ConString;
            Con.Open();


            string SqlQuery = "INSERT INTO Question_Master(Subject_id,Question,Option_1,Option_2,Option_3,Option_4,Answer) SELECT Subject_id,Question,Option_1,Option_2,Option_3,Option_4,Answer FROM QuestionBank_Master WHERE QuestionBank_Id=@QuestionBank_Id";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Con;
            cmd.CommandText = SqlQuery;
            cmd.Parameters.Add("@QuestionBank_Id", SqlDbType.Int).Value = QuestionBankId;
            cmd.ExecuteNonQuery();

        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }

   /* GetTotalQuestions */

   protected void GetTotalQuestions()
   {
       try
       {
           SqlConnection con = new SqlConnection();
           String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
           con.ConnectionString = ConString;
           con.Open();
           String SqlQuery = "SELECT*FROM Question_Master WHERE Subject_Id = @Subject_Id";
           SqlCommand Cmd = new SqlCommand();
           Cmd.CommandText = SqlQuery;
           Cmd.Connection = con;
           Cmd.Parameters.Add("Subject_Id", SqlDbType.Int).Value = DdlSubject.SelectedValue;
           SqlDataReader Dr = Cmd.ExecuteReader();
           int count = 0;    
           while (Dr.Read())
           {
               count++;
           }
           LblSetQuestions.Text = count.ToString();
           con.Close();
       }
       catch (SqlException Se)
       {
           LblMessage.Text = Se.Message;
       }
   }

   protected void GvQuestion_RowDeleting(object sender, GridViewDeleteEventArgs e)
   {
       try
       {
           SqlConnection Con = new SqlConnection();
           string ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
           Con.ConnectionString = ConString;
           Con.Open();
           GridViewRow row = (GridViewRow)GvQuestion.Rows[e.RowIndex];
           int QuestionId = Int32.Parse(row.Cells[0].Text);


           string SqlQuery = "DELETE Question_Master WHERE  Question_Id=@Question_Id ";

           SqlCommand Cmd = new SqlCommand();
           Cmd.Parameters.Add("@Question_Id", SqlDbType.Int).Value = QuestionId;
           Cmd.CommandText = SqlQuery;
           Cmd.Connection = Con;
           Cmd.ExecuteNonQuery();
           Con.Close();
           GvQuestion.EditIndex = -1;
           FillGridQuestion();
           GetTotalQuestions();
       }
       catch (SqlException Se)
       {
           LblMessage.Text = Se.Message;
       }
       catch (Exception ex)
       { LblMessage.Text = ex.Message; }
   }
}