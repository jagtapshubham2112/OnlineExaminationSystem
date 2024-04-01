using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PracticeSubjects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
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

           
            {
                Response.Redirect("PracticeExamination.aspx");
            }
        }

    }
  
}