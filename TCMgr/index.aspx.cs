using System;
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
        public string strUserType = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack) {
               strUserName = Session["UserName"].ToString()+" 欢迎您！";
               strUserType = Session["UserType"].ToString();
               InitLeftMenu();
            }            
        }

        private void InitLeftMenu()
        {
            string strUserType = Session["UserType"].ToString();
            if (strUserType == "0") {
                AdminMenu.Visible = true;
                MgrMenu.Visible = false;
                UserMenu.Visible = false;
            }
            else if (strUserType == "1")
            {
                AdminMenu.Visible = false;
                MgrMenu.Visible = true;
                UserMenu.Visible = false;
            }
            else {
                AdminMenu.Visible = false;
                MgrMenu.Visible = false;
                UserMenu.Visible = true;
            }
        }
    }
}