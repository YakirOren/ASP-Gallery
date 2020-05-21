using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP_Gallery.appCode;
using System.Data;

namespace ASP_Gallery
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        protected void login_button_Click(object sender, EventArgs e)
        {

            //DatabaseAccess.shouldLogUser(username.Text, password.Text);
            DataTable dt = DatabaseAccess.getUser(username.Text, password.Text);

            if (dt.Rows.Count != 0)
            {

                Session["admin"] = dt.Rows[0]["ADMIN"];
                Session["username"] = username.Text;
                Session["password"] = password.Text;
                Session["ID"] = dt.Rows[0]["ID"]; ;


                Response.Redirect("gallery.aspx");
            }
            else
            {
                username_available.Text = "incorrect username or password.";
            }



        }
    }
}