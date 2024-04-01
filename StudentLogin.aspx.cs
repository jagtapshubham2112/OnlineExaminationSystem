using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /* Check student login */

    protected void CheckStudentLogin()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            String sqlQuery = "SELECT * FROM Student_Master WHERE Student_PRNNO=@Student_PRNNO AND Student_Password=@Student_Password";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Student_PRNNO", SqlDbType.VarChar).Value = TxtPrnNo.Text;
            cmd.Parameters.Add("@Student_Password", SqlDbType.VarChar).Value = TxtPassword.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read() && dr.HasRows)
            {
                Session["Student_FullName"] = dr["Student_FullName"].ToString();
                Session["Student_PRN"] = dr["Student_PRNNO"].ToString();
                Session["Student_Email"] = dr["Student_Email"].ToString();
                Session["Student_id"] = dr["Student_id"].ToString();
                Session["Student_PhotoPath"] = dr["Student_Photo"].ToString();
                Response.Redirect("StartExamination.aspx");
            }
            else
            {
                LblMessage.Text = "Invalid Student PRN No. AND/Or Password";
            }
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        CheckStudentLogin();
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentLogin.aspx");
    }
}
