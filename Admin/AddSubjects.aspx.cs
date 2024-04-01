using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_AddSubjects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /* Submit Subject */

    protected void SubmitRecord()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();
            FuSubjectPhoto.SaveAs(Server.MapPath("~/Images") + FuSubjectPhoto.FileName.ToString());
            String Url = "~/Images/" + FuSubjectPhoto.FileName.ToString();

            String sqlQuery = "INSERT INTO Subject_Master(Subject_Name,Subject_Type,Subject_Title,Subject_Marks,Course_id,Semister_id,Subject_Photo) VALUES (@Subject_Name,@Subject_Type,@Subject_Title,@Subject_Marks,@Course_id,@Semister_id,@Subject_Photo); ";

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Subject_Name", SqlDbType.VarChar).Value = TxtSubjectName.Text;
            cmd.Parameters.Add("@Subject_Type", SqlDbType.VarChar).Value = TxtSubjectType.Text;
            cmd.Parameters.Add("@Subject_Title", SqlDbType.VarChar).Value = TxtSubjectTitle.Text;
            cmd.Parameters.Add("@Subject_Marks", SqlDbType.VarChar).Value = TxtSubjectMarks.Text;
            cmd.Parameters.Add("@Course_id", SqlDbType.Int).Value = DdlCourseID.SelectedValue;
            cmd.Parameters.Add("@Semister_id", SqlDbType.Int).Value = DdlSemister.SelectedValue;
            cmd.Parameters.Add("@Subject_Photo", SqlDbType.VarChar).Value = Url;
            cmd.ExecuteNonQuery();
            LblMessage.Text = "Subject Succesfully Added";
            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SubmitRecord();
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddSubjects.aspx");
    }
}
