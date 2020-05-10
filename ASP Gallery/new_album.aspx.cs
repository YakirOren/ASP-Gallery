using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP_Gallery.appCode;

namespace ASP_Gallery
{
    public partial class WebForm8 : SessionPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_button_Click(object sender, EventArgs e)
        {
            if (album_name.Text == "")
            {
                StatusLabel.Text = "Album name cant be empty";
            }
            else if (DatabaseAccess.doesAlbumExists(album_name.Text, int.Parse(Session["ID"].ToString()))) // check if album name exists already
            {
                StatusLabel.Text = "Album name exists already";
            }
            else
            {
                DatabaseAccess.createAlbum(album_name.Text, int.Parse(Session["ID"].ToString()));
                Response.Redirect("upload.aspx");
            }

        }
    }
}