using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASP_Gallery.appCode
{
    public partial class AdminSessionPage : SessionPage
    {
        protected new void Page_Load(object sender, EventArgs e)
        {
            getDataFromSession();

            if (!check_connection() && !is_admin)
            {
                Response.Redirect("login.aspx");
            }


        }

    }
}