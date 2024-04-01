using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showNotice();
        }
    }
    /*************************************/
    /********VIEW GALLERY*******/
    /*************************************/

    protected void showNotice()
    {
        try
        {
            SqlConnection Con = new SqlConnection();
            String ConString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            Con.ConnectionString = ConString;
            Con.Open();
            String SqlQuery = "SELECT * FROM Notice_Master;";
            SqlCommand Cmd = new SqlCommand();
            Cmd.Connection = Con;
            Cmd.CommandText = SqlQuery;
            SqlDataReader dr = Cmd.ExecuteReader();

            DtLstNotice.DataSource = dr;
            DtLstNotice.DataBind();
            Con.Close();
        }

        catch (SqlException Se)
        {
            LblMessage.Text = Se.Message;
        }
    }
}