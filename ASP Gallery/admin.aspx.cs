using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Gallery
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"] != null && bool.Parse(Session["admin"].ToString())) //check if the user is admin
            {
                hello_msg.Text = "Hello, " + Session["username"].ToString() + ".";

            }
            else
            {
                Response.Redirect("gallery.aspx");

            } 
            

        }
    }
}