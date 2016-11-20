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
    public partial class existing_user : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        string strSql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(s);
            if (Session["cust_ph1"] == null)
                Response.Redirect("Default.aspx");

        }

        protected void Buttonconfirm_order_Click(object sender, EventArgs e)
        {
            if(TextBoxpromo.Text=="")
            {
                TextBoxpromo.Text = "N.A";
            }
            else
            {
                con.Open();
                cmd = new SqlCommand("select * from promo_master where promo_id=@promo", con);
                cmd.Parameters.AddWithValue("@promo", TextBoxpromo.Text);
                SqlDataAdapter daa = new SqlDataAdapter(cmd);
                DataTable dtt = new DataTable();
                daa.Fill(dtt);
                if (dtt.Rows.Count == 0)
                {
                     ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Promo-Code!!!')</script>");
                    
                   
                }
                con.Close();
           
            }
            
            con.Open();

            cmd = new SqlCommand("select * from user_master where ph_no1=@cust_ph1 and pwd=@cust_password", con);
            cmd.Parameters.AddWithValue("@cust_ph1", Session["cust_ph1"].ToString().Trim());
            cmd.Parameters.AddWithValue("@cust_password", TextBoxpwd.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DateTime del_date = Convert.ToDateTime(Session["dop"]);
            DateTime dop_date = Convert.ToDateTime(Session["dop"]);
            del_date=del_date.AddDays(2);
            if (dt.Rows.Count > 0)
            {
                string user_bagid;
                strSql = "select bag_id from user_master where ph_no1='" + Session["cust_ph1"].ToString().Trim() + "'";
                cmd = new SqlCommand(strSql, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    user_bagid = reader["bag_id"].ToString();

                    reader.Close();

                    // Session["Username"] = TextBoxph_no1.Text;
                    //Session["cust_ph1"] = TextBoxph_no1.Text;
                    // Response.Redirect("user_page.aspx?ph=" + TextBoxph_no1.Text);
                    int qty = Convert.ToInt32(DropDownqtyclothes.SelectedItem.ToString());
                    strSql = "insert into order_master values('" + qty + "','" + 0 + "','" + 0 + "','" + dop_date + "','" + del_date + "','" + DateTime.Now.AddHours(5).AddMinutes(32) + "','" + 0.00 + "','" + 0.00 + "','" + 0.00 + "','" + 0 + "','" + Session["cust_ph1"].ToString().Trim() + "','" + 0 + "','" + 0 + "','" + TextBoxpromo.Text.ToString().ToUpper() + "','" + user_bagid + "','" + del_date + "','" + 0.00 + "')";
                    cmd = new SqlCommand(strSql, con);
                    cmd.ExecuteNonQuery();

                    Response.Redirect("order_details.aspx");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Incorrect Password!!!')</script>");
            }
            con.Close();
        }
        protected void LinkButtonfgtpwd_Click(object sender, EventArgs e)
        {
            string url = "http://api.mOTP.in/v1/0004-0e8bd442-563e09d2-d1da-181e98cc/+91" + Session["cust_ph1"].ToString().Trim();
            string request = url;
            string success = MakeWebRequestGET(request);
            // Label1.Text = "the sid generated" + success;
            // Label2.Text = "the first index of sid is" + success.IndexOf("sid").ToString();
            int indexsid = success.IndexOf("sid");
            char c = '"';
            // Label3.Text = "the last index of sid is" + success.LastIndexOf(c).ToString();
            int lindex = success.LastIndexOf(c);
            success = success.Substring(indexsid, (lindex - indexsid));
            //Label4.Text = success;
            string sessionid = success; //success.Substring(32, 26);
            // string b="\ -d";
            // string url2 = c+"curl -XPOST https://api.motp.in/v1/OTP/0223-8872-32883/sid52634a850086d6.31056793"+c+"private=0009-5263457d-fe87-6adf53fb"+c+c;
            //string url2 = "curl -XPOST https://api.mOTP.in/v1/OTP/0004-0e8bd442-563c126a-e29c-6e75141c/" + sessionid + " \\ -d " + c + "private=0009-0e8bd442-563c126a-e2a0-0f897d2c" + c;
            /*  string url2 = "https://api.mOTP.in/v1/OTP/0004-0e8bd442-563c126a-e29c-6e75141c/" + sessionid +" \\ -d"+c+"private=0009-0e8bd442-563c126a-e2a0-0f897d2c"+c;
        
              Label5.Text = url2;
              string request2 = url2;
              string success2 = MakeWebRequestGET2(request2);
              Label6.Text = success2;*/
            //**************************
            string URI = "https://api.mOTP.in/v1/OTP/0004-0e8bd442-563e09d2-d1da-181e98cc/" + sessionid;
            string myParameters = "private=0009-0e8bd442-563e09d2-d1dd-1fa4fb9f";

            // Label5.Text = URI + myParameters;

            using (WebClient wc = new WebClient())
            {
                wc.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";
                string HtmlResult = wc.UploadString(URI, myParameters);
                //  Label6.Text = HtmlResult;

                int start;
                start = HtmlResult.LastIndexOf(c) - 10;
                Session["verificationcode"] = HtmlResult.Substring(start, 10);
                // Label7.Text = verificationcode;
            }
            Buttonconfirm_order.Visible = false;
            LinkButtonfgtpwd.Visible = false;
            Labelpwd.Visible = false;
            TextBoxpwd.Visible = false;
            Label1.Visible = true;
            Labelplus.Visible = true;
            Labelname0.Visible = true;
            Labelname1.Visible = true;
            TextBoxmcallveri.Visible = true;
            TextBoxFpwd.Visible = true;
            TextBoxcFpwd.Visible = true;
            Buttonforgotpassword.Visible = true;

        }

        protected void Buttonforgotpassword_Click(object sender, EventArgs e)
        {
            if (Session["verificationcode"].ToString().Trim() == TextBoxmcallveri.Text.ToString().Trim())
            {
                con.Open();
                cmd = new SqlCommand("UPDATE user_master SET pwd = @password where  ph_no1 =@cust_ph1", con);
                cmd.Parameters.AddWithValue("@password", TextBoxFpwd.Text.Trim());
                cmd.Parameters.AddWithValue("@cust_ph1", Session["cust_ph1"].ToString().Trim());
                // cmd = new SqlCommand(strSql, con);
                cmd.ExecuteNonQuery();
                //MessageBox.Show("Record Saved.", "Saved - Info");
                //Response.Write("Record Saved.......");

                con.Close();
                /* TextBox1.Text = "";
                 TextBox2.Text = "";
                 TextBox3.Text = "";*/
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('NEW PASSWORD CREATED SUCCESSFULLY!!! ')</script>");
                Buttonconfirm_order.Visible = true;
                LinkButtonfgtpwd.Visible = true;
                Labelpwd.Visible = true;
                TextBoxpwd.Visible = true;
                Label1.Visible = false;
                Labelplus.Visible = false;
                Labelname0.Visible = false;
                Labelname1.Visible = false;
                TextBoxmcallveri.Visible = false;
                TextBoxFpwd.Visible = false;
                TextBoxcFpwd.Visible = false;
                Buttonforgotpassword.Visible = false;
            }

        }
        public string MakeWebRequestGET(string url)  //url is http api 
        {
            string result = "";
            try
            {
                // Label6.Text = "this is try block";
                WebRequest WReq = WebRequest.Create(url);
                WebResponse wResp = WReq.GetResponse();
                StreamReader sr = new StreamReader(wResp.GetResponseStream());
                result = sr.ReadToEnd();
                sr.Close();
            }
            catch (Exception e)
            {
                // Label6.Text = "this is an exception";
            }
            finally
            {
                // Label6.Text = "this is finally";
            }
            //Label6.Text = "returning result";
            return result; //result gives you message id  
        }
    }
}