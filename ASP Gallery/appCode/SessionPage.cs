using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP_Gallery.appCode
{
    public partial class SessionPage : System.Web.UI.Page
    {
        public bool is_connected = false;
        public bool is_admin = false;
        public string username = "";

        protected void getDataFromSession()
        {
            if (HttpContext.Current.Session["username"] != null)
            {
                username = HttpContext.Current.Session["username"].ToString();
                is_admin = HttpContext.Current.Session["admin"] != null;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (check_connection())
            {
                getDataFromSession();
            }


        }

        protected bool check_connection()
        {
            is_connected = HttpContext.Current.Session["username"] != null;

            return is_connected;
        }


    }
}