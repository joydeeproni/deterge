using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace template_test
{
    public partial class order_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cust_ph1"] == null)
                Response.Redirect("Default.aspx");
            else
                Session.Abandon();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}