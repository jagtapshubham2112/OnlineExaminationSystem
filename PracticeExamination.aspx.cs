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

public partial class PracticeExamination : System.Web.UI.Page
{
    static DataSet Questions;
    static string SubjectId;
    static Int32 totalQs;
    static bool IsLastQs = false;
    static Int16 rtAns = 0;
    static Int16 rgAns = 0;
    static Int16 skAns = 1800;
    long timerStartValue = 1800;

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["rtAns"] = 0;
        Session["rgAns"] = 0;
        Session["skAns"] = 0;


        if (Session["SUbject_Id"] == null && Session["Student_PRN"] == null)
        {
            Response.Write("<script> alert('Login is required! ' )</script>");
            Response.Redirect("StudentLogin.aspx");

        }
        if (!IsPostBack)
        {

            this.timerStartValue = long.Parse(ConfigurationManager.AppSettings["Delay"].ToString());
            this.Timer1.Interval = 500;
            Db db = new Db();
            SubjectId = Session["Subject_Id"].ToString();//Request.QueryString["Subject"].ToString();
            String query = "select * from Question_Master Where Subject_id='" + Session["Subject_Id"].ToString() + "' ";

            Questions = Db.getDataSet(query);
            //totalQs = Db.getCount(SubjectId);
            totalQs = getCount();
            LoadQuestions();

            DataSet question = new DataSet("Question_Master");
            question.Tables.Add();

            showSubjectName();
        }
    }
    void Page_PreRender(object sender, EventArgs e)
    {
        StringBuilder bldr = new StringBuilder();
        bldr.AppendFormat("var Timer=new myTimer({0},{1},'{2}','timertData');", this.timerStartValue, this.TimerInterval, this.LblTimerCount.ClientID);
        bldr.Append("Timer.go()");
        ClientScript.RegisterStartupScript(this.GetType(), "TimeScript", bldr.ToString(), true);
        ClientScript.RegisterHiddenField("timerData", timerStartValue.ToString());
    }
    void Page_PreInt(object sender, EventArgs e)
    {
        string timerVal = Request.Form["timerData"];
        if (TimerInterval != null || timerVal == "")
        {
            timerVal = timerVal.Replace(",", String.Empty);
            timerStartValue = long.Parse(timerVal);
        }
    }
    private Int32 TimerInterval
    {
        get
        {
            object o = ViewState["timerInterval"];
            if (o != null) { return Int32.Parse(o.ToString()); }
            return 50;
        }

    }
    protected void LoadQuestions()
    {
        if (Questions.Tables[0].Rows.Count > 0)
        {
            DataRow DR = Questions.Tables[0].Rows[0];
            lblNoOfQuestion.Text = DR[1].ToString() + " of " + totalQs;
            txtQuestion.Text = DR[2].ToString();

            rbtnAns.Items.Clear();
            rbtnAns.Items.Add(DR[3].ToString());
            rbtnAns.Items.Add(DR[4].ToString());
            rbtnAns.Items.Add(DR[5].ToString());
            rbtnAns.Items.Add(DR[6].ToString());


            hfAns.Value = DR[7].ToString();
            Questions.Tables[0].Rows.Remove(DR);
            if (lblQuestion.Text.Equals(totalQs.ToString()))
            {
                IsLastQs = true;
            }
        }
        else
        {
            Session["rtAns"] = rtAns;
            Session["rgAns"] = rgAns;
            Session["sktAns"] = skAns;
            SubjectId = Session["Subject_Id"].ToString();
            // Db db = new Db();

            try
            {
                SqlConnection con = new SqlConnection();
                string ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                con.ConnectionString = ConString;
                con.Open();
                String SqlQuery = "INSERT INTO Practice_Master(Student_PRN,Subject_Id,Right_Ans,Wrong_Ans,Skip_Ans,Total_Marks,Exam_Date,Result)" +
                "VALUES(@Student_PRN,@Subject_Id,@Right_Ans,@Wrong_Ans,@Skip_Ans,@Total_Marks,@Exam_Date,@Result)";
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = SqlQuery;

                cmd.Parameters.AddWithValue("@Student_PRN", Session["Student_PRN"].ToString());
                cmd.Parameters.AddWithValue("@Subject_Id", SubjectId);
                cmd.Parameters.AddWithValue("@Wrong_Ans", rgAns);
                cmd.Parameters.AddWithValue("@Right_Ans", rtAns);
                cmd.Parameters.AddWithValue("@Skip_Ans", skAns);
                cmd.Parameters.AddWithValue("@Total_Marks", (rtAns * 5));
                cmd.Parameters.Add("@Exam_Date", SqlDbType.SmallDateTime).Value = DateTime.Now.ToShortDateString();
                String result = "Fail";
                if ((rtAns * 5) >= 20)
                    result = "Pass";
                else
                    result = "Fail";

                cmd.Parameters.AddWithValue("@Result", result);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("ResultOfPractice.aspx");
            }
            catch (SqlException se)
            {
                lblMessage.Text = se.Message;
            }
        }

    }
    public Int32 GetCount(String tno)
    {
        return 10;
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        LoadQuestions();
    }


    protected void btnSkip_Click(object sender, EventArgs e)
    {

        LoadQuestions();
        skAns += 1;
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {

    }
    protected void rbtnAns_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ((rbtnAns.SelectedIndex + 1) == Convert.ToInt16(hfAns.Value))
            rtAns += 1;
        else
            rgAns += 1;
    }
    protected Int32 getCount()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String query = "select * from Question_Master Where Subject_id=@Subject_Id ";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.Parameters.Add("@Subject_Id", SqlDbType.Int).Value = Session["Subject_Id"].ToString();
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
    protected void showSubjectName()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String query = "select * from Subject_Master Where Subject_id=@Subject_Id ";

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.Parameters.Add("@Subject_Id", SqlDbType.Int).Value = Session["Subject_Id"].ToString();
            cmd.CommandText = query;
            SqlDataReader DR = cmd.ExecuteReader();

            int cnt = 0;
            while (DR.Read())
            {
                lblSubjectTitle.Text = DR["Subject_Title"].ToString();
            }

        }
        catch (SqlException se)
        {
            lblMessage.Text = se.Message;
        }

    }
}