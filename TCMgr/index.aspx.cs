﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCMgr
{
    public partial class index : System.Web.UI.Page
    {
        public string strUserName = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack) {
               strUserName = Session["UserName"].ToString()+" 欢迎您！";
            }
            
        }
    }
}