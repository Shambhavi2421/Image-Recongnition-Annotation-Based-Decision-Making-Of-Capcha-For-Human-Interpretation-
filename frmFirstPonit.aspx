
<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmFirstPonit.aspx.cs" Inherits="frmFirstPonit" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%; height: 157px;" border="box">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Black" Text="First Point Selection"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Black" Text="Select Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
                <asp:Image ID="ImgUpload" runat="server" Height="252px" Width="280px" 
                    ImageUrl="~/Files/Koala.jpg" />
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Black" Text="X-Axis"></asp:Label>
                <asp:TextBox ID="xpoint" runat="server" Width="73px" 
                    ontextchanged="xpoint_TextChanged"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Black" Text="Y-Axis"></asp:Label>
                <asp:TextBox ID="ypoint" runat="server" Width="73px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Black" Text="X Y Cordniates :"></asp:Label>
                <asp:Label ID="xycord" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="Black" Text="X Y Cordniates "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Font-Bold="True" Text="Submit" 
                Width="75px" Height="30px" onclick="btnSubmit_Click"  />
                <asp:Button ID="btnSecondPt" runat="server" Font-Bold="True" Text="Second Point Selection" 
                Width="170px" Height="30px" onclick="btnSecondPt_Click"   />
            </td>
        </tr>
    </table>
</asp:Content>

