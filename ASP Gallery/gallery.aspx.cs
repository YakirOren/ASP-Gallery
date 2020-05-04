using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace ASP_Gallery
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public bool is_connected = false;
        protected void Page_Load(object sender, EventArgs e)
        {

            is_connected = Session["username"] != null;


        }
    }
}