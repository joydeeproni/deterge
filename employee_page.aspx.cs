using System;
using System.IO;
using System.Net;
using System.Collections.Generic;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;


namespace template_test
{
    public partial class employee_page : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        string strSql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(s);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from admin_master where ph_no1 =@cust_ph1 and pwd=@cust_password", con);
            cmd.Parameters.AddWithValue("@cust_ph1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@cust_password", TextBox2.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                // Session["Username"] = TextBoxph_no1.Text;
                Session["admin"] = TextBox1.Text;
                // Response.Redirect("user_page.aspx?ph=" + TextBoxph_no1.Text);

                Response.Redirect("emp_home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Number or Password')</script>");
            }
            con.Close();

        }
    }
}