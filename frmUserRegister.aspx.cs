using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text.RegularExpressions;



using System.Drawing;
using System.Collections.Generic;
using System.IO;

public partial class frmUserRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Captcha As A Graphical Password";
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        string str;
        SqlCommand com;
        string ids = "1001";
        string email = txtMail.Text;
        Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        Match match = regex.Match(email);

        string fstrname = txtName.Text;
        Regex regfname = new Regex(@"^\D+$");
        Match fmatch = regfname.Match(fstrname);


        string sstrname = txtsurname.Text;
        Regex regsname = new Regex(@"^\D+$");
        Match smatch = regsname.Match(sstrname);


        
        //SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\ImageAsCaptcha\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

        
        //con.Open();
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\ImageAsCaptcha\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        
        if (txtName.Text == "")
        {
            lblmsg.Text = "Fill Name";
            lblmsg.Visible = true;
        }

        else if (!(fmatch.Success))
        {    
            lblmsg.Text = fstrname + " is incorrect";
            lblmsg.Visible = true;
        }
        else if (txtsurname.Text == "")
        {
            lblmsg.Text = "Fill Surname ";
            lblmsg.Visible = true;
        }
        else if (!(smatch.Success))
        {    
            lblmsg.Text = sstrname + " is incorrect";
            lblmsg.Visible = true;
        }
        else if (rbGender.Text =="")
        {
            lblmsg.Text = "Select Gender";
            lblmsg.Visible = true;
        }
        else if (txtMail .Text  == "")
        {
            lblmsg.Text = "Incomplete Mail ID";
            lblmsg.Visible = true;
        }
        else if (txtmobno.Text == "")
        {
            lblmsg.Text = "Incomplete Mobile No";
            lblmsg.Visible = true;
        }
        else if (txtmobno.Text.Length < 10)
        {
            lblmsg.Text = " Invalid Mobile No.";
            lblmsg.Visible = true;
        }
        else if (txtAddress .Text == "")
        {
            lblmsg.Text = "Incomplete Address";
            lblmsg.Visible = true;
        } 
        
        else if (txtMail .Text  == "")
        {

            lblmsg.Text = "Incomplete Email ID";
            lblmsg.Visible = true;
        }
        else if (!(match.Success))
        {    
            lblmsg.Text = email + " is incorrect";
            lblmsg.Visible = true;
        }
        else if (txtunm .Text == "")
        {
            lblmsg.Text = "Incomplete Username";
            lblmsg.Visible = true;
        }
        else if (txtPasswd .Text  == "")
        {
            lblmsg.Text = "Incomplete Password";
            lblmsg.Visible = true;
        }
        else if (txtConfirmPass.Text == "")
        {
            lblmsg.Text = "Incomplete Confirm Password";
            lblmsg.Visible = true;
        }
        else if (txtPasswd.Text != txtConfirmPass .Text )
        {
            lblmsg.Text = "Password do not match!!!";
            lblmsg.Visible = true;
        }
        else
        {
            txtmobno.Text = txtmobno0.Text + txtmobno.Text;

            string a = txtunm.Text;//"str123";
            string b = string.Empty;
            int val;

            str = "select count(*)from tblRegister where usernm='" + txtunm.Text + "'";
            com = new SqlCommand(str, con);
            int count = Convert.ToInt32(com.ExecuteScalar());
            if (count > 0)
            {
                lblmsg.Text = "User Name Already Exist...!";
                lblmsg.Visible = true;
               
            }
            else
            {

                SqlCommand oc = new SqlCommand("insert into tblRegister values(@userid,@usernm,@passwd,@name,@surname,@gender,@mailid,@mobno,@address)", con);
               
               oc.Parameters.Add("@userid",ids);
                oc.Parameters.Add("@usernm",txtunm.Text);
                oc.Parameters.Add("@passwd",txtPasswd.Text);
                oc.Parameters.Add("@name", txtName.Text);
                oc.Parameters.Add("@surname", txtsurname.Text);
                oc.Parameters.Add("@gender", rbGender.SelectedItem.Text);
                oc.Parameters.Add("@mailid", txtMail.Text);
                oc.Parameters.Add("@mobno", txtmobno.Text);
                oc.Parameters.Add("@address", txtAddress.Text);
                
               
                oc.ExecuteNonQuery();
                con.Close();
               
                txtMail.Text = "";
                txtName.Text = "";
                txtsurname.Text = "";
              
                txtmobno.Text = "";
                lblmsg.Text = "";
                txtunm.Text = "";
                lblmsg.Text = "Record Saved Successfully";
                lblmsg.Visible = true;
                Response.Redirect("frmImageSelection.aspx");
            }
           
        }

       
       
        //Server.Transfer("frmImageSelection.aspx", true);
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        txtunm.Text = "";
        txtAddress.Text = "";
        txtMail.Text = "";
        txtmobno.Text = "";
        txtName.Text = "";
        txtsurname.Text = "";
        txtunm.Text = "";
        lblmsg.Text = "";
        rbGender.ClearSelection();
    }
}
