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
    public partial class Default : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        string strSql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(s);
            if(!IsPostBack)
            {

            }

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
         //   Label2.Text = Calendar1.SelectedDate.ToLongDateString();
         //   Calendar1.Visible = false;
        }

      /*  protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
          /* *******************************************************************************************************************************
           DateTime pickupdate, presentday, maxbday;
            presentday = DateTime.Now.AddHours(5).AddMinutes(32);
            pickupdate = Convert.ToDateTime(TextBoxdop.Text);
            pickupdate = pickupdate.AddHours(20);
           // dropdate = pickupdate.AddDays(4);
            maxbday = presentday.AddDays(10);
            if ((pickupdate >= presentday) && pickupdate <= maxbday)
            { 
            con.Open();
            cmd = new SqlCommand("select * from user_master where ph_no1=@cust_ph1", con);
            cmd.Parameters.AddWithValue("@cust_ph1", TextBoxph1.Text);
            SqlDataAdapter daa = new SqlDataAdapter(cmd);
            DataTable dtt = new DataTable();
            daa.Fill(dtt);
             Session["cust_ph1"] = TextBoxph1.Text;
             Session["dop"] = TextBoxdop.Text;

             if (dtt.Rows.Count > 0)
             {
                 // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Number Already Registered!!!')</script>");
                 con.Close();
                 Response.Redirect("existing_user.aspx");

             }
             else
             {


                 con.Close();

                 Response.Redirect("new_user.aspx");
             }
             }
            else if (pickupdate > maxbday)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('You are too early to book the laundry for the Selected Date')</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('BOOKINGS ARE CLOSED FOR THIS DATE.')</script>");
            }
           -------------------------------------------------------------------------------------------------------------------------------------------- */
            Response.Redirect("Overflow.aspx");
        }
    }
}