using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ExamSubjects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Student_Id"] == null)
        {
            Response.Redirect("StudentLogin.aspx");
        }
        if (!IsPostBack)
        {
            showPracticeSubject();
        }
    }

    /*************************************/
    /********VIEW sub*******/
    /*************************************/

    protected void showPracticeSubject()
    {
        try
        {
            SqlConnection Con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            Con.ConnectionString = ConString;
            Con.Open();
            String SqlQuery = "SELECT * FROM Subject_Master";
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = SqlQuery;
            SqlDataReader dr = Cmd.ExecuteReader();

            DtLstSubject.DataSource = dr;
            DtLstSubject.DataBind();
            Con.Close();
        }

        catch (SqlException Se)
        {
            lbl_questshowwarning.Text = Se.Message;
        }
    }
    protected void DtLstSubject_ItemCommand(object source, DataListCommandEventArgs e)
    {
        ImageButton ib = (ImageButton)e.Item.FindControl("ImgBtnSubjectImage");
        String Subject_Id = ib.AlternateText;
        Session["Subject_Id"] = Subject_Id;

        if (e.CommandArgument.Equals("SelectSubject"))
        {

            if (IsCompleteExam())
            {
                LblMessage.Text = "Already Completed Examination";
            }
            else
            {
                Response.Redirect("Examination.aspx");
            }
        }

    }
    public bool IsCompleteExam()
    {
        try
        {
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            SqlConnection Con = new SqlConnection(ConString);
            Con.Open();
            SqlCommand cmd = Con.CreateCommand();
            cmd.CommandText = "SELECT COUNT(*) as cnt FROM Result_Master WHERE Subject_Id=@Subject_Id AND Student_PRN=@Student_PRN";
            cmd.Parameters.Add("@Subject_Id", SqlDbType.Int).Value = Session["Subject_Id"].ToString();
            cmd.Parameters.Add("@Student_PRN ", SqlDbType.VarChar).Value = Session["Student_PRN"].ToString();
            int i = Int32.Parse( cmd.ExecuteScalar().ToString());
            if(i>0)
                return true;
              
            else
                return false;
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
            return false;
        }
    }
}