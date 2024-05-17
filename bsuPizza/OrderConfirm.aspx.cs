﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bsuPizza.App_Code;

namespace bsuPizza
{
    public partial class OrderConfirm : System.Web.UI.Page
    {
        string addressId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCheckOut_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(addressId))
            {
                //Access Delivery_Address table
                AddressUtil adr = new AddressUtil();
                adr.AddressType = TextBoxAddressType.Text;
                adr.UserName = Session["user"].ToString();
                adr.Phone = TextBoxPhone.Text;
                adr.AddressLine1 = TextBoxAddressLine1.Text;
                adr.AddressLine2 = TextBoxAddressLine2.Text;
                adr.ZipCode = TextBoxZipCode.Text;

                adr.InsertAddress();
                addressId = adr.Delivery_ID;
            }

            this.ID = Request["id"];
            Response.Write("<script language=javascript> var agree;agree=confirm('You have successfully added into Delivery table'); </script>");
            Response.Redirect("Thanks.aspx?id=" + this.ID);


        }//close ButtonCheckOut_Click method

    }
}