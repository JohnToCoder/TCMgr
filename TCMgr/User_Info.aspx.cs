﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCMgr.Manage
{
    public partial class User_Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                txtuid.Value = Session["UserID"].ToString();
                txtuname.Value = Session["UserName"].ToString();               
                txtUserType.Value = Session["TypeName"].ToString();
                txtTell.Value = Session["Tel"].ToString();
                txtEmail.Value = Session["Email"].ToString();
            }
        }
    }
}