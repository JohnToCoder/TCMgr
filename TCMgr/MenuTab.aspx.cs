using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TCMgr
{
    public partial class MeauTab : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strUserType = Session["UserType"].ToString();
            if (!Page.IsPostBack)
            {
                //  strUserType = Session["UserType"].ToString();
                if (strUserType == "0")
                {
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
                else if (strUserType == "2") 
                {
                    AdminMenu.Visible = false;
                    MgrMenu.Visible = false;
                    UserMenu.Visible = true;
                }
            }  
        }
    }
}