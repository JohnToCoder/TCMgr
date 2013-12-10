using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using TCMgr.Class;

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
            string txtUserName = this.txtUserName.Value.ToString();            
            string txtPassWord = this.txtPassWord.Value.ToString();            
            string chkcode = this.txtCode.Value.ToLower().ToString();
            User userInfo = new User(); //创建用户信息类，保存用户信息
            
            string strSQL = "select UserID,UserName,PassWord,UserType,TypeName,Email,Tel  from tabUser "+
                "left join dbo.tabUserType  on UserType = TypeID "+" where UserName = '"+ txtUserName+"'";
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
                        userInfo.uID = dr["UserID"].ToString();
                        userInfo.uName = dr["UserName"].ToString();
                        userInfo.uPW = dr["PassWord"].ToString();
                        userInfo.uType = dr["TypeName"].ToString();
                        userInfo.uEmail = dr["Email"].ToString();
                        userInfo.uTel = dr["Tel"].ToString();
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
                if (userInfo.uName == txtUserName && userInfo.uPW == txtPassWord)
                {
                    /*保存用户Session信息*/
                    Session.Add("UserID", userInfo.uID);
                    Session.Add("UserName", userInfo.uName);
                    Session.Add("TypeName", userInfo.uType);
                    Session.Add("Email", userInfo.uEmail);
                    Session.Add("Tel", userInfo.uTel);

                    Response.Redirect("./index.aspx");
                }
                else
                {
                    this.labErrorPN.Visible = true;
                }
               
            }
        }
    }
}