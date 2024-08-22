<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        height: 65px;
    }
    .style6
    {
        height: 77px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<asp:Panel ID="Panel1" runat="server" Height="222px">
    <table style="width:100%; height: 206px;">
        <tr>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <table border="box" style="width:499px; height: 157px;">
                    <tr>
                        <td class="style5" colspan="2">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                ForeColor="Black" Text="Login"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:RadioButtonList ID="rbChoice" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>User</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                                Text="Username"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtusernm" runat="server" Height="25px" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                                Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtpasswd" runat="server" AutoCompleteType="Disabled" 
                                Height="25px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Height="30px" 
                                onclick="btnLogin_Click" Text="Login" Width="75px" />
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl="~/frmUserRegister.aspx">New User</asp:HyperLink>
                        </td>
                    </tr>
                </table>
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
</asp:Panel>
</asp:Content>

