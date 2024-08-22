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

public partial class frmImageSelection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Captcha As A Graphical Password";
        lblmsg.Visible = false;
        if (Session["username"] == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string nm = Convert.ToString(Session["username"]);
        ////------------------------------------------
        ////if (FileUpload1.FileName.ToString  = null)
        ////{
        //    string folderPath = Server.MapPath("~/Files/");

        //    //Check whether Directory (Folder) exists.
        //    if (!Directory.Exists(folderPath))
        //    {
        //        //If Directory (Folder) does not exists Create it.
        //        Directory.CreateDirectory(folderPath);
        //    }

        //    //Save the File to the Directory (Folder).
        //    FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

        //    //Display the Picture in Image control.
        //    ImgUpload.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);
        ////}
        ////-------------------------------------
        //------------------------------------------
        //if (FileUpload1.FileName.ToString  = null)
        //{
        string folderPath = Server.MapPath("~/UploadImg/");

        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath))
        {
            //If Directory (Folder) does not exists Create it.
            Directory.CreateDirectory(folderPath);
        }

        //Save the File to the Directory (Folder).
        FileUpload1.SaveAs(folderPath +nm + ".jpg");//Path.GetFileName(FileUpload1.FileName));

        //Display the Picture in Image control.
        ImgUpload.ImageUrl = "~/UploadImg/" + nm +".jpg"; //Path.GetFileName(FileUpload1.FileName);
        //}
        //-------------------------------------
    }
    protected void btnFirstPt_Click(object sender, EventArgs e)
    {
        //Server.Transfer("frmFirstPonit.aspx", true);
        Response.Redirect("frmNew1FirstPoint.aspx");
    }
    protected void btnUploadImg_Click(object sender, EventArgs e)
    {
        string str;
        SqlCommand com;
        lblmsg.Visible = false;
       // SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=D:\\ImageAsCaptcha\\App_Data\\Database.mdf;Integrated Security=True;User Instance=True");

        //string con = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=E:\\ImageAsCaptcha\\App_Data\\Database2.mdf;Integrated Security=True;User Instance=True");
        con.Open();
       


        string nm = Convert.ToString(Session["username"]);
        if (nm == "")
        {
            Response.Redirect("Login.aspx");
        }
        str = "select count(*)from tblImg where usernm='" + nm + "'";
        com = new SqlCommand(str, con);
        int count = Convert.ToInt32(com.ExecuteScalar());
        if (count > 0)
        {
            lblmsg.Text = "Image Already Exist...!";
            lblmsg.Visible = true;
            btnUploadImg.Enabled = false;
            btnFirstPt.Enabled = false;
                btnLogin .Enabled =false ;
        }
        else
        {



            if (nm == null)
            {
                Response.Redirect("Login.aspx");
            }
           

            SqlCommand oc = new SqlCommand("insert into tblImg values(@usernm,@img)", con);

            string path1 = "E:\\ImageAsCaptcha\\UploadImg\\" + nm + ".jpg"; // "E:\\ImageAsCaptcha\\UploadImg\\" + "Basic.jpg"; 
            FileStream fs1 = new FileStream(path1, FileMode.Open, FileAccess.Read);
            BinaryReader br1 = new BinaryReader(fs1);
            FileInfo fi1 = new FileInfo(path1);
            byte[] imagedata1 = br1.ReadBytes((int)fi1.Length);


            oc.Parameters.Add("@usernm", nm);
            oc.Parameters.Add("@img", imagedata1);

            oc.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Image Uploaded Successfully";
            lblmsg.Visible = true;

        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
