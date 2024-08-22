using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web.Security;
using System.Xml.Linq;
using System.Drawing;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.IO;

public partial class frmDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Captcha As A Graphical Password";
        lblmsg.Visible = false;
        if (Session["username"] == "")
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            string nm1 = Convert.ToString(Session["username"]);
            //Read Image File into Image object.
            Image img = Image.FromFile("E:\\ImageAsCaptcha\\UploadImg\\" + nm1 + ".jpg");

            //ImageConverter Class convert Image object to Byte array.
            byte[] bytes = (byte[])(new ImageConverter()).ConvertTo(img, typeof(byte[]));
            ImgUpload.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(bytes, 0, bytes.Length);
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        xpoint.Text = Request.Form[hfName.UniqueID];
        ypoint.Text = Request.Form[hfName1.UniqueID];

        decimal xx =Convert.ToInt64(xpoint.Text);
        decimal yy = Convert.ToInt64(ypoint.Text);
        int xp = Convert.ToInt32(Math.Ceiling(xx));

        int yp = Convert.ToInt32(Math.Ceiling(yy));
        
       
        lblmsg.Text = "";
        //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\ImageAsCaptcha\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");
        //con.Open();

        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\ImageAsCaptcha\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        //string sql = "Delete From [tblCordinates] Where usernm='new1'";
        //string sql = "Delete From [tblImg] ";
        //SqlCommand cmd11 = new SqlCommand(sql, con);
        //cmd11.ExecuteNonQuery();



        string userid = txtusernm.Text;
        string password = txtpasswd.Text;
        if (txtusernm.Text == "")
        {
            lblmsg.Text = "Fill Username";
            lblmsg.Visible = true;
        }

        else if (txtpasswd.Text == "")
        {
            lblmsg.Text = "Fill Password";
            lblmsg.Visible = true;
        }
       
        else
        {
            
             if (txtusernm.Text != "")
            {

                SqlCommand cmd = new SqlCommand("select userid,passwd from tblRegister where usernm='" + txtusernm.Text + "'and passwd='" + txtpasswd.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                   
                    string nm1 = Convert.ToString(Session["username"]);
                    lblmsg.Text = nm1;
                    SqlCommand cmd11 = new SqlCommand("select xcord,ycord from tblCordinates where usernm='" + txtusernm.Text + "'and xcord='" + txtxpoint.Text + "'and ycord='" + txtypoint.Text + "'", con);
                    SqlDataAdapter da11 = new SqlDataAdapter(cmd11);
                    DataTable dt11 = new DataTable();
                    da11.Fill(dt11);
                    if (dt11.Rows.Count > 0)
                    {
                        Response.Redirect("frmSuccess.aspx");
                    }
                    else
                    {
                        lblmsg.Text = "Invalid Login please check Quied Point";
                        lblmsg.Visible = true;
                    }
                   // Session["username"] = txtusernm.Text;
                   // lblmsg.Text = Convert.ToString(Session["username"]);
                    //lblmsg.Visible = true;

                   

                }
                else
                {
                    lblmsg.Text = "Invalid Login please check username and password";
                    lblmsg.Visible = true;

                }
                con.Close();


            }
            else
            {
                lblmsg.Text = "Invalid Login please check username and password";
                lblmsg.Visible = true;

            }
            con.Close();

        }
    }
}
