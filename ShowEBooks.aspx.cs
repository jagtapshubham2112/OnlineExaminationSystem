using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class ShowEBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/EBooks/"));
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            GridView1.DataSource = files;
            GridView1.DataBind();      
           // viewBook(sender, e);
        }
    }
    protected void viewBook(object sender, EventArgs e)
    {
        string embed = "<object data=\"{0}\" type=\"application/pdf\" width=\"910px\" height=\"500px\">";
        embed += "If you are unable to view file, you can download from <a href = \"{0}\">www.Ebooks.com/Ebook.pdf</a>";
        embed += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
        embed += "</object>";

        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        LblEbooks.Text = Path.GetFileName(filePath);
        ltPdfEmbed.Text = string.Format(embed, ResolveUrl("~/EBooks/"+Path.GetFileName(filePath)));
    }
   
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
   

   
}