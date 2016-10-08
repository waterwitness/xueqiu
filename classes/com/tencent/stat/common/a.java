package com.tencent.stat.common;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import com.tencent.stat.StatConfig;
import java.util.Locale;
import java.util.TimeZone;

final class a
{
  String a;
  String b = "1.0.0";
  DisplayMetrics c;
  int d = Build.VERSION.SDK_INT;
  String e = Build.MODEL;
  String f = Build.MANUFACTURER;
  String g = Locale.getDefault().getLanguage();
  String h;
  String i;
  String j;
  String k;
  int l = 0;
  
  private a(Context paramContext)
  {
    this.c = StatCommonHelper.getDisplayMetrics(paramContext);
    this.a = StatCommonHelper.getCurAppVersion(paramContext);
    this.h = StatConfig.getInstallChannel(paramContext);
    this.i = StatCommonHelper.getSimOperator(paramContext);
    this.j = TimeZone.getDefault().getID();
    this.l = StatCommonHelper.hasRootAccess(paramContext);
    this.k = StatCommonHelper.getExternalStorageInfo(paramContext);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */