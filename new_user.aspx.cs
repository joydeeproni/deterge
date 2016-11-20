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
    public partial class new_user : System.Web.UI.Page
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
            if (!IsPostBack)
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
       

        protected void Button1_Click(object sender, EventArgs e)
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

              //  string user_bagid;
                strSql = "insert into user_master values('" + Session["cust_ph1"].ToString().Trim() + "','" + "" + "','" + DropDownListTP.SelectedItem.ToString() + "','" + "" + "','" + "20" + "','" + TextBoxpwd.Text.ToString().Trim() + "','" + "" + "','" + TextBoxname.Text.ToString().Trim().ToUpper() + "','" + "" + "','" + "" + "','" + '1' + "','" + DateTime.Now.AddHours(5).AddMinutes(32) + "')";
                cmd = new SqlCommand(strSql, con);
                cmd.ExecuteNonQuery();
                con.Close();
                //MessageBox.Show("Record Saved.", "Saved - Info");
                //Response.Write("Record Saved.......");
               /* strSql = "select user_no from user_master where ph_no1='" + Session["cust_ph1"].ToString().Trim() + "'";
                cmd = new SqlCommand(strSql, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    user_bagid = "BG " + reader["user_no"].ToString();

                    reader.Close();
                    //con.Close();




                    cmd = new SqlCommand("UPDATE user_master SET bag_id = @bagid where  ph_no1 =@cust_ph1", con);
                    cmd.Parameters.AddWithValue("@bagid", user_bagid);
                    cmd.Parameters.AddWithValue("@cust_ph1", Session["cust_ph1"].ToString().Trim());
                    // cmd = new SqlCommand(strSql, con);
                    cmd.ExecuteNonQuery();
                    //MessageBox.Show("Record Saved.", "Saved - Info");
                    //Response.Write("Record Saved.......");
                 /*   strSql = "insert into bag_master values('" +user_bagid+ "','" + "" + "','" + 1 + "')";
                    cmd = new SqlCommand(strSql, con);
                    cmd.ExecuteNonQuery();

                    con.Close();*/
                    /* TextBox1.Text = "";
                     TextBox2.Text = "";
                     TextBox3.Text = "";*/
                
                Response.Redirect("existing_user.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Verification Code!!! ')</script>");

            }
        }
    }
}