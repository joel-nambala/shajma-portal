<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="shajma.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SHAJMA Self Help | Login</title>
    <link href="assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-bg">
            <div class="video-bg">
                <video class="bg-video" autoplay="autoplay" muted="muted" loop="loop">
                    <source src="assets/img/hero-video.mp4" type="video/mp4" />
                    <source src="assets/img/hero-video.webm" type="video/webm" />
                    <source src="assets/img/hero-video.ogv" type="video/ogg" />
                    Your browser is not supported!
                </video>
            </div>
            <div class="login">
                <h2 class="login-title">SHA<span>JMA</span></h2>
                <p class="login-info">Login into your account</p>
                <div class="login-progress"></div>
                <p class="login-brand">SHAJMA online portal</p>
                <div class="login-form">
                    <asp:Label ID="lblMessage" runat="server" Text="An error has occured" Visible="false"></asp:Label>
                    <div class="login-form-group">
                        <label>Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email" required="true"></asp:TextBox>
                    </div>
                    <div class="login-form-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password" required="true"></asp:TextBox>
                    </div>
                </div>
                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-login" OnClick="BtnLogin_Click"/>
                <div class="login-info-container">
                    <a href="ResetPassword.aspx" class="login-link">Forgot Password?</a>
                    <p class="login-text">Do not have an account? <a href="CreateAccount.aspx" class="login-link">Sign Up</a>.</p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
