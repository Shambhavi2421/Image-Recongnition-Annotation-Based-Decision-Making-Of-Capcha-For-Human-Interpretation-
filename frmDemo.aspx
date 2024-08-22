<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmDemo.aspx.cs" Inherits="frmDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style4
        {
            height: 35px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>

 $(document).ready(function() {
        $('img').on("mousemove", function(e) {
            var offset = $(this).offset();
            var X = (e.pageX - offset.left) + 0.359375;
            var Y = (e.pageY - offset.top);
            $('#xycord').text('X: ' + X + ', Y: ' + Y);
        });
    });





    $(document).ready(function () {
        $('img').click(function (e) {
            var offset = $(this).offset();
            var X = (e.pageX - offset.left) + 0.359375;
            var Y = (e.pageY - offset.top);
            $('#coord').text('X: ' + X + ', Y: ' + Y);
            $('#xycord').text('X: ' + X + ', Y: ' + Y);
            $('#xpoint').text(X);
            $('#ypoint').text(Y);


            var label = document.getElementById("<%=xpoint.ClientID %>");
            //Set the value of Label.
            label.innerHTML = X;
            
            //Set the value of Label in Hidden Field.
            document.getElementById("<%=hfName.ClientID %>").value = label.innerHTML;
            document.getElementById("txtxpoint").value = label.innerHTML;

            var ylabel = document.getElementById("<%=ypoint.ClientID %>");
            //Set the value of Label.
            ylabel.innerHTML = Y;
            //Set the value of Label in Hidden Field.
            document.getElementById("<%=hfName1.ClientID %>").value = ylabel.innerHTML;
            document.getElementById("txtypoint").value = ylabel.innerHTML;
        });
    });
</script>
        <br style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <br style="color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" />
        <table align="center" border="0" cellpadding="0" cellspacing="0" 
            style="font-family: &quot;Times New Roman&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" 
            width="780">
            <tr>
                <td height="40" valign="top">
                    <img height="44" hspace="0" src="IDBI%20Images/logonew.jpg" width="213" /></td>
            </tr>
            <tr>
                <td bgcolor="#FF4D00" height="0">
                    <img height="4" 
                        src="https://inet.idbibank.co.in/corp/web/L001/images/spacer.gif" width="1" /></td>
            </tr>
        </table>
        <table align="center" border="0" cellpadding="5" cellspacing="0" 
            style="font-family: &quot;Times New Roman&quot;; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" 
            width="780">
            <tr>
                <td>
                    <font nowrap 
                        style="font-family: Verdana, Geneva, sans-serif; font-size: 12px; font-weight: bold; color: rgb(255, 102, 51); text-align: justify;">
                    BEWARE! DO NOT reply to any fraudulent phishing emails purportedly sent by IDBI 
                    Bank or other authorities asking for your Login ID, Password(s), account details 
                    etc. for registration of OTP feature or for any other reason.</font></td>
            </tr>
        </table>
        <font color="#FA5858" face="ARIAL,MONACO" size="+1" 
            style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
        <div id="div1" class="options" style="visibility: visible; display: block;">
            <table align="center" border="0" cellpadding="2" cellspacing="7" width="782">
                <tr>
                    <td height="5">
                        <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
                            <tr>
                                <td valign="top">
                                    <br />
                                    <center>
                                        <br />
                                    </center>
                                    <table align="center" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td>
                                                <b>
                                                <a href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                                    onclick="window.open(&quot;web/L001/images/helpfile/faq-login-issues.html&quot;,&quot;LoginFaqs&quot;,&quot;toolbar=0,location=0,directories=0,status=1,menubars=0,scrollbars=1,resizable=1,width=525,height=325,valign=top&quot;);" 
                                                    style="font-size: 9pt; color: teal; font-family: Arial, Helvetica, sans-serif; text-decoration: none;" 
                                                    valign="top"><font color="red" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FAQ&#39;s on Login issues</font></a></b><table 
                                                    align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                                                    <tr>
                                                        <td bgcolor="#E0E0E0">
                                                            <img height="1" src="https://inet.idbibank.co.in/corp/images/spacer.gif" 
                                                                width="1" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="log-bg" 
                                                            style="background-image: url('https://inet.idbibank.co.in/corp/web/L001/images/log-bg.gif');" 
                                                            width="46%">
                                                            <table align="center" border="0" cellpadding="0" cellspacing="0" width="96%">
                                                                <tr>
                                                                    <td height="60">
                                                                        <div align="center">
                                                                            <span class="log-text-bold" 
                                                                                style="font-weight: bold; font-size: 12px; color: rgb(255, 77, 0); text-decoration: none;">
                                                                            Personal Banking<span>&nbsp;</span></span><span class="mainHeader" 
                                                                                style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 18px; color: rgb(0, 153, 153); text-decoration: none; font-weight: normal;"><br />
                                                                            </span><span class="log-text" 
                                                                                style="font-weight: normal; font-size: 11px; color: rgb(48, 48, 48); text-decoration: none;">
                                                                            To access your account, please fill in the details and click login.</span></div>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                            <tr>
                                                                                <td class="log-text-bold2" height="25" 
                                                                                    style="font-weight: bold; font-size: 12px; color: rgb(1, 133, 119); text-decoration: none;" 
                                                                                    width="27%">
                                                                                    &nbsp;Customer ID</td>
                                                                                <td height="25" width="70%">
                                                                                    &nbsp;&nbsp;<asp:TextBox ID="txtusernm" runat="server" Font-Size="8pt" 
                                                                                        Width="126px"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="log-text-bold2" height="25" nowrap 
                                                                                    style="font-weight: bold; font-size: 12px; color: rgb(1, 133, 119); text-decoration: none;" 
                                                                                    width="27%">
                                                                                    &nbsp;Password</td>
                                                                                <td height="25" width="70%">
                                                                                    &nbsp;&nbsp;<asp:TextBox 
                                                                                        ID="txtpasswd" runat="server" Font-Size="8pt" 
                                                                                        Width="123px" TextMode="Password"></asp:TextBox>
                                                                                    <img alt="Keyboard interface" 
                                                                                        class="keyboardInputInitiator" src="IDBI%20Images/85.jpg" 
                                                                                        style="margin-left: 12px; vertical-align: middle; cursor: pointer;" 
                                                                                        title="Display Virtual keyboard interface" /></td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="log-text-bold2" 
                                                                                    style="font-weight: bold; font-size: 12px; color: rgb(1, 133, 119); text-decoration: none;" 
                                                                                    width="27%">
                                                                                    &nbsp;Start In</td>
                                                                                <td align="center" alt="text0" width="70%">
                                                                                    <div align="left" alt="text1" valign="center">
                                                                                        &nbsp;<span>&nbsp;</span><select class="textfield" name="CorporateSignOnOptions" 
                                                                                            style="border-width: 1px; border-style: solid; border-color: rgb(213, 213, 213); font-size: 11px; color: rgb(48, 48, 48); font-family: Tahoma, Arial, Verdana; text-decoration: none;">
                                                                                            <option selected="" value="1">Home Page</option>
                                                                                            <option value="2">Bills</option>
                                                                                            <option value="3">Fund Transfer</option>
                                                                                            <option value="4">Requests</option>
                                                                                            <option value="5">Mails</option>
                                                                                            <option value="6">Customize</option>
                                                                                        </select><span>&nbsp;</span><a 
                                                                                            href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                                                                            onclick="window.open(&quot;web/L001/images/helpfile/Vkeypad/Knowmore.html&quot;,&quot;Knowmore&quot;,&quot;toolbar=0,location=0,directories=0,status=1,menubars=0,scrollbars=1,resizable=1,width=525,height=325,valign=top&quot;);" 
                                                                                            style="font-size: 9pt; color: teal; font-family: Arial, Helvetica, sans-serif; text-decoration: none;" 
                                                                                            valign="top"><font color="#007162" valign="Top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img border="0" 
                                                                                            src="IDBI%20Images/e55.jpg" /></font></a></div>
                                                                                    <font color="#007162" valign="Top">
                                                                                    <div align="right">
                                                                                    </div>
                                                                                    </font>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="2">
                                                                                    <font color="#007162" valign="Top" face="ARIAL,MONACO" size="+1" 
                                                                                        style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255)">
                                                                                        <asp:Label ID="lblmsg" runat="server" Font-Size="10pt" ForeColor="Red"></asp:Label>
                                                                                    </font>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td colspan="2">
                <table style="width:110%;">
                    <tr>
                        <td class="style4">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="10pt" 
                ForeColor="Black" Text="X-Axis : "></asp:Label>
                        </td>
                        <td>
                <asp:Label ID="xpoint" runat="server" Font-Bold="True" Font-Size="10pt" 
                ForeColor="Black" Text="X-Axis"></asp:Label>
                            <asp:TextBox ID="txtxpoint" runat="server" Width="50px"></asp:TextBox>
                <asp:HiddenField ID = "hfName" runat = "server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="10pt" 
                ForeColor="Black" Text="Y-Axis : "></asp:Label>
                  
                        </td>
                        <td>
                <asp:Label ID="ypoint" runat="server" Font-Bold="True" Font-Size="10pt" 
                ForeColor="Black" Text="Y-Axis"></asp:Label>
        <font color="#FA5858" face="ARIAL,MONACO" size="+1" 
            style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
                            <asp:TextBox ID="txtypoint" runat="server" Width="50px"></asp:TextBox>
        </font>
    
                <asp:HiddenField ID = "hfName1" runat = "server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="10pt" 
                ForeColor="Black" Text="X Y Cordniates :"></asp:Label>
                        </td>
                        <td>
                <asp:Label ID="xycord" runat="server" Font-Bold="True" Font-Size="10pt" 
                ForeColor="Black" Text="X Y Cordniates "></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="log-text-bold2" 
                                                                                        style="font-weight: bold; font-size: 12px; color: rgb(1, 133, 119); text-decoration: none;" 
                                                                                        width="27%">
                                                                                        &nbsp;</td>
                                                                                    <td align="left" valign="middle" width="70%">
                                                                                        &nbsp;</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="log-text-bold2" 
                                                                                        style="font-weight: bold; font-size: 12px; color: rgb(1, 133, 119); text-decoration: none;" 
                                                                                        width="27%">
                                                                                    </td>
                                                                                    <td align="left" valign="middle" width="70%">
                                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                                                                                            Text="Login" />
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="2" height="60">
                                                                                        <div align="center">
                                                                                            <a class="black-bold" 
                                                                                                href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.Retail.IDBI.OnlPwd=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate" 
                                                                                                style="font-weight: bold; font-size: 9pt; color: teal; font-family: Arial, Helvetica, sans-serif; text-decoration: none;" 
                                                                                                target="_blank">Generate Online Password /<br />
                                                                                        Forgot Password /<br />
                                                                                        Modify Transaction Limit</a><span>&nbsp;</span><br />
                                                                                        <br />
                                                                                        <span class="black-bold" 
                                                                                            style="font-weight: bold; font-size: 11px; color: rgb(48, 48, 48); font-family: Tahoma, Arial, Verdana; text-decoration: none;">
                                                                                        <a href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                                                                            onclick="viewdemo();" 
                                                                                            style="font-weight: bold; font-size: 9pt; color: red; font-family: Arial, Helvetica, sans-serif; text-decoration: none;">
                                                                                        View Demo</a><span>&nbsp;</span>|<span>&nbsp;</span><a 
                                                                                            href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                                                                            onclick="opendemo();" 
                                                                                            style="font-weight: bold; font-size: 9pt; color: teal; font-family: Arial, Helvetica, sans-serif; text-decoration: none;">Know 
                                                                                        more</a><span>&nbsp;</span>|<span>&nbsp;</span><a 
                                                                                            href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                                                                            onclick="channelreg();" 
                                                                                            style="font-weight: bold; font-size: 9pt; color: teal; font-family: Arial, Helvetica, sans-serif; text-decoration: none;">Register</a></span></div>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td class="log-bg" 
                                                            style="background-image: url('https://inet.idbibank.co.in/corp/web/L001/images/log-bg.gif');" 
                                                            valign="top" width="50%">
                                                            <div align="center">
                                                                <span class="log-text" 
                                                                    style="font-weight: normal; font-size: 11px; color: rgb(48, 48, 48); text-decoration: none;">
                                                                <img border="0" src="IDBI%20Images/virtual-keypad-security-information.gif" /></span></div>
                                                            <div id="vkeyboard">
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="IDBI%20Images/key502.gif" /><span>&nbsp;</span><br />
                                                                <b>
                                                                <a href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                                                    onclick="window.open(&quot;https://www.idbi.com/apply-now.asp&quot;,&quot;APPLYNOW&quot;,&quot;toolbar=0,location=0,directories=0,status=1,menubars=0,scrollbars=1,resizable=1,width=635,height=440,valign=top&quot;);" 
                                                                    onmouseout="this.style.color='#FF0000'" onmouseover="this.style.color=''" 
                                                                    style="font-size: 9pt; color: red; font-family: Arial, Helvetica, sans-serif; text-decoration: none;" 
                                                                    valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apply-Now for Bank products</a></b><font color="#FA5858" face="ARIAL,MONACO" size="+1" 
            style="font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;"><asp:Image 
                                                                    ID="ImgUpload" runat="server" Height="250px" Width="350px" />
        </font>
    
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td bgcolor="#E0E0E0">
                                                            <img height="1" src="https://inet.idbibank.co.in/corp/images/spacer.gif" 
                                                                width="1" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="98%">
                                                                <tr>
                                                                    <td colspan="2" valign="top">
                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                            <tr>
                                                                                <td class="log-text" 
                                                                                    style="font-weight: normal; font-size: 11px; color: rgb(48, 48, 48); text-decoration: none;">
                                                                                    <div align="justify">
                                                                                        <span class="log-text" 
                                                                                            style="font-weight: normal; font-size: 11px; color: rgb(48, 48, 48); text-decoration: none;">
                                                                                        <img border="0" src="IDBI%20Images/SecurityInformation2.gif" /></span><br />
                                                                                        You may have received a spam mail asking you to confirm details such as customer 
                                                                                        id and password pertaining to your Internet banking account. This is called, in 
                                                                                        technical terms, Phishing<span>&nbsp;</span><a 
                                                                                            href="http://www.idbi.com/phishing.asp" 
                                                                                            style="font-size: 9pt; color: teal; font-family: Arial, Helvetica, sans-serif; text-decoration: none;"><span 
                                                                                            class="log-text" 
                                                                                            style="font-weight: normal; font-size: 11px; color: rgb(48, 48, 48); text-decoration: none;"><u>(click 
                                                                                        here to know more)</u></span></a>. Please beware of such fraudulent mails, 
                                                                                        asking you to provide or update such information on a website or by clicking on 
                                                                                        a link within the email .<br />
                                                                                        We take your personal information seriously and will never ask for details about 
                                                                                        your Account / PINs or Passwords over the email. The Bank is not responsible for 
                                                                                        any fraudulent transactions due to compromise or inadvertent disclosure of 
                                                                                        account related information.</div>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                    <td align="center" height="50" 
                                                                        style="border-style: solid; border-color: inherit; border-width: 0px; background: url('https://inet.idbibank.co.in/corp/web/L001/images/entrust_site_seal_small.png') no-repeat center; padding-top: 18px;" 
                                                                        width="72">
                                                                        <a 
                                                                            
                                                                            style="font-size: 10px; color: rgb(153, 153, 153); font-family: Tahoma, Geneva, sans-serif; text-decoration: none;">
                                                                        SSL</a><img id="seal" alt="SSL" height="90" 
                                                                            src="IDBI%20Images/ssl-certificates.png" 
                                                                            style="margin: 10px 25px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 11.2896px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" 
                                                                            width="90" /></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="log-text" 
                                                style="font-weight: normal; font-size: 11px; color: rgb(48, 48, 48); text-decoration: none;">
                                                <b>Note:</b><br />
                                                1. Register your Mobile number with us and get SMS Alerts to keep track of high 
                                                value card &amp; net banking transactions in your account .<br />
                                                2. Avoid doing net banking transactions from Cyber Cafes.<span>&nbsp;</span><br />
                                                3. Use the Virtual Keypad for enhanced security while keying in your net banking 
                                                passwords</td>
                                        </tr>
                                    </table>
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td class="bodyText" 
                                                style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(0, 0, 0); text-decoration: none; font-weight: normal;">
                                                <div align="left">
                                                    <span class="tealHeader" 
                                                        style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; color: rgb(0, 153, 153); text-decoration: none; line-height: 20px;">
                                                    </span><font size="1">
                                                    <br />
                                                    <a class="log-text" 
                                                        href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                                        onclick="window.open(&quot;web/L001/images/helpfile/safeinet/do's&amp;don'ts.html&quot;,&quot;Knowmore&quot;,&quot;toolbar=0,location=0,directories=0,status=1,menubars=0,scrollbars=1,resizable=1,width=525,height=325,valign=top&quot;);" 
                                                        style="font-weight: normal; font-size: 9pt; color: teal; text-decoration: none; font-family: Arial, Helvetica, sans-serif;" 
                                                        valign="top"><font color="red" size="1" valign="Top"><b>Safe Internet 
                                                    Banking (Do’s &amp; Dont’s)... click here</b></font></a></font></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="bodyText" 
                                                style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(0, 0, 0); text-decoration: none; font-weight: normal;">
                                                <font size="1">
                                                <br />
                                                </font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div align="justify">
                                                    <span class="log-text" 
                                                        style="font-weight: normal; font-size: 11px; color: rgb(48, 48, 48); text-decoration: none;">
                                                    <b>If case of compromise of your login/password details (due to phishing) and to 
                                                    prevent loss or theft in your account, immediately contact our 24 hr Customer 
                                                    Care helpline on 18002094324 / 18002001947(Toll free numbers ) or +9122-67719100 
                                                    (chargeable number for overseas customers) to disable unauthorised Net Banking 
                                                    access.</b></span></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="bodyText" 
                                                style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 11px; color: rgb(0, 0, 0); text-decoration: none; font-weight: normal;" 
                                                wrap="yes">
                                                <br />
                                                <b>Recommended minimum software requirements:<span>&nbsp;</span><br />
                                                Web Browsers<span>&nbsp;</span></b>- Internet Explorer, Mozilla Firefox, Google 
                                                Chrome, Safari, Netscape.<span>&nbsp;</span><br />
                                                <b>Operating System</b><span>&nbsp;</span>- Windows XP (Service Pack 3 only), Windows 
                                                7 and above.</td>
                                        </tr>
                                    </table>
                                    <map name="Map">
                                        <area coords="4,4,210,44" 
                                            href="https://inet.idbibank.co.in/corp/BANKAWAY?Action.RetUser.Init.001=Y&amp;AppSignonBankId=IBKL&amp;AppType=corporate#" 
                                            onclick="MessageDisplay();" shape="rect" />
                                    </map>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        </font>
    
    </div>
    </form>
</body>
</html>
