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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack) 
            {
                return;
            }
        }
        protected void Login_Btn(object sender, EventArgs e)
        {
            string txtUserName = this.txtUserName.Value.ToLower().ToString();
            string dataUserName ="";
            string txtPassWord = this.txtPassWord.Value.ToLower().ToString();
            string dataPassWord ="";
            string chkcode = this.txtCode.Value.ToLower().ToString();
            string strSQL = "select * from tabUser where UserName = '"+ txtUserName+"'";
            string strDataConn = ConfigurationManager.ConnectionStrings["SQLDataConnStr"].ConnectionString;
            SqlConnection dataConn = new SqlConnection(strDataConn);
            SqlCommand command = new SqlCommand(strSQL, dataConn);
            
            
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

                try
                {
                    dataConn.Open();
                    SqlDataReader dr = command.ExecuteReader();
                    while (dr.Read())
                    {
                        dataUserName = dr["UserName"].ToString();
                        dataPassWord = dr["PassWord"].ToString();
                    }
                    if (dataUserName.ToLower() == txtUserName && dataPassWord.ToLower() == txtPassWord)
                    {
                        Response.Redirect("./index.aspx");
                    }
                    else 
                    {
                        this.labErrorPN.Visible = true;
                    }
                    dr.Close();
                }
                catch 
                {
                    Response.Redirect("./login.aspx");
                }
                finally
                {                    
                    dataConn.Close();
                }
               
            }
        }
    }
}