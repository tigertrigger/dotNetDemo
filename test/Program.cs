using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace test
{
    class Program
    {
        static void Main(string[] args)
        {
            Type t = typeof(Program);
            Assembly assemFromType = t.Assembly;
            Console.WriteLine("Assembly that contains Example:");
            Console.WriteLine("   {0}\n", assemFromType.FullName);

            // Get the currently executing assembly.
            Assembly currentAssem = Assembly.GetExecutingAssembly();
            Console.WriteLine("Currently executing assembly:");
            Console.WriteLine("   {0}\n", currentAssem.FullName);

            Console.WriteLine("The two Assembly objects are equal: {0}",
                              assemFromType.Equals(currentAssem));
            Console.ReadKey();
        }
    }
    public class UserMod
    {
        public class V1
        {

        }
        public void appLoginByOpenCode()
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

            Console.WriteLine("你好！");
        }
    }

}
