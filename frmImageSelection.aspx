<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="frmImageSelection.aspx.cs" Inherits="frmImageSelection" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script type="text/javascript">
    function setImage() {
        a1 = 'file://localhost/' + document.getElementById('FileUpload1').value;
        a1 = a1.toLowerCase();
        if (a1.substring(0, a1.lastIndexOf('.png')) || a1.substring(0, a1.lastIndexOf('.jpg')) || a1.substring(0, a1.lastIndexOf('.jpeg')) || a1.substring(0, a1.lastIndexOf('.gif'))) {
            var img = document.createElement('img');
            img.setAttribute('src', a1);
            document.getElementById('ImgUpload').appendChild(img);
        } 
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; height: 157px;" border="box">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Black" Text="Image Selection"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Black" Text="Select Image"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnBack" runat="server" Font-Bold="True" Text="Back" 
                Width="75px" Height="30px" onclick="btnBack_Click"  />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Image ID="ImgUpload" runat="server" Height="252px" Width="280px" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Text="Submit" 
                Width="75px" Height="30px" onclick="btnLogin_Click" />
            <asp:Button ID="btnUploadImg" runat="server" Font-Bold="True" Text="Upload Image" 
                Width="150px" Height="30px" onclick="btnUploadImg_Click"  />
            <asp:Button ID="btnFirstPt" runat="server" Font-Bold="True" Text="Select Point" 
                Width="150px" Height="30px" onclick="btnFirstPt_Click" />
        </td>
    </tr>
</table>
</asp:Content>

