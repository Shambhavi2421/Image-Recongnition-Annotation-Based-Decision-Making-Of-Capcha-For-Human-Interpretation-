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

public partial class frmNew1FirstPoint : System.Web.UI.Page
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
  
    protected void btnSecondPt_Click(object sender, EventArgs e)
    {
        Server.Transfer("frmNew2SecondPoint.aspx",true );
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
       

        xpoint.Text = Request.Form[hfName.UniqueID];
        ypoint.Text = Request.Form[hfName1.UniqueID];

        //---------New Code
        decimal xx = Convert.ToInt32(xpoint.Text);
        decimal yy = Convert.ToInt32(ypoint.Text);
        int xp = Convert.ToInt32(Math.Ceiling(xx));

        int yp = Convert.ToInt32(Math.Ceiling(yy));
        //------------
        lblmsg.Visible = false;
        string nm = Convert.ToString(Session["username"]);
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\ImageAsCaptcha\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
        con.Open();

        SqlCommand oc = new SqlCommand("insert into tblCordinates values(@usernm,@img,@xcord,@ycord)", con);

        string path1 = "E:\\ImageAsCaptcha\\UploadImg\\" + "Basic.jpg"; // @"D:\ImageAsCaptcha\UploadImg\user.jpg";
        FileStream fs1 = new FileStream(path1, FileMode.Open, FileAccess.Read);
        BinaryReader br1 = new BinaryReader(fs1);
        FileInfo fi1 = new FileInfo(path1);
        byte[] imagedata1 = br1.ReadBytes((int)fi1.Length);


        oc.Parameters.Add("@usernm", nm);
        oc.Parameters.Add("@img", imagedata1);
        oc.Parameters.Add("@xcord", xp);
        oc.Parameters.Add("@ycord", yp);
        //oc.Parameters.Add("@xcord", xpoint.Text);
        //oc.Parameters.Add("@ycord", ypoint.Text);

        oc.ExecuteNonQuery();
        con.Close();
        Dispose();
        lblmsg.Text = "coordinates Saved Successfully";
        lblmsg.Visible = true;
        btnSubmit.Enabled = false;
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
       
        lblmsg.Text = "";
        Session["username"] = "";
        Response.Redirect("Login.aspx");
    }
    protected void btnGetImage_Click(object sender, EventArgs e)
    {
        //lblmsg.Text = "";
        //if (Session["username"] == "")
        //{
        //    Response.Redirect("Login.aspx");
        //}
        //else
        //{

        //    string nm1 = Convert.ToString(Session["username"]);
        //    //Read Image File into Image object.
        //    Image img = Image.FromFile("D:\\ImageAsCaptcha\\UploadImg\\" + nm1 + ".jpg");

        //    //ImageConverter Class convert Image object to Byte array.
        //    byte[] bytes = (byte[])(new ImageConverter()).ConvertTo(img, typeof(byte[]));
        //    ImgUpload.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(bytes, 0, bytes.Length);
            
            
        //}
    }


    protected void btnDemo_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmDemo.aspx");
    }

    protected void hfName1_ValueChanged(object sender, EventArgs e)
    {

    }
}
