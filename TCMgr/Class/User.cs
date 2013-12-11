using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TCMgr.Class
{
    //创建用户类  保存用户信息  保存Session值
    public class User
    {
        private string UserID;
        private string UserName;
        private string PassWord;
        private string UserTypeID;
        private string UserType;
        private string Email;
        private string Tel;

        public string uID { get { return UserID; } set { UserID = value; } }
        public string uName { get { return UserName; } set { UserName = value; } }
        public string uPW { get { return PassWord; } set { PassWord = value; } }
        public string uTypeID { get { return UserTypeID; } set { UserTypeID = value; } }
        public string uType { get { return UserType; } set { UserType = value; } }
        public string uEmail { get { return Email; } set { Email = value; } }
        public string uTel { get { return Tel; } set { Tel = value; } }
    }
}