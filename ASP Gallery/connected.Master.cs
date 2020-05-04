﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Gallery
{
    public partial class connected : System.Web.UI.MasterPage
    {
        public bool is_connected = false;
        public bool is_admin = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                is_admin = bool.Parse(Session["admin"].ToString());
                username_button.Text = Session["username"].ToString();
                is_connected = true;


            }
            catch (Exception)
            {
                is_connected = false;
            }


        }

        protected void logout_Click(object sender, EventArgs e)
        {


            if (checkbox.Checked)
            {
                Session.Abandon();
                Response.Redirect("login.aspx");
            }
            else
            {
                checkbox.Text = "click on the box";
            }

        }
    }
}