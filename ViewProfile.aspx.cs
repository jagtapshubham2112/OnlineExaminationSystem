using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Student_id"] == null)
        {
            Response.Redirect("StudentLogin.aspx");
        }
        if (!IsPostBack)
        {
            FillDdlcity();
            ViewRecord();
        }
    }
    /* To View the Record */

    protected void ViewRecord()
    {
        try 
        {
            SqlConnection con = new SqlConnection();
            String conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con.ConnectionString = conString;
            con.Open();
            String Url = "";
            String SqlQuerry = "SELECT*FROM Student_Master WHERE Student_id=@Student_id";
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = SqlQuerry;
            cmd.Parameters.Add("@Student_id", SqlDbType.Int).Value = Session["Student_id"].ToString();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TxtFullName.Text = dr["Student_Fullname"].ToString();
                TxtAddress.Text = dr["Student_Address"].ToString();
                ListItem listitem = DdlCity.Items.FindByText(dr["City_Name"].ToString());
                DdlCity.ClearSelection();
                listitem.Selected = true;
                listitem = null;
                TxtPincode.Text = dr["Pincode"].ToString();
                TxtMobile.Text = dr["Student_Mobile"].ToString();
                TxtEmail.Text = dr["Student_Email"].ToString();
                TxtBirthdate.Text = dr["Student_Birthdate"].ToString();
                Url = dr ["Student_Photo"].ToString();
                LblPhoto.Text = Url;
                ImgStudentPhoto.ImageUrl = Url;
                }
            
        }
            catch (SqlException se)
        {
         LblMessage.Text = se.Message;
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
            String SqlQuery = "SELECT*FROM City_Master";
            SqlCommand Cmd = new SqlCommand();
            Cmd.CommandText = SqlQuery;
            Cmd.Connection = con;
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
    /* Get Pincode  ddl City */

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
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewProfile.aspx");
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
}


