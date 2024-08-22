<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="frmUserRegister.aspx.cs" Inherits="frmUserRegister" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; height: 157px;">
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                ForeColor="Black" Text="Registration Form"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Large" 
                ForeColor="#990000"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="First Name" Width="125px"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Last Name" Width="125px"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtsurname" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Gender"></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rbGender" runat="server" 
                RepeatDirection="Horizontal" ForeColor="Black">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td>
            <asp:Label ID="Label6" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Mail ID"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Mobile Number"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmobno0" runat="server" Height="25px" Width="34px" 
                MaxLength="10" ReadOnly="True">91</asp:TextBox>
            <asp:TextBox ID="txtmobno" runat="server" Height="25px" Width="166px" 
                MaxLength="10"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Address"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtAddress" runat="server" Height="70px" TextMode="MultiLine" 
                Width="199px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtunm" runat="server" Height="25px" Width="200px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label8" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPasswd" runat="server" Height="25px" Width="200px" 
                TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label9" runat="server" Font-Bold="True" 
                ForeColor="Black" Text="Confirm Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPass" runat="server" Height="25px" Width="200px" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Text="Submit" 
                Width="75px" Height="30px" onclick="btnLogin_Click" />
            <asp:Button ID="btnClear" runat="server" Font-Bold="True" Text="Clear" 
                Width="75px" Height="30px" onclick="btnClear_Click" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

