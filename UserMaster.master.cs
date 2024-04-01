using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Student_id"] != null)
            {
                lblWelcome.Text = "WELCOME" + Session["Student_FullName"].ToString();

                LnkBtnLogout.Enabled = true;
                LnkBtnLogin.Enabled = false;
                LnkBtnNew.Enabled = false;
                ImgProfile.ImageUrl = Session["Student_PhotoPath"].ToString();

            }
            else
            {
                lblWelcome.Text = "Welcome Guest";
                LnkBtnLogout.Enabled = false;
                LnkBtnLogin.Enabled = true;
                LnkBtnNew.Enabled = true;
                ImgProfile.ImageUrl = "Images/Profile.png";
            }
        }
    }
    protected void LnkBtnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Home.aspx");
        }

}
