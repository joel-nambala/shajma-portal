<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="shajma.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>SHAJMA Self Help | Create Account</title>
     <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/layout.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="account-bg">

            <div class="video-bg">
                <video class="bg-video" autoplay="autoplay" muted="muted" loop="loop">
                    <source src="assets/img/discussion.mp4" type="video/mp4" />
                    <source src="assets/img/discussion.webm" type="video/webm" />
                    <source src="assets/img/discussion.ogv" type="video/ogg" />
                    Your browser is not supported!
                </video>
            </div>

            <div class="account">
                <h2 class="account-title">Create account</h2>

                <div class="account-form">
                    <div class="account-form-group">
                        <label>Full Name</label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter full name" required="true"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Full Name should be characters only"
                            ControlToValidate="txtFullName" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Display="Dynamic"
                            SetFocusOnError="true" Font-Size="Small"></asp:RegularExpressionValidator>
                    </div>

                    <div class="account-form-group">
                        <label>Phone Number</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="Enter phone number" required="true"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone number must be 10 digits"
                            ControlToValidate="txtFullName" ValidationExpression="^[0-9]{10}$" ForeColor="Red" Display="Dynamic"
                            SetFocusOnError="true" Font-Size="Small"></asp:RegularExpressionValidator>
                    </div>

                    <div class="account-form-group span-full">
                        <label>Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter address" required="true"></asp:TextBox>
                    </div>

                    <div class="account-form-group">
                        <label>Email Address</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter email address" required="true"></asp:TextBox>
                    </div>

                    <div class="account-form-group">
                        <label>Gender</label>
                        <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" required="true">
                            <asp:ListItem Value="0">Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gender cannot be empty" InitialValue="0" 
                            ControlToValidate="ddlGender" Font-Size="Small" Display="Dynamic" SetFocusOnError="true", ForeColor="Red"></asp:RequiredFieldValidator>--%>
                    </div>

                    <div class="account-form-group">
                        <label>Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password" required="true"></asp:TextBox>
                    </div>

                    <div class="account-form-group">
                        <label>Confirm Password</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm password" required="true"></asp:TextBox>
                        <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match!" ControlToValidate="txtConfirmPassword" 
                            ControlToCompare="txtPassword" Font-Size="Small" Display="Dynamic" SetFocusOnError="true", ForeColor="Red"></asp:CompareValidator>--%>
                    </div>

                     <div class="account-form-group">
                        <label>Country</label>
                         <%--<asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1">
                             <asp:ListItem Value="0">Select Country</asp:ListItem>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shajma %>" SelectCommand="SELECT [Name] FROM [Countries]"></asp:SqlDataSource>--%>
                    </div>

                    <div class="account-form-group">
                        <label>Profile Picture</label>
                        <asp:FileUpload ID="fuProfile" runat="server" CssClass="form-control" required="true" ToolTip="Upload files with .png, .jpg, .jpeg and .svg only"/>
                    </div>

                    <div class="button-group">
                        <asp:Button ID="BtnCreate" runat="server" Text="Sign Up" CssClass="btn btn-create" OnClick="BtnCreate_Click" />
                        <p>Already have an account? <a class="login-link" href="Login.aspx">Log In</a></p>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
