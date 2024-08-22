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

public partial class frmFirstPonit : System.Web.UI.Page
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

    }



    protected void btnSecondPt_Click(object sender, EventArgs e)
    {
        Server.Transfer("frmSeconfPoint.aspx", true);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
    protected void xpoint_TextChanged(object sender, EventArgs e)
    {

    }
}
