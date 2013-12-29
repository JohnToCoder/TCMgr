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
            /*查询数据库提取用户信息*/
            string strSQL = "select a.ID, a.UserID,a.UserIDNum,a.UserName,a.UserPW,a.UserType,b.TypeName,a.UserEmail,a.UserTel  from tabUsers a left join dbo.tabUserType b on a.UserType = b.TypeID " + " where a.UserName = '" + txtUserName + "'";
            string strDataConn = ConfigurationManager.ConnectionStrings["SQLDataConnStr"].ConnectionString;
            SqlConnection dataConn = new SqlConnection(strDataConn);
            SqlCommand command = new SqlCommand(strSQL, dataConn);
            
            /*验证登陆信息：验证码、用户名、用户密码；Session保存用户信息*/
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
                        userInfo.uIDNum = dr["UserIDNum"].ToString();
                        userInfo.uName = dr["UserName"].ToString();
                        userInfo.uPW = dr["UserPW"].ToString();
                        userInfo.uTypeID = dr["UserType"].ToString();
                        userInfo.uType = dr["TypeName"].ToString();
                        userInfo.uEmail = dr["UserEmail"].ToString();
                        userInfo.uTel = dr["UserTel"].ToString();
                    }
                    dr.Close();
                }
                catch
                {
                    //数据库连接异常返回登陆页面
                    Response.Redirect("./login.aspx");
                }
                finally 
                { 
                    //最终都要关闭数据库连接
                    dataConn.Close(); 
                }
                if (userInfo.uName == txtUserName && userInfo.uPW == txtPassWord)
                {
                    /*保存用户Session信息*/
                    Session.Add("UserID", userInfo.uID);
                    Session.Add("UserIDNum", userInfo.uIDNum);
                    Session.Add("UserName", userInfo.uName);
                    Session.Add("UserType", userInfo.uTypeID);
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