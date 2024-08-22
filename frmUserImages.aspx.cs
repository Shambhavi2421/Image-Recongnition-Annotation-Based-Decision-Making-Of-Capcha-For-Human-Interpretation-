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

public partial class frmUserImages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gvImg_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dr = (DataRowView)e.Row.DataItem;
            string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["img"]);
            (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            lblmsg.Visible = true;

            DataRowView dr1 = (DataRowView)e.Row.DataItem;
            string imageUrl1 = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr1["img"]);
            (e.Row.FindControl("Image2") as Image).ImageUrl = imageUrl1;
            lblmsg.Visible = true;
        }
    }
    protected void btnUdetails_Click(object sender, ImageClickEventArgs e)
    {

    }
}
