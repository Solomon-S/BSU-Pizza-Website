<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="bsuPizza.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<title>Registration </title>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
    <form id="Registration" runat="server" class ="form-horizontal">


        <div class ="form-group"> <!-- Start firstName group-->
            <div class ="col-sm-4 control-label"> <!-- Start firstName Label-->
                <asp:Label ID="lblFName" runat="server" Text="First Name"></asp:Label>
            </div> <!-- Close firstName Label-->
            <div class ="col-sm-4"> <!-- Start firstName Textbox-->
                <asp:TextBox ID="txtFirstName" runat="server" 
                    CssClass="form-control"></asp:TextBox>
            </div><!-- Close firstName Textbox-->
            <div class="col-sm-4"> <!-- Validation-->
                <asp:RequiredFieldValidator ID="RequiredFieldFName" runat="server" ErrorMessage="First Name Required!" 
                    Font-Bold="true" ForeColor="Red" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
            </div> <!-- Close Validation-->
        </div> <!-- Close firstName group-->
       

        <div class="form-group"> <!-- Start lastName group-->
            <div class="col-sm-4 control-label"> <!-- Start lastName Label-->
                <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
            </div> <!-- Close lastName Label-->
            <div class="col-sm-4"> <!-- Start lastName Textbox-->
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div> <!-- Close lastName Textbox-->
            <div class="col-sm-4"> <!-- Start lastName Validator-->
                <asp:RequiredFieldValidator ID="RequiredFieldLName" runat="server" ErrorMessage="Last Name is Required!" 
                    Font-Bold="true" ForeColor="Red" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </div> <!-- Close lastName Validator-->
        </div> <!-- Close lastName group-->

        
            <div class="form-group"> <!-- Start Username Group -->
                <div class="col-sm-4 control-label">
                    <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
                </div>
                <div class="col-sm-4"> <!-- Start Username Textbox -->
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div> <!-- Close Username Textbox -->
                <div class="col-sm-4"> <!-- Username Validation -->
                    <asp:RequiredFieldValidator ID="RequiredFieldUserName" runat="server" ErrorMessage="Username Required!" 
                        Font-Bold="true" ForeColor="Red" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                </div> <!-- Close Username Validation -->
            </div> <!-- Close Username Label -->
        

        <div class="form-group"> <!-- Start Email group -->
            <div class ="col-sm-4 control-label">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </div>
            <div class="col-sm-4"> <!-- Start Email Textbox -->
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div> <!-- Close Email Textbox -->  
            <div class="col-sm-4"> <!-- Start Validation group -->
                <asp:RequiredFieldValidator ID="email" runat="server" ErrorMessage="Email Required" 
                    ControlToValidate="txtEmail" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
                <br/>
                <asp:RegularExpressionValidator ID="expressionEmail" runat="server" Font-Bold="true" ForeColor="Red" 
                    ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Enter Valid Email!">
                </asp:RegularExpressionValidator>
            </div> <!-- Close Validation group -->        
        </div> <!-- Close Email group -->


        <div class="form-group"> <!-- Start Password group -->
            <div class ="col-sm-4 control-label"> <!-- Start Password Label -->
                <asp:Label ID="lblPassowrd" runat="server" Text="Password"></asp:Label>
            </div> <!-- Close Password Label -->
            <div class="col-sm-4"> <!-- Start Password Textbox -->
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
            </div> <!-- Close Password Textbox -->
            <div class="col-sm-4"> <!-- Passowrd Validation -->
                <asp:RequiredFieldValidator ID="validatePassword" runat="server" ErrorMessage="Password Required!" 
                    Font-Bold="true" ForeColor="Red" ControlToValidate="txtPassword">
                </asp:RequiredFieldValidator>
                    <br/>
                <asp:RegularExpressionValidator ID="expressionPassword" runat="server" 
                    Font-Bold="true" ForeColor="Red" ErrorMessage="You must enter at least 6 characters" 
                    ControlToValidate="txtPassword" ValidationExpression="[a-zA-Z0-9]{6,10}">
                </asp:RegularExpressionValidator>
            </div> <!-- Close Password Validation -->
        </div> <!-- Close Password group -->

        
        <div class="form-group"> <!-- Start Confirm Passowrd group -->
            <div class ="col-sm-4 control-label"> <!-- Start Confirm Password Label -->
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
            </div> <!-- Close Confirm Password Label -->
            <div class="col-sm-4"> <!-- Start Confirm Password Textbox -->
                <asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
            </div> <!-- Close Confirm Password Textbox -->
            <div class="col-sm-4"> <!-- Confirm Password Validation -->
                <asp:RequiredFieldValidator ID="validateConfirmPassword" runat="server" ErrorMessage="Confirm Password Required!" 
                    Font-Bold="true" ForeColor="Red" ControlToValidate="txtConfirmPassword">
                </asp:RequiredFieldValidator>
                <br/>
                <div> <!-- Start Confirm Validation -->
                    <asp:CompareValidator ID="comparePassword" runat="server" ErrorMessage="Both Passwords must be the same!" 
                        ControlToValidate="txtConfirmPassword"  ControlToCompare="txtPassword"  ForeColor="Red" Font-Bold="true"></asp:CompareValidator>
                </div>                              
            </div> <!-- Close Confirm Password Validation -->
        </div> <!-- Close Confirm Passowrd group -->
        

        <div class="form-group"> <!-- Start Country group -->
            <div class="col-sm-4 control-label"> <!-- Start Country label group -->
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
            </div> <!-- Close Country label group -->
            <div class="col-sm-4"> <!-- Start Country drop-down box -->
                <asp:DropDownList ID="dropDownCountry" runat="server" CssClass="form-control">
                    <asp:ListItem> </asp:ListItem>
                    <asp:ListItem>Mexico</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Japan </asp:ListItem>
                    <asp:ListItem>Germany </asp:ListItem>                                        
                </asp:DropDownList>
            </div> <!-- Close Country drop-down box -->
            <div> <!-- Start Country validation -->
                <asp:RequiredFieldValidator ID="requiredCountry" runat="server" ErrorMessage="Country Required!" 
                    ControlToValidate="dropDownCountry" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
            </div> <!-- Close Country validation -->           
        </div> <!-- Close Country group -->
        
        <div class="form-group"> <!-- Start Age group -->
            <div class="col-sm-4 control-label"><!-- Start Age Label -->
                <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
            </div> <!-- Close Age Label -->
            <div class="col-sm-4"> <!-- Start Age Textbox -->
                <asp:TextBox ID="txtAge" runat="server" CssClass="form-control"></asp:TextBox>
            </div> <!-- Close Age Textbox -->
            <div> <!-- Start Age Validation -->
                <asp:RequiredFieldValidator ID="requiredAge" runat="server" ErrorMessage="Age Required!" 
                    Font-Bold="true" ForeColor="Red" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
                <br/>
                <asp:RangeValidator ID="rangeAge" runat="server" ErrorMessage="You be at least 18!" 
                    MinimumValue="18" MaximumValue="100" ControlToValidate="txtAge" Type="Integer"></asp:RangeValidator>
            </div> <!-- Start Age Validation -->         
        </div> <!-- Close Age group -->
       
        <div class="form-group"> <!-- Start Gender group -->
            <div class="col-sm-4 control-label"> <!-- Start Gender Label -->
                <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
            </div> <!-- Close Gender group -->
            <div class="col-sm-8 radio-inline"> <!-- Start Gender Button -->
                <asp:RadioButton ID="radioButtonFemale" runat="server" Text="Female" Checked="true" GroupName="gender" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radioButtonMale" runat="server" Text="Male" GroupName="gender"/>
            </div> <!-- Close Gender Button -->
        </div> <!-- Close Gender group -->        

        <!-- Add buttons group -->
        <div class="form-group">
            <div class="col-sm-4 control-label">
                <asp:Label ID="lblWelcome" runat="server" Text="Welcome"></asp:Label>
            </div>
            <div class="col-sm-4"> <!-- Add Two Buttons -->
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input id="btnReset" type="reset" value="Reset" class="btn btn-danger"/>
            </div> <!-- Close Two Byttons -->
            
        </div> <!-- Close buttons group -->
        


    </form>
</body>
</html>
