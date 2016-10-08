package com.tencent.open.cgireport;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.open.OpenConfig;
import java.util.ArrayList;
import java.util.Random;

public class ReportManager
{
  private static ReportManager a = null;
  private long b = 0L;
  private int c = 3;
  private boolean d = false;
  private Random e = new Random();
  private ReportDataModal f;
  private ArrayList g = new ArrayList();
  private ArrayList h = new ArrayList();
  
  public static ReportManager a()
  {
    if (a == null) {
      a = new ReportManager();
    }
    return a;
  }
  
  private String a(Context paramContext)
  {
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null)
      {
        Log.e("cgi_report_debug", "ReportManager getAPN failed:ConnectivityManager == null");
        return "no_net";
      }
      paramContext = paramContext.getActiveNetworkInfo();
      if ((paramContext == null) || (!paramContext.isAvailable()))
      {
        Log.e("cgi_report_debug", "ReportManager getAPN failed:NetworkInfo == null");
        return "no_net";
      }
      if (paramContext.getTypeName().toUpperCase().equals("WIFI"))
      {
        Log.i("cgi_report_debug", "ReportManager getAPN type = wifi");
        return "wifi";
      }
      paramContext = paramContext.getExtraInfo();
      if (paramContext == null)
      {
        Log.e("cgi_report_debug", "ReportManager getAPN failed:extraInfo == null");
        return "mobile_unknow";
      }
      paramContext = paramContext.toLowerCase();
      Log.i("cgi_report_debug", "ReportManager getAPN type = " + paramContext);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return "unknow";
  }
  
  private void a(Context paramContext, String paramString)
  {
    Log.i("cgi_report_debug", "ReportManager doUpload start");
    this.d = true;
    this.g = this.f.c();
    this.f.b();
    this.h = this.f.d();
    this.f.a();
    Bundle localBundle = new Bundle();
    localBundle.putString("appid", paramString);
    localBundle.putString("releaseversion", "QQConnect_SDK_Android_1_7");
    localBundle.putString("device", Build.DEVICE);
    localBundle.putString("qua", "V1_AND_OpenSDK_1.8_1077_RDM_B");
    localBundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,deviceinfo");
    int i = 0;
    while (i < this.g.size())
    {
      localBundle.putString(i + "_1", ((reportItem)this.g.get(i)).a());
      localBundle.putString(i + "_2", ((reportItem)this.g.get(i)).b());
      localBundle.putString(i + "_3", ((reportItem)this.g.get(i)).c());
      localBundle.putString(i + "_4", ((reportItem)this.g.get(i)).d());
      localBundle.putString(i + "_5", ((reportItem)this.g.get(i)).e());
      localBundle.putString(i + "_6", ((reportItem)this.g.get(i)).f());
      localBundle.putString(i + "_7", ((reportItem)this.g.get(i)).g());
      localBundle.putString(i + "_8", ((reportItem)this.g.get(i)).h());
      paramString = MobileInfoUtil.b(paramContext) + ((reportItem)this.g.get(i)).i();
      localBundle.putString(i + "_9", paramString);
      i += 1;
    }
    i = this.g.size();
    while (i < this.h.size() + this.g.size())
    {
      int j = i - this.g.size();
      localBundle.putString(i + "_1", ((reportItem)this.h.get(j)).a());
      localBundle.putString(i + "_2", ((reportItem)this.h.get(j)).b());
      localBundle.putString(i + "_3", ((reportItem)this.h.get(j)).c());
      localBundle.putString(i + "_4", ((reportItem)this.h.get(j)).d());
      localBundle.putString(i + "_5", ((reportItem)this.h.get(j)).e());
      localBundle.putString(i + "_6", ((reportItem)this.h.get(j)).f());
      localBundle.putString(i + "_7", ((reportItem)this.h.get(j)).g());
      localBundle.putString(i + "_8", ((reportItem)this.h.get(j)).h());
      paramString = MobileInfoUtil.b(paramContext) + ((reportItem)this.h.get(j)).i();
      localBundle.putString(i + "_9", paramString);
      i += 1;
    }
    a(paramContext, "http://wspeed.qq.com/w.cgi", "POST", localBundle);
  }
  
  private void a(Context paramContext, String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString2, String paramString3)
  {
    paramLong1 = SystemClock.elapsedRealtime() - paramLong1;
    Log.i("cgi_report_debug", "ReportManager updateDB url=" + paramString1 + ",resultCode=" + paramInt + ",timeCost=" + paramLong1 + ",reqSize=" + paramLong2 + ",rspSize=" + paramLong3);
    int j = 100 / b(paramContext, paramInt);
    int i;
    if (j <= 0) {
      i = 1;
    }
    for (;;)
    {
      paramContext = a(paramContext);
      this.f.a(paramContext, String.valueOf(i), paramString1, paramInt, paramLong1, paramLong2, paramLong3, paramString3);
      return;
      i = j;
      if (j > 100) {
        i = 100;
      }
    }
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    new b(this, paramString1, paramContext, paramBundle).start();
  }
  
  private boolean a(Context paramContext, int paramInt)
  {
    paramInt = b(paramContext, paramInt);
    if (this.e.nextInt(100) < paramInt)
    {
      Log.i("cgi_report_debug", "ReportManager availableForFrequency = ture");
      return true;
    }
    Log.i("cgi_report_debug", "ReportManager availableForFrequency = false");
    return false;
  }
  
  private int b(Context paramContext, int paramInt)
  {
    if (paramInt == 0)
    {
      i = OpenConfig.a(paramContext, null).b("Common_CGIReportFrequencySuccess");
      Log.d("OpenConfig_agent", "config 4:Common_CGIReportFrequencySuccess     config_value:" + i);
      paramInt = i;
      if (i == 0) {
        paramInt = 10;
      }
      Log.d("OpenConfig_agent", "config 4:Common_CGIReportFrequencySuccess     result_value:" + paramInt);
      return paramInt;
    }
    int i = OpenConfig.a(paramContext, null).b("Common_CGIReportFrequencyFailed");
    Log.d("OpenConfig_agent", "config 4:Common_CGIReportFrequencyFailed     config_value:" + i);
    paramInt = i;
    if (i == 0) {
      paramInt = 100;
    }
    Log.d("OpenConfig_agent", "config 4:Common_CGIReportFrequencyFailed     result_value:" + paramInt);
    return paramInt;
  }
  
  private boolean b(Context paramContext)
  {
    long l2 = OpenConfig.a(paramContext, null).c("Common_CGIReportTimeinterval");
    Log.d("OpenConfig_test", "config 5:Common_CGIReportTimeinterval     config_value:" + l2);
    long l1 = l2;
    if (l2 == 0L) {
      l1 = 1200L;
    }
    Log.d("OpenConfig_test", "config 5:Common_CGIReportTimeinterval     result_value:" + l1);
    l2 = System.currentTimeMillis() / 1000L;
    if ((this.b == 0L) || (l1 + this.b <= l2))
    {
      this.b = l2;
      Log.i("cgi_report_debug", "ReportManager availableForTime = ture");
      return true;
    }
    Log.i("cgi_report_debug", "ReportManager availableForTime = false");
    return false;
  }
  
  private boolean c(Context paramContext)
  {
    int j = OpenConfig.a(paramContext, null).b("Common_CGIReportMaxcount");
    Log.d("OpenConfig_test", "config 6:Common_CGIReportMaxcount     config_value:" + j);
    int i = j;
    if (j == 0) {
      i = 20;
    }
    Log.d("OpenConfig_test", "config 6:Common_CGIReportMaxcount     result_value:" + i);
    if (this.f.e() >= i)
    {
      Log.i("cgi_report_debug", "ReportManager availableForCount = ture");
      return true;
    }
    Log.i("cgi_report_debug", "ReportManager availableForCount = false");
    return false;
  }
  
  public void a(Context paramContext, String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString2)
  {
    a(paramContext, paramString1, paramLong1, paramLong2, paramLong3, paramInt, paramString2, "", null);
  }
  
  public void a(Context paramContext, String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString2, String paramString3, String paramString4)
  {
    String str = paramString4;
    if (paramString4 == null) {
      str = "1000067";
    }
    if (this.f == null) {
      this.f = new ReportDataModal(paramContext);
    }
    if (a(paramContext, paramInt) == true)
    {
      a(paramContext, paramString1, paramLong1, paramLong2, paramLong3, paramInt, paramString2, paramString3);
      if (this.d != true) {
        break label70;
      }
    }
    label70:
    do
    {
      return;
      if (b(paramContext) == true)
      {
        a(paramContext, str);
        return;
      }
    } while (c(paramContext) != true);
    a(paramContext, str);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\cgireport\ReportManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */