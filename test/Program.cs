using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace test
{
    //public delegate void output(HttpContext context);//定义的委托

    class Program
    {
        static void Main(string[] args)
        {
            string getCommand = "";
            string getVersion = "";

            if (getVersion == "") getVersion = "Program+UserMod";
            if (getCommand == "") getCommand = "appLoginByOpenCode";

            //传入的类全名称
            string className = "test." + getVersion;
            //得到此类的类型
            Type type = Type.GetType(className);
            // 获取当前程序集
            Assembly assembly = Assembly.GetExecutingAssembly();
            //动态创建当前类型的对象
            dynamic obj = assembly.CreateInstance(type.FullName);
            //根据传入的方法名获取当前类型的方法
            MethodInfo mthof = type.GetMethod(getCommand);
            //执行此方法，如果此方法有参数，则传入参数
            mthof.Invoke(obj, new object[] { "123", "321" });//输出“hello”
            //Delegate output1 = Delegate.CreateDelegate(typeof(output), obj, mthof);
            //执行委托
            Console.ReadKey();
        }
        public class UserMod
        {
            public class V1
            {
                public void a()
                {
                    Console.WriteLine(123);
                }
            }
            public void appLoginByOpenCode(string b, string a)
            {
                ////会员的短期凭证（内置小程序获取）
                //string opencode = context.Request["opencode"];
                ////会员的用户名（内置小程序获取）
                //string username = context.Request["username"];
                ////会员的头像（内置小程序获取）
                //string headimg = context.Request["headimg"];
                ////会员的性别（内置小程序获取）
                //string sex = context.Request["sex"];
                ////上级会员的ID （通过订单列表接口获取）
                //string InviteId = context.Request["inviteid"];
                //Globals.PrintIntroParams(context);

                //if (string.IsNullOrEmpty(opencode))
                //{
                //    Pub_CreateRes(context, false, 0, "没有微信临时凭证!", Subres, null); return;
                //}
                //if (string.IsNullOrEmpty(InviteId) || InviteId == "undefined")
                //{
                //    InviteId = "0";
                //}


                //SiteSettings masterSettings = SettingsManager.GetMasterSettings(true);
                //Hishop.Weixin.MP.Api.TokenApi tokenapi = new TokenApi();
                //string getJson = "";

                //string error = NewsApi.GetJsonValue(getJson, "errcode");
                //string errmsg = NewsApi.GetJsonValue(getJson, "errmsg");
                //string openid = NewsApi.GetJsonValue(getJson, "openid");
                //string session_key = NewsApi.GetJsonValue(getJson, "session_key");
                //Globals.Debuglog(getJson);

                Console.WriteLine(this.GetType());
                Console.WriteLine("==============");
                Console.WriteLine(a);
            }
        }
    }
    public class UserMod
    {
        public class V1
        {
            public void a()
            {
                Console.WriteLine(123);
            }
        }
        public void appLoginByOpenCode(string b, string a)
        {
            ////会员的短期凭证（内置小程序获取）
            //string opencode = context.Request["opencode"];
            ////会员的用户名（内置小程序获取）
            //string username = context.Request["username"];
            ////会员的头像（内置小程序获取）
            //string headimg = context.Request["headimg"];
            ////会员的性别（内置小程序获取）
            //string sex = context.Request["sex"];
            ////上级会员的ID （通过订单列表接口获取）
            //string InviteId = context.Request["inviteid"];
            //Globals.PrintIntroParams(context);

            //if (string.IsNullOrEmpty(opencode))
            //{
            //    Pub_CreateRes(context, false, 0, "没有微信临时凭证!", Subres, null); return;
            //}
            //if (string.IsNullOrEmpty(InviteId) || InviteId == "undefined")
            //{
            //    InviteId = "0";
            //}


            //SiteSettings masterSettings = SettingsManager.GetMasterSettings(true);
            //Hishop.Weixin.MP.Api.TokenApi tokenapi = new TokenApi();
            //string getJson = "";

            //string error = NewsApi.GetJsonValue(getJson, "errcode");
            //string errmsg = NewsApi.GetJsonValue(getJson, "errmsg");
            //string openid = NewsApi.GetJsonValue(getJson, "openid");
            //string session_key = NewsApi.GetJsonValue(getJson, "session_key");
            //Globals.Debuglog(getJson);

            Console.WriteLine(b);
            Console.WriteLine("==============");
            Console.WriteLine(a);
        }
    }

    public class B
    {
        int a;
        public B()
        {
            a = 10;
        }
        public void bb()
        {
            Console.WriteLine(a);
        }
        public class C
        {
            public void cc()
            {
                Console.WriteLine(321);
            }
        }
    }

}
