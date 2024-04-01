using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class StudentRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillDdlcountry();
        }
    }
    /* Submit recordd*/
    protected void SubmitRecord()
    {
        String Gender;
        try
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();

            FuPhoto.SaveAs(Server.MapPath("Photo/") + FuPhoto.FileName.ToString());
            String Url = "~/Photo/" + FuPhoto.FileName.ToString();

            if (RbtnFemale.Checked == true)
            {
                Gender = "Female";
            }
            else
            {
                Gender = "Male";
            }

            String sqlQuery = "INSERT INTO Student_Master(Student_PRNNO,Student_Fullname,Student_Birthdate,Student_Gender,Student_Password,Student_Address,Country_Name,State_Name,District_Name,Taluka_Name,City_Name,Pincode,Student_Mobile,Student_Email,Student_Class,Student_Year,Student_Semister,Academic_Year,Student_Photo) VALUES (@Student_PRNNO,@Student_Fullname,@Student_Birthdate,@Student_Gender,@Student_Password,@Student_Address,@Country_Name,@State_Name,@District_Name,@Taluka_Name,@City_Name,@Pincode,@Student_Mobile,@Student_Email,@Student_Class,@Student_Year,@Student_Semister,@Academic_Year,@Student_Photo); ";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sqlQuery;
            cmd.Connection = con;
            cmd.Parameters.Add("@Student_PRNNO", SqlDbType.VarChar).Value = TxtPrnNo.Text;
            cmd.Parameters.Add("@Student_Fullname", SqlDbType.VarChar).Value = TxtFullName.Text;
            cmd.Parameters.Add("@Student_Birthdate", SqlDbType.SmallDateTime).Value = TxtBirthdate.Text;
            cmd.Parameters.Add("@student_Gender", SqlDbType.VarChar).Value = Gender;
            cmd.Parameters.Add("@Student_Password", SqlDbType.VarChar).Value = TxtPassword.Text;
            cmd.Parameters.Add("@Student_Address", SqlDbType.VarChar).Value = TxtAddress.Text;
            cmd.Parameters.Add("@Country_Name", SqlDbType.VarChar).Value = DdlCountry.SelectedItem.ToString();
            cmd.Parameters.Add("@State_Name", SqlDbType.VarChar).Value = DdlState.SelectedItem.ToString();
            cmd.Parameters.Add("@District_Name", SqlDbType.VarChar).Value = DdlDistrict.SelectedItem.ToString();
            cmd.Parameters.Add("@Taluka_Name", SqlDbType.VarChar).Value = DdlTaluka.SelectedItem.ToString();
            cmd.Parameters.Add("@City_Name", SqlDbType.VarChar).Value = DdlCity.SelectedItem.ToString();
            cmd.Parameters.Add("@Pincode", SqlDbType.VarChar).Value = TxtPincode.Text;
            cmd.Parameters.Add("@Student_Mobile", SqlDbType.VarChar).Value = TxtMobile.Text;
            cmd.Parameters.Add("@Student_Email", SqlDbType.VarChar).Value = TxtEmail.Text;
            cmd.Parameters.Add("@Student_Class", SqlDbType.VarChar).Value = TxtClass.Text;
            cmd.Parameters.Add("@Student_Year", SqlDbType.VarChar).Value = TxtYear.Text;
            cmd.Parameters.Add("@Student_Semister", SqlDbType.VarChar).Value = TxtSemister.Text;
            cmd.Parameters.Add("@Academic_Year", SqlDbType.VarChar).Value = TxtAcademicYear.Text;
            cmd.Parameters.Add("@Student_Photo", SqlDbType.VarChar).Value = Url;

            cmd.ExecuteNonQuery();

            LblMessage.Text = "One Student Added";
            con.Close();
        }
        catch (SqlException se)
        {
            LblMessage.Text = se.Message;
        }
    }

    protected void ImgbtnCalender_Click(object sender, ImageClickEventArgs e)
    {
        CalBirthdate.Visible = true;
    }
    protected void CalBirthdate_SelectionChanged(object sender, EventArgs e)
    {
        TxtBirthdate.Text = CalBirthdate.SelectedDate.ToShortDateString();
        CalBirthdate.Visible = false;
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SubmitRecord();
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentRegistration.aspx");
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
            DdlCountry.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlCountry.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
            }
            con.Close();
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    /* Fill  ddl State */

    protected void FillDdlState()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM State_Master WHERE Country_id =@Country_id";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            Cmd.Parameters.Add("@Country_id", SqlDbType.Int).Value = DdlCountry.SelectedValue.ToString();
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlState.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlState.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
            }
            con.Close();
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    /* Fill  ddl District */

    protected void FillDdldistrict()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM District_Master WHERE State_id =@State_id";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            Cmd.Parameters.Add("@State_id", SqlDbType.Int).Value = DdlState.SelectedValue.ToString();
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlDistrict.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlDistrict.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
            }
            con.Close();
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    /* Fill  ddl Taluka */

    protected void FillDdltaluka()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM Taluka_Master WHERE District_id =@District_id";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            Cmd.Parameters.Add("@District_id", SqlDbType.Int).Value = DdlDistrict.SelectedValue.ToString();
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlTaluka.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlTaluka.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
            }
            con.Close();
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }

    /* Fill  ddl City */

    protected void FillDdlcity()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM City_Master WHERE Taluka_id =@Taluka_id";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            Cmd.Parameters.Add("@Taluka_id", SqlDbType.Int).Value = DdlTaluka.SelectedValue.ToString();
            SqlDataReader Dr = Cmd.ExecuteReader();
            DdlCity.Items.Add(new ListItem("--SELECT--", "0"));
            while (Dr.Read())
            {
                DdlCity.Items.Add(new ListItem(Dr[1].ToString(), Dr[0].ToString()));
            }
            con.Close();
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    protected void DdlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdlState();
    }
    protected void DdlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdldistrict();
    }
    protected void DdlDistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdltaluka();
    }
    protected void DdlTaluka_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDdlcity();
    }
    /* Fill  ddl City */

    protected void getPincode()
    {
        try
        {
            SqlConnection con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.ConnectionString = ConString;
            con.Open();
            String SqlQuery = "SELECT*FROM City_Master WHERE City_id =@City_id";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
            Cmd.Parameters.Add("@City_id", SqlDbType.Int).Value = DdlCity.SelectedValue.ToString();
            SqlDataReader Dr = Cmd.ExecuteReader();
            while (Dr.Read())
            {
                TxtPincode.Text = Dr["City_Pincode"].ToString();
            }
            con.Close();
        }
        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
    protected void DdlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        getPincode();
    }
}

