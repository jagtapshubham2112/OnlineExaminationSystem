using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Admin_id"] != null)
            {
                lblWelcome.Text = "WELCOME" + Session["Admin_FullName"].ToString();

                LnkBtnLogout.Enabled = true;
                LnkBtnLogin.Enabled = false;
                LnkBtnNew.Enabled = false;
                NavigationMenu.Visible = true;

            }
            else
            {
               
                lblWelcome.Text = "Welcome Guest";
                LnkBtnLogout.Enabled = false;
                LnkBtnLogin.Enabled = true;
                LnkBtnNew.Enabled = true;
                NavigationMenu.Visible = false;
            }
        }
    }
   
    protected void LnkBtnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("~/Home.aspx");
    }
}
