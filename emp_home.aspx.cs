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
    public partial class emp_home : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataTable dt;
        string strSql = "";
        DateTime date;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(s);
            if (Session["admin"] == null)
                Response.Redirect("employee_page.aspx");

          // if (!IsPostBack)
            {
                date = DateTime.Now.AddHours(5).AddMinutes(32);
                TextBox1.Text = Convert.ToString(date);
            }
        }

       

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date = Calendar1.SelectedDate;
            TextBox1.Text = Convert.ToString(date);
            date = date.AddDays(1);
            
        }

        protected void ButtonPickup_Click(object sender, EventArgs e)
        {
           /* date = Calendar1.SelectedDate;
            TextBox1.Text = Convert.ToString(date);
            date = date.AddDays(1);
            con.Open();*/
            // strSql = "select skr_no,sname,next_followupdate from follow_up where status='IN PROCESS' and next_followupdate = '" + TextBoxcdate.Text + "'and followupdone='NO'";
            //strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='0' AND om.rescheduled_date<='"+date+"'";

            strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty,om.pickup_date from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='0'";
            cmd = new SqlCommand(strSql, con);
            //cmd.ExecuteNonQuery();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void ButtonLechukehai_Click(object sender, EventArgs e)
        {
           /* date = Calendar1.SelectedDate;
            TextBox1.Text = Convert.ToString(date);
            date = date.AddDays(1);*/
            con.Open();
            // strSql = "select skr_no,sname,next_followupdate from follow_up where status='IN PROCESS' and next_followupdate = '" + TextBoxcdate.Text + "'and followupdone='NO'";
           // strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='1' and om.rescheduled_date <='" + date + "'";

            strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='1'";
            cmd = new SqlCommand(strSql, con);
            //cmd.ExecuteNonQuery();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void ButtonDhobikodieh_Click(object sender, EventArgs e)
        {
            /*date = Calendar1.SelectedDate;
            TextBox1.Text = Convert.ToString(date);
            date = date.AddDays(1);*/
            con.Open();
            // strSql = "select skr_no,sname,next_followupdate from follow_up where status='IN PROCESS' and next_followupdate = '" + TextBoxcdate.Text + "'and followupdone='NO'";
            //strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='2' and om.rescheduled_date <='" + date + "'";

            strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='2'";
            cmd = new SqlCommand(strSql, con);
            //cmd.ExecuteNonQuery();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Buttondhobisemilgya_Click(object sender, EventArgs e)
        {
          /*  date = Calendar1.SelectedDate;
            TextBox1.Text = Convert.ToString(date);
            date = date.AddDays(1);*/
            con.Open();
            // strSql = "select skr_no,sname,next_followupdate from follow_up where status='IN PROCESS' and next_followupdate = '" + TextBoxcdate.Text + "'and followupdone='NO'";
            //strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='3' and om.rescheduled_date <='" + date + "'";

            strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='3'";
            cmd = new SqlCommand(strSql, con);
            //cmd.ExecuteNonQuery();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }

        protected void Buttonorderdelivered_Click(object sender, EventArgs e)
        {
           /* date = Calendar1.SelectedDate;
            TextBox1.Text = Convert.ToString(date);
            date = date.AddDays(1);*/
            con.Open();
            // strSql = "select skr_no,sname,next_followupdate from follow_up where status='IN PROCESS' and next_followupdate = '" + TextBoxcdate.Text + "'and followupdone='NO'";
            //strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='4' and om.rescheduled_date <='" + date + "'";

            strSql = "select um.address_transaction_point,um.name,um.ph_no1,om.order_id,om.bag_id,om.qty from user_master um INNER JOIN order_master om ON um.ph_no1=om.phn_no1 where om.order_status='4'";
            cmd = new SqlCommand(strSql, con);
            //cmd.ExecuteNonQuery();
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
    }
}