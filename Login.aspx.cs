using System;
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
using System.Data.OleDb;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Captcha As A Graphical Password";
        Session["username"] = "";

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\ImageAsCaptcha\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        //------- to delete only one record---------
        //string sql = "Delete From [tblCordinates] Where usernm='new1'";
       
        //------- to delete all records---------
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
        else if (rbChoice.Text == "")
        {
            lblmsg.Text = "Select Option";
            lblmsg.Visible = true;
        }
        else
        {
            if ((txtusernm.Text == "admin") && (rbChoice.Text == "Admin"))
            {

                SqlCommand cmd1 = new SqlCommand("select userid,passwd from tblRegister where usernm='" + txtusernm.Text + "'and passwd='" + txtpasswd.Text + "'", con);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);

                if (dt1.Rows.Count > 0)
                {
                    Session["username"] = txtusernm.Text;
                    Response.Redirect("frmAdmin.aspx");
                }

            }
            else if (txtusernm.Text != "admin")
            {

                SqlCommand cmd = new SqlCommand("select userid,passwd from tblRegister where usernm='" + txtusernm.Text + "'and passwd='" + txtpasswd.Text + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {


                    Session["username"] = txtusernm.Text;
                    lblmsg.Text = Convert.ToString(Session["username"]);
                    //lblmsg.Visible = true;

                    Response.Redirect("frmSelectOption.aspx");

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