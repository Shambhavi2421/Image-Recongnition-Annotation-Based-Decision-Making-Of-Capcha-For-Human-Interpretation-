<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="frmSelectOption.aspx.cs" Inherits="frmSelectOption" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:87%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Select Option" Font-Bold="True" 
                    Font-Size="X-Large"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/Buttons/button_image-selection.png" 
                    onclick="ImageButton1_Click" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/Buttons/button_idbi-login-page.png" 
                    onclick="ImageButton2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

