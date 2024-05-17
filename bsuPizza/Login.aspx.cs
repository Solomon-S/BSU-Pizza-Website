using bsuPizza.App_Code;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bsuPizza
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user"] = TextBoxUserName.Text;
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            CustomerUtil check = new CustomerUtil();
            check.UserName = TextBoxUserName.Text;
            check.Password = TextBoxPassword.Text;
            if (check.CheckUserExist() && check.CheckPassword())
            {
                Session["user"] = TextBoxUserName.Text;

                LabelMessage.Visible = true;
                LabelMessage.Text = "Welcome Back!";
                LabelMessage.ForeColor = Color.Green;
                Response.AddHeader("refresh", "4; url = Home.aspx");
            }
            else { 
                LabelMessage.Visible = true;
                LabelMessage.Text = "Your Username or Password is not correct";
                LabelMessage.ForeColor = Color.Red;
                LinkButtonResetPassowrd.Enabled = true;
                LinkButtonResetPassowrd.Visible = true;
            }//Close else
        }//Close Button Click
    }//Close Partial Class
}//Close namespace