using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
 /*****************************************************/
    /********************To Get OTP*************/
    /****************************************************/
    protected int GetOTP(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }
    /*****************************************************/
    /********************* Change Pass*******************************/
    
    /****************************************************/
    protected void ChangePassword()
    {
        try
        {

            SqlConnection con = new SqlConnection();
            string conSting = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            con.ConnectionString = conSting;
            con.Open();
            string SqlQuery = "UPDATE Student_Master SET Student_Password=@Student_Password WHERE Student_Mobile=@Student_Mobile AND Student_Email=@Student_Email";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = SqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Student_Password", SqlDbType.VarChar).Value = TxtPassword.Text;
            cmd.Parameters.Add("@Student_Mobile", SqlDbType.VarChar).Value = TxtMobile.Text;
            cmd.Parameters.Add("@Student_Email", SqlDbType.VarChar).Value = TxtEmail.Text;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "Successfully Change Password";
           
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }


    protected void LnkBtnSendOTP_Click(object sender, EventArgs e)
    {
        LblOTPValue.Text = GetOTP(123456, 999999).ToString();
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        ChangePassword();
    }
    protected void BtnReset_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
   
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (TxtOTP.Text == LblOTPValue.Text)
        {
            PnlChange.Visible = true;
        }
        else
        {
            PnlChange.Visible = false;
        }
    
    } 
   
}