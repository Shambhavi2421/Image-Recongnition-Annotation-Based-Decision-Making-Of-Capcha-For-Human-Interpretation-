<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmSuccess.aspx.cs" Inherits="frmSuccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p id="date-stamp" 
            style="font-family: Arial, sans-serif; float: right; text-align: right; width: 300px; font-size: 1.1em; margin-top: 3.5em; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">
            01/18/22 09:54 ET<br />
            IDBI<strong>IDBI.bank.co.in has been verified by Entrust.</strong></p>
        <img id="seal" alt="SSL" height="90" src="IDBI%20Images/ssl-certificates.png" 
            style="margin: 10px 25px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 11.2896px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" 
            width="90" /><asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Century Schoolbook" Font-Size="X-Large" ForeColor="#99CC00" 
            Text="Login Successfull...!!!"></asp:Label>
        <br />
        <br />
        <div id="main-info" 
            style="border: 1px solid rgb(51, 51, 51); background-color: rgb(230, 230, 230); padding: 10px; margin: 0px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 11.2896px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
            <div id="main-sub" 
                style="border-top: 1px solid rgb(180, 180, 180); border-left: 1px solid rgb(180, 180, 180); border-right: 1px solid rgb(180, 180, 180); background-color: rgb(242, 242, 242); padding: 5px 0px 0px; margin-bottom: 1.5em;">
                <p class="large" 
                    style="font-family: Arial, sans-serif; font-size: 1.1em; position: relative; padding-left: 130px; margin: 0.5em 0px;">
                    <span style="display: inline-block; width: 115px; text-align: right; font-weight: bold; position: absolute; top: 0px; left: 10px;">
                    Site Name:</span>IDBI.bank.co.in</p>
                <p class="large" 
                    style="font-family: Arial, sans-serif; font-size: 1.1em; position: relative; padding-left: 130px; margin: 0.5em 0px;">
                    <span style="display: inline-block; width: 115px; text-align: right; font-weight: bold; position: absolute; top: 0px; left: 10px;">
                    Certificate Status:</span><span id="status" 
                        style="display: inline-block; width: auto; text-align: right; font-weight: bold; position: relative; top: 0px; left: 0px; margin-left: 0px; color: rgb(0, 206, 0);">Valid.</span></p>
                <div id="main-sub-grad" 
                    style="background-image: url('https://www.entrust.net/images/gradation.jpg'); background-repeat: repeat-y; border-top: 1px solid rgb(222, 222, 222); border-bottom: 1px solid rgb(180, 180, 180); padding-top: 0.5em; margin-top: 1em;">
                    <p style="font-family: Arial, sans-serif; position: relative; padding-left: 130px; margin: 0.5em 0px; padding-bottom: 1em; padding-right: 1em; line-height: 1.5;">
                        <span style="display: inline-block; width: 115px; text-align: right; font-weight: bold; position: absolute; top: 0px; left: 10px;">
                        Verification:</span>Entrust or an independent local registration authority has 
                        verified that IDBI Bank Ltd is an existing business and owns or operates the 
                        domain name<span>&nbsp;</span><strong>IDBI.bank.co.in</strong></p>
                    <p id="bottom" 
                        style="font-family: Arial, sans-serif; margin: 0.5em 0px; position: relative; padding-left: 130px; padding-bottom: 1em; padding-right: 1em; line-height: 1.5;">
                        <span style="display: inline-block; width: 115px; text-align: right; font-weight: bold; position: absolute; top: 0px; left: 10px;">
                        Data Security:</span>This site is capable of using SSL to encrypt data going 
                        between your Web browser and the website. The communication of your private 
                        information from any address beginning with &quot;https&quot; is encrypted and secured 
                        using SSL. For more information on SSL encryption,<span>&nbsp;</span><a 
                            href="https://www.entrustdatacard.com/pages/digital-certificate-faq" 
                            style="font-family: Arial, sans-serif;">click here</a>.</p>
                </div>
            </div>
            <p style="font-family: Arial, sans-serif;">
                Always check that the information provided here matches that of the site you are 
                visiting.</p>
            <p style="font-family: Arial, sans-serif;">
                <img id="bullet" height="9" 
                    src="https://www.entrust.net/images/orange_arrow.gif" 
                    style="margin-right: 5px;" width="10" /><a id="misuse" 
                    href="https://www.entrust.net/ev/misuse.cfm" 
                    style="font-family: Arial, sans-serif; font-size: 1.1em; text-decoration: none;"><strong>Report 
                Seal Misuse</strong></a></p>
        </div>
    
    </div>
    </form>
</body>
</html>
