﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;

namespace TCMgr.ashx
{
    /// <summary>
    /// getFlatInfo 的摘要说明
    /// 查询数据库获取房屋信息
    /// </summary>
    public class getFlatInfo : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {
            string json = "{\"total\": ";
            string strSQL = "select a.ID,a.FlatsID,a.RoomID,(case when a.RoomStatus='0' then '否' else '是' end) as RoomStatus,b.FlatsAddr from dbo.tabRoom a left join dbo.tabFlatsAdmin b on a.FlatsID=b.FlatsID";
            string strDataConn = ConfigurationManager.ConnectionStrings["SQLDataConnStr"].ConnectionString;
            SqlConnection dataConn = new SqlConnection(strDataConn);

            dataConn.Open();
            SqlDataAdapter da = new SqlDataAdapter(strSQL, strDataConn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            json += "20" + ",\"rows\":[";
            foreach (DataRow row in dt.Rows)
            {
                json += "{\"ID\":\"" + row["ID"].ToString() + "\",";
                json += "\"FlatsID\":\"" + row["FlatsID"].ToString() + "\",";
                json += "\"RoomID\":\"" + row["RoomID"].ToString() + "\",";
                json += "\"RoomStatus\":\"" + row["RoomStatus"].ToString() + "\",";
                json += "\"FlatsAddr\":\"" + row["FlatsAddr"].ToString() + "\"},";
            }
            json = json.Remove(json.LastIndexOf(','), 1);
            json += "]}";
            context.Response.ContentType = "application/json";
            context.Response.Write(json);
            context.Response.End();
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