package com.xueqiu.android.base.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.g;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.common.model.ClientInfo;

public final class i
{
  public static final Uri a = Uri.parse("content://telephony/carriers/preferapn");
  
  public static String a()
  {
    b.a();
    Object localObject = ((ConnectivityManager)b.d().getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localObject != null) && (((NetworkInfo)localObject).isConnected()))
    {
      if (((NetworkInfo)localObject).getType() == 1) {
        localObject = "wifi";
      }
      String str;
      do
      {
        return (String)localObject;
        if (((NetworkInfo)localObject).getType() != 0) {
          break label173;
        }
        str = ((NetworkInfo)localObject).getSubtypeName();
        switch (((NetworkInfo)localObject).getSubtype())
        {
        default: 
          if ((str.equalsIgnoreCase("TD-SCDMA")) || (str.equalsIgnoreCase("WCDMA"))) {
            break label161;
          }
          localObject = str;
        }
      } while (!str.equalsIgnoreCase("CDMA2000"));
      label161:
      return "3G";
      return "2G";
      return "3G";
      return "4G";
    }
    label173:
    return "";
  }
  
  public static String a(Context paramContext)
  {
    if (paramContext == null) {}
    while (c(paramContext)) {
      return null;
    }
    for (;;)
    {
      try
      {
        Object localObject = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (localObject == null) {
          break;
        }
        localObject = ((ConnectivityManager)localObject).getNetworkInfo(0);
        if (localObject == null) {
          break;
        }
        localObject = ((NetworkInfo)localObject).getExtraInfo();
        if (localObject == null) {
          break;
        }
        localObject = ((String)localObject).toLowerCase();
        if ((((String)localObject).equals("cmwap")) || (((String)localObject).equals("3gwap")) || (((String)localObject).equals("uniwap"))) {
          break label166;
        }
        localObject = paramContext.getContentResolver().query(a, null, null, null, null);
        if (localObject == null) {
          break;
        }
        ((Cursor)localObject).moveToFirst();
        paramContext = ((Cursor)localObject).getString(((Cursor)localObject).getColumnIndex("user"));
        if ((!TextUtils.isEmpty(paramContext)) && (paramContext.toLowerCase().startsWith("ctwap")))
        {
          paramContext = "10.0.0.200";
          ((Cursor)localObject).close();
        }
      }
      catch (Exception paramContext)
      {
        return null;
      }
      paramContext = null;
    }
    return null;
    label166:
    paramContext = "10.0.0.172";
    return paramContext;
  }
  
  private static String a(String paramString)
  {
    String str;
    if (TextUtils.isEmpty(paramString)) {
      str = paramString;
    }
    char[] arrayOfChar;
    int k;
    int j;
    int i;
    do
    {
      return str;
      arrayOfChar = paramString.toCharArray();
      paramString = "";
      k = arrayOfChar.length;
      j = 0;
      i = 1;
      str = paramString;
    } while (j >= k);
    char c = arrayOfChar[j];
    if ((i != 0) && (Character.isLetter(c)))
    {
      paramString = paramString + Character.toUpperCase(c);
      i = 0;
    }
    for (;;)
    {
      j += 1;
      break;
      if (Character.isWhitespace(c)) {
        i = 1;
      }
      paramString = paramString + c;
    }
  }
  
  public static String b()
  {
    b.a();
    Context localContext = b.d();
    String str2 = DefaultPrefs.getString("device_id", "", localContext);
    String str1 = str2;
    if (str2.length() <= 0)
    {
      str1 = "1" + Build.MANUFACTURER.toUpperCase() + e(localContext);
      DefaultPrefs.putString("device_id", str1, localContext);
    }
    return str1;
  }
  
  public static String b(Context paramContext)
  {
    String str = "【" + Build.MODEL + "_";
    str = str + Build.VERSION.RELEASE + "_";
    str = str + Build.DISPLAY + ", ";
    StringBuilder localStringBuilder = new StringBuilder().append(str);
    if (c(paramContext)) {
      str = "wifi";
    }
    for (;;)
    {
      str = str;
      str = str + ", ";
      try
      {
        paramContext = str + "version_" + paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
        return paramContext + "】";
        str = "2g/3g";
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        for (;;)
        {
          paramContext.printStackTrace();
          paramContext = str;
        }
      }
    }
  }
  
  public static boolean c()
  {
    float f = r.a().getDisplayMetrics().density;
    return b.a().h() / f >= 600.0F;
  }
  
  public static boolean c(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null)
    {
      v.d("DeviceInfo", "couldn't get connectivity manager");
      return false;
    }
    paramContext = paramContext.getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.getType() == 1);
  }
  
  public static boolean d()
  {
    b.a();
    return c(b.d());
  }
  
  public static boolean d(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext != null) {
        return paramContext.isAvailable();
      }
    }
    return false;
  }
  
  private static String e(Context paramContext)
  {
    if (g.a().c.isMonkeyTestVersion()) {
      return paramContext.getString(2131166203);
    }
    String str1 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    String str2 = Build.BOARD.length() % 10 + Build.BRAND.length() % 10 + Build.CPU_ABI.length() % 10 + Build.DEVICE.length() % 10 + Build.DISPLAY.length() % 10 + Build.HOST.length() % 10 + Build.ID.length() % 10 + Build.MANUFACTURER.length() % 10 + Build.MODEL.length() % 10 + Build.PRODUCT.length() % 10 + Build.TAGS.length() % 10 + Build.TYPE.length() % 10 + Build.USER.length() % 10;
    String str3 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    try
    {
      paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
      return w.a(str1 + str2 + str3 + paramContext);
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        paramContext = "";
      }
    }
  }
  
  public static boolean e()
  {
    b.a();
    return d(b.d());
  }
  
  public static boolean f()
  {
    return Build.MANUFACTURER.toUpperCase().equalsIgnoreCase("XIAOMI");
  }
  
  public static String g()
  {
    return Build.MANUFACTURER.toUpperCase();
  }
  
  public static String h()
  {
    String str1 = Build.MANUFACTURER;
    String str2 = Build.MODEL;
    if (str2.startsWith(str1)) {}
    for (str1 = a(str2);; str1 = a(str1) + " " + str2) {
      return str1.replaceAll(" ", "_");
    }
  }
  
  public static String i()
  {
    b.a();
    String str = ((TelephonyManager)b.d().getSystemService("phone")).getSimOperator();
    if (str != null)
    {
      if ((str.equals("46000")) || (str.equals("46002")) || (str.equals("46007"))) {
        return "CMCC";
      }
      if (str.equals("46001")) {
        return "ChinaUnicom";
      }
      if (str.equals("46003")) {
        return "ChinaNet";
      }
    }
    return "unknown";
  }
  
  public static int j()
  {
    b.a();
    float f = b.d().getResources().getDisplayMetrics().density;
    String str;
    if (f == 0.75F) {
      str = "ldpi";
    }
    for (;;)
    {
      v.a("DeviceInfo", "display dpi= " + str);
      if ((!str.equals("mdpi")) && (!str.equals("ldpi"))) {
        break;
      }
      return 1;
      if ((f >= 1.0F) && (f < 1.5F)) {
        str = "mdpi";
      } else if (f == 1.5F) {
        str = "hdpi";
      } else if ((f > 1.5F) && (f <= 2.0F)) {
        str = "xhdpi";
      } else if ((f > 2.0F) && (f <= 3.0F)) {
        str = "xxhdpi";
      } else {
        str = "xxxhdpi";
      }
    }
    if ((str.equals("hdpi")) || (str.equals("xhdpi"))) {
      return 2;
    }
    if ((str.equals("xxhdpi")) || (str.equals("xxxhdpi"))) {
      return 3;
    }
    return 3;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */