﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bsuPizza.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
<meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="FormLogin" runat="server" class="form-horizontal col-sm-offset-3 col-sm-6">
        
        <h3> You must register first, you can click below link to register</h3>
        <div class="form-group"> <!-- start userName group -->
            <div class="input-group">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-user"></span>
                </span>
                <asp:TextBox ID="TextBoxUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div><!-- close input group -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" 
                    ErrorMessage="User name required!" ControlToValidate="TextBoxUsername" 
                    ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        
        </div> <!-- close userName -->

        <div class="form-group"> <!-- start password group -->
            <div class="input-group">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-lock"></span>
                </span>
               
                <asp:TextBox ID="TextBoxPassword"  TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
        </div><!-- close input group -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
                    ErrorMessage="Password required!" ControlToValidate="TextBoxPassword" 
                    ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        
        </div> <!-- close password -->
        <hr />
        <a href="Registration.aspx">Create an account first!</a>

        <div class="form-group">
            <asp:Button ID="ButtonLogin" runat="server" Text="Login" class="btn btn-success" OnClick="ButtonLogin_Click" />
            <br />
            <asp:Label ID="LabelMessage" runat="server" Text="" Visible="false"></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButtonResetPassowrd" runat="server" Visible="false" Enabled="false" PostBackUrl="~/ResetPassword.aspx">
                Forgot password</asp:LinkButton>

        </div> <!-- close button and labels-->
    </form>
</body>
</html>

