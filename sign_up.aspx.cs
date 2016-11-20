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
    public partial class sign_up : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        string strSql = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(s);
        }

        protected void proceed_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("select * from user_master where ph_no1=@cust_ph1", con);
            cmd.Parameters.AddWithValue("@cust_ph1", TextBoxphn_no.Text);
            SqlDataAdapter daa = new SqlDataAdapter(cmd);
            DataTable dtt = new DataTable();
            daa.Fill(dtt);
           // Session["cust_ph1"] = TextBoxph1.Text;
           // Session["dop"] = TextBoxdop.Text;

            if (dtt.Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Number Already Registered!!!')</script>");
                con.Close();
            }
            else
            {
                con.Close();
                TextBoxmcallveri.Visible = true;
                Labelveri_msg.Visible = true;
                Labelplus.Visible = true;
                Labelpwd.Visible = true;
                TextBoxpwd.Visible = true;
                Labelcnf_pwd.Visible = true;
                TextBoxcpwd.Visible = true;
                signup.Visible = true;
                proceed.Visible = false;
                string url = "http://api.mOTP.in/v1/0004-0e8bd442-563e09d2-d1da-181e98cc/+91" + TextBoxphn_no.Text.ToString();
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
        protected void signup_Click(object sender, EventArgs e)
        {
            if (Session["verificationcode"].ToString().Trim() == TextBoxmcallveri.Text.ToString().Trim())
            {
                /*  string gender;
                  if (RadioButtonList1.SelectedItem.ToString() == "MALE")
                      gender = "M";
                  else
                      gender = "F";*/
                con.Open();
                /*================
                string cnt;
                SqlDataAdapter sda = new SqlDataAdapter("Select * from user_master", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                int i = dt.Rows.Count;
                if ((i + 1) < 10)
                    cnt = "000" + Convert.ToString(i + 1);
                else if ((i + 1) >= 10 && (i + 1) < 100)
                    cnt = "00" + Convert.ToString(i + 1);
                else if ((i + 1) >= 100 && (i + 1) < 1000)
                    cnt = "0" + Convert.ToString(i + 1);
                else
                    cnt = Convert.ToString(i + 1);
                string bagid = "BG" + cnt;
                //string utype = "3";
                 ===================================1stfeb*/


                strSql = "insert into user_master values('" +TextBoxphn_no.Text.ToString() + "','" + "" + "','" + DropDownListTP.SelectedItem.ToString() + "','" + "" + "','" + "20" + "','" + TextBoxpwd.Text.ToString().Trim() + "','" + "" + "','" + TextBoxname.Text.ToString().Trim().ToUpper() + "','" + "" + "','" + "" + "','" + '1' + "','" + DateTime.Now.AddHours(5).AddMinutes(32) + "')";
                cmd = new SqlCommand(strSql, con);
                cmd.ExecuteNonQuery();
                //MessageBox.Show("Record Saved.", "Saved - Info");
                //Response.Write("Record Saved.......");

                con.Close();
                /* TextBox1.Text = "";
                 TextBox2.Text = "";
                 TextBox3.Text = "";*/
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Sign-Up Successful!!! ')</script>");
                Session.Abandon();
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Verification Code!!! ')</script>");

            }
        }
    }
}