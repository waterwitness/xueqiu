package com.tencent.mm.sdk.openapi;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.GetMessageFromWX.Req;
import com.tencent.mm.sdk.modelmsg.LaunchFromWX.Req;
import com.tencent.mm.sdk.modelmsg.SendAuth.Resp;
import com.tencent.mm.sdk.modelmsg.SendMessageToWX.Resp;
import com.tencent.mm.sdk.modelmsg.ShowMessageFromWX.Req;
import com.tencent.mm.sdk.modelpay.PayResp;

final class b
  implements IWXAPI
{
  private static String e = null;
  private Context a;
  private String b;
  private boolean c = false;
  private boolean d = false;
  
  b(Context paramContext, String paramString, boolean paramBoolean)
  {
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "<init>, appId = " + paramString + ", checkSignature = " + paramBoolean);
    this.a = paramContext;
    this.b = paramString;
    this.c = paramBoolean;
  }
  
  private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length == 0) || (paramArrayOfByte2 == null) || (paramArrayOfByte2.length == 0))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, invalid arguments");
      return false;
    }
    if (paramArrayOfByte1.length != paramArrayOfByte2.length)
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, length is different");
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte1.length) {
        break label67;
      }
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        break;
      }
      i += 1;
    }
    label67:
    return true;
  }
  
  public final void detach()
  {
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "detach");
    this.d = true;
    this.a = null;
  }
  
  public final int getWXAppSupportAPI()
  {
    if (this.d) {
      throw new IllegalStateException("getWXAppSupportAPI fail, WXMsgImpl has been detached");
    }
    if (!isWXAppInstalled())
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "open wx app failed, not installed or signature check failed");
      return 0;
    }
    return new com.tencent.mm.sdk.a(this.a).getInt("_build_info_sdk_int_", 0);
  }
  
  public final boolean handleIntent(Intent paramIntent, IWXAPIEventHandler paramIWXAPIEventHandler)
  {
    if (paramIntent == null) {
      i = 0;
    }
    while (i == 0)
    {
      com.tencent.mm.sdk.b.a.b("MicroMsg.SDK.WXApiImplV10", "handleIntent fail, intent not from weixin msg");
      return false;
      str1 = paramIntent.getStringExtra("wx_token_key");
      if ((str1 == null) || (!str1.equals("com.tencent.mm.openapi.token"))) {
        i = 0;
      } else {
        i = 1;
      }
    }
    if (this.d) {
      throw new IllegalStateException("handleIntent fail, WXMsgImpl has been detached");
    }
    String str1 = paramIntent.getStringExtra("_mmessage_content");
    int i = paramIntent.getIntExtra("_mmessage_sdkVersion", 0);
    String str2 = paramIntent.getStringExtra("_mmessage_appPackage");
    if ((str2 == null) || (str2.length() == 0))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "invalid argument");
      return false;
    }
    if (!a(paramIntent.getByteArrayExtra("_mmessage_checksum"), com.tencent.mm.sdk.a.a.b.a(str1, i, str2)))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "checksum fail");
      return false;
    }
    i = paramIntent.getIntExtra("_wxapi_command_type", 0);
    switch (i)
    {
    default: 
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "unknown cmd = " + i);
      return false;
    case 1: 
      paramIWXAPIEventHandler.onResp(new SendAuth.Resp(paramIntent.getExtras()));
      return true;
    case 2: 
      paramIWXAPIEventHandler.onResp(new SendMessageToWX.Resp(paramIntent.getExtras()));
      return true;
    case 3: 
      paramIWXAPIEventHandler.onReq(new GetMessageFromWX.Req(paramIntent.getExtras()));
      return true;
    case 4: 
      paramIWXAPIEventHandler.onReq(new ShowMessageFromWX.Req(paramIntent.getExtras()));
      return true;
    case 5: 
      paramIWXAPIEventHandler.onResp(new PayResp(paramIntent.getExtras()));
      return true;
    }
    paramIWXAPIEventHandler.onReq(new LaunchFromWX.Req(paramIntent.getExtras()));
    return true;
  }
  
  public final boolean isWXAppInstalled()
  {
    if (this.d) {
      throw new IllegalStateException("isWXAppInstalled fail, WXMsgImpl has been detached");
    }
    try
    {
      PackageInfo localPackageInfo = this.a.getPackageManager().getPackageInfo("com.tencent.mm", 64);
      if (localPackageInfo == null) {
        return false;
      }
      boolean bool = a.a(localPackageInfo.signatures, this.c);
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return false;
  }
  
  public final boolean isWXAppSupportAPI()
  {
    if (this.d) {
      throw new IllegalStateException("isWXAppSupportAPI fail, WXMsgImpl has been detached");
    }
    return getWXAppSupportAPI() >= 570425345;
  }
  
  public final boolean openWXApp()
  {
    if (this.d) {
      throw new IllegalStateException("openWXApp fail, WXMsgImpl has been detached");
    }
    if (!isWXAppInstalled())
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "open wx app failed, not installed or signature check failed");
      return false;
    }
    try
    {
      this.a.startActivity(this.a.getPackageManager().getLaunchIntentForPackage("com.tencent.mm"));
      return true;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "startActivity fail, exception = " + localException.getMessage());
    }
    return false;
  }
  
  public final boolean registerApp(String paramString)
  {
    if (this.d) {
      throw new IllegalStateException("registerApp fail, WXMsgImpl has been detached");
    }
    if (!a.a(this.a, "com.tencent.mm", this.c))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "register app failed for wechat app signature check failed");
      return false;
    }
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "registerApp, appId = " + paramString);
    if (paramString != null) {
      this.b = paramString;
    }
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "register app " + this.a.getPackageName());
    paramString = new com.tencent.mm.sdk.a.a.a.a();
    paramString.l = "com.tencent.mm";
    paramString.m = "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER";
    paramString.j = ("weixin://registerapp?appid=" + this.b);
    return com.tencent.mm.sdk.a.a.a.a(this.a, paramString);
  }
  
  public final boolean sendReq(BaseReq paramBaseReq)
  {
    if (this.d) {
      throw new IllegalStateException("sendReq fail, WXMsgImpl has been detached");
    }
    if (!a.a(this.a, "com.tencent.mm", this.c))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "sendReq failed for wechat app signature check failed");
      return false;
    }
    if (!paramBaseReq.checkArgs())
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "sendReq checkArgs fail");
      return false;
    }
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "sendReq, req type = " + paramBaseReq.getType());
    Bundle localBundle = new Bundle();
    paramBaseReq.toBundle(localBundle);
    if (paramBaseReq.getType() == 5)
    {
      paramBaseReq = this.a;
      if (e == null)
      {
        e = new com.tencent.mm.sdk.a(paramBaseReq).getString("_wxapp_pay_entry_classname_", null);
        com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "pay, set wxappPayEntryClassname = " + e);
        if (e == null)
        {
          com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "pay fail, wxappPayEntryClassname is null");
          return false;
        }
      }
      com.tencent.mm.sdk.a.a.a locala = new com.tencent.mm.sdk.a.a.a();
      locala.k = localBundle;
      locala.h = "com.tencent.mm";
      locala.i = e;
      return com.tencent.mm.sdk.a.a.a(paramBaseReq, locala);
    }
    paramBaseReq = new com.tencent.mm.sdk.a.a.a();
    paramBaseReq.k = localBundle;
    paramBaseReq.j = ("weixin://sendreq?appid=" + this.b);
    paramBaseReq.h = "com.tencent.mm";
    paramBaseReq.i = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
    return com.tencent.mm.sdk.a.a.a(this.a, paramBaseReq);
  }
  
  public final boolean sendResp(BaseResp paramBaseResp)
  {
    if (this.d) {
      throw new IllegalStateException("sendResp fail, WXMsgImpl has been detached");
    }
    if (!a.a(this.a, "com.tencent.mm", this.c))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "sendResp failed for wechat app signature check failed");
      return false;
    }
    if (!paramBaseResp.checkArgs())
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "sendResp checkArgs fail");
      return false;
    }
    Bundle localBundle = new Bundle();
    paramBaseResp.toBundle(localBundle);
    paramBaseResp = new com.tencent.mm.sdk.a.a.a();
    paramBaseResp.k = localBundle;
    paramBaseResp.j = ("weixin://sendresp?appid=" + this.b);
    paramBaseResp.h = "com.tencent.mm";
    paramBaseResp.i = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
    return com.tencent.mm.sdk.a.a.a(this.a, paramBaseResp);
  }
  
  public final void unregisterApp()
  {
    if (this.d) {
      throw new IllegalStateException("unregisterApp fail, WXMsgImpl has been detached");
    }
    if (!a.a(this.a, "com.tencent.mm", this.c))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "unregister app failed for wechat app signature check failed");
      return;
    }
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "unregisterApp, appId = " + this.b);
    if ((this.b == null) || (this.b.length() == 0))
    {
      com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.WXApiImplV10", "unregisterApp fail, appId is empty");
      return;
    }
    com.tencent.mm.sdk.b.a.c("MicroMsg.SDK.WXApiImplV10", "unregister app " + this.a.getPackageName());
    com.tencent.mm.sdk.a.a.a.a locala = new com.tencent.mm.sdk.a.a.a.a();
    locala.l = "com.tencent.mm";
    locala.m = "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER";
    locala.j = ("weixin://unregisterapp?appid=" + this.b);
    com.tencent.mm.sdk.a.a.a.a(this.a, locala);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\mm\sdk\openapi\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */