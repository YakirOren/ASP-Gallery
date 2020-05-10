using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP_Gallery.appCode;
using System.Text.RegularExpressions;
using System.Net.Http;
using System.Net;
using Newtonsoft.Json.Linq;

namespace ASP_Gallery
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.username_available.Text = "";
            //this.email_available.Text = "";
            this.email.CssClass = "input";
            this.username.CssClass = "input";
        }

        protected void username_TextChanged(object sender, EventArgs e)
        {
            validate_username();

        }

        protected void email_TextChanged(object sender, EventArgs e)
        {
            //validate_email();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (email.Text == "")
            {
                this.email_available.Text = "This email is not valid";
                this.email.CssClass = "input is-danger";
            }

            if (validate_username() && validate_email() && validate_password()) // if the username is valid continue
            {
                DatabaseAccess.createUser(username.Text, password.Text, false, email.Text);
                Response.Redirect("login.aspx");
            }

        }

        private void change_user_css(string text, bool danger)
        {
            this.username.CssClass = danger ? "input is-danger" : "input is-success";
            this.username_available.Text = text;
            this.username_available.CssClass = danger ? "help is-danger" : "help is-success";
        }

        private bool validate_username()
        {
            bool exist = DatabaseAccess.doesUserExistsByName(username.Text);

            if (username.Text == "")
            {
                change_user_css("this username is not valid", true);
            }
            else if(exist)
            {
                change_user_css("This username is not available",true);
            }

            else
            {
                change_user_css("This username is available", false);
            }
            return !exist;

        }

        private bool validate_email()
        {
            var r = new Regex(@"^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$");
            return !String.IsNullOrEmpty(email.Text) && r.IsMatch(email.Text);
        }

        private bool validate_password()
        {
            return !String.IsNullOrEmpty(password.Text);
        }


        protected void password_TextChanged(object sender, EventArgs e)
        {
            validate_password();
            
        }

        

    }
}