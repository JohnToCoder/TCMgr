using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Drawing;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient;
using TCMgr;
using TCMgr.Class;

namespace TCMgr.ashx
{
    /// <summary>
    /// Summary description for $codebehindclassname$
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class LoginHandler : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");

           
                string strUseID = context.Request["username"].ToString();
                string strPwd = context.Request["pwd"].ToString();
                string strCode = context.Request["Code"].ToString();

                if (context.Session["Code"] == null)
                {
                    context.Response.Write("overtime");
                }

                else if (strCode != context.Request.Cookies["checkcode"].Value.ToLower())
                {
                    context.Response.Write("CodeError");
                }

                else
                {
                    DataTable dtb = CheckUser(strUseID, strPwd);
                    if (dtb.Rows.Count < 1)
                    {
                        context.Response.Write("ErrUser");
                    }
                    else
                    {
                        User userInfo = new User();
                        userInfo.uID = dtb.Rows[0].ItemArray[0].ToString().Trim();
                        userInfo.uName = dtb.Rows[0].ItemArray[1].ToString().Trim();
                        userInfo.uPW = dtb.Rows[0].ItemArray[2].ToString().Trim();
                        userInfo.uTypeID = dtb.Rows[0].ItemArray[3].ToString().Trim();
                        userInfo.uType = dtb.Rows[0].ItemArray[4].ToString().Trim();
                        userInfo.uEmail = dtb.Rows[0].ItemArray[5].ToString().Trim();
                        userInfo.uTel = dtb.Rows[0].ItemArray[6].ToString().Trim();                        

                        context.Session["User"] = userInfo;
                        context.Response.Write("success");
                    }
                
            }
        }

       

        private DataTable CheckUser(string strUserId,string strPwd)
        {
            SqlParameter[] param ={
                                     new SqlParameter("@flag",1),
                                     new SqlParameter("@UserName",strUserId),
                                     new SqlParameter("@UserPW",strPwd)
                                 };
            DataTable dtb = ObjCon.MSSQL.ExectuteDataTable(CommandType.StoredProcedure, "User_SP", param);
            return dtb;
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
