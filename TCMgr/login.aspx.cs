using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TCMgr
{
    public partial class login : System.Web.UI.Page
    {
        private string strDataConn = ConfigurationManager.ConnectionStrings["SQLDataConnStr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            {
                return;
            }
        }
        protected void Login_Btn(object sender, EventArgs e)
        {
            string username = this.txtUserName.Value.ToLower().ToString();
            string password = this.txtPassWord.Value.ToLower().ToString();
            string chkcode = this.txtCode.Value.ToLower().ToString();

           // string strDataConn = ConfigurationManager.ConnectionStrings["SQLDataConnStr"].ConnectionString;
            SqlConnection dataConn = new SqlConnection(strDataConn);
            string str = "select * from tabUser";
            SqlCommand command = new SqlCommand(str, dataConn);
            dataConn.Open();
            SqlDataReader dr = command.ExecuteReader();
            while (dr.Read()) {
                 username = dr["UserName"].ToString();
                
            }
            dr.Close();
            dataConn.Close();
            if (chkcode != this.Request.Cookies["checkcode"].Value.ToLower())
            {
                //写脚本提示
                if (this.ClientScript.IsStartupScriptRegistered("checkcode") == false)
                {
                    this.ClientScript.RegisterStartupScript(this.GetType(), "checkcode", "<script>alert('验证码错误!');</script>");
                }
                return;
            }
            else 
            {
                Response.Redirect("./index.aspx");
            }
        }
    }
}