using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP_Gallery.appCode;

namespace ASP_Gallery
{
    public partial class WebForm9 : AdminSessionPage
    {
        protected new void Page_Load(object sender, EventArgs e)
        {

            getDataFromSession();

            if (!check_connection() && !is_admin)
            {
                Response.Redirect("login.aspx");
            }
            GridView1.DataSource = DatabaseAccess.getAllAlbums();
            GridView1.DataBind();


        }
        protected void DropDownTableList_SelectedIndexChanged(object sender, EventArgs e)
        {

            DropDownTableList.Text = DropDownTableList.SelectedValue;
            int val = int.Parse(DropDownTableList.SelectedItem.Value);

            if (val == 1)
            {
                GridView1.DataSource = DatabaseAccess.getAllAlbums();
            }
            else if (val == 2)
            {
                GridView1.DataSource = DatabaseAccess.getAllUsers();
            }
            else if (val == 3)
            {
                GridView1.DataSource = DatabaseAccess.getAllPictures();
            }
            else if (val == 4)
            {
                GridView1.DataSource = DatabaseAccess.getAllTags();
            }
            GridView1.DataBind();
        }


    }
}