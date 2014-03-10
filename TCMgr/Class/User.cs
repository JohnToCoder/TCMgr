using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TCMgr.Class
{
    //创建用户类  保存用户信息  保存Session值
    public class User
    {
        private string ID;
        private string UserID;
        private string UserIDNum;
        private string UserName;
        private string UserPW;
        private string UserTypeID;
        private string UserType;
        private string Email;
        private string Tel;

        public string aID { get { return ID; } set { ID = value; } }
        public string uID { get { return UserID; } set { UserID = value; } }
        public string uIDNum { get { return UserIDNum; } set { UserIDNum = value; } }
        public string uName { get { return UserName; } set { UserName = value; } }
        public string uPW { get { return UserPW; } set { UserPW = value; } }
        public string uTypeID { get { return UserTypeID; } set { UserTypeID = value; } }
        public string uType { get { return UserType; } set { UserType = value; } }
        public string uEmail { get { return Email; } set { Email = value; } }
        public string uTel { get { return Tel; } set { Tel = value; } }
    }
}