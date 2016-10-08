package u.aly;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import javax.microedition.khronos.opengles.GL10;

public class er
{
  protected static final String a = er.class.getName();
  
  private static int a(Object paramObject, String paramString)
  {
    try
    {
      paramString = DisplayMetrics.class.getDeclaredField(paramString);
      paramString.setAccessible(true);
      int i = paramString.getInt(paramObject);
      return i;
    }
    catch (Exception paramObject)
    {
      ((Exception)paramObject).printStackTrace();
    }
    return -1;
  }
  
  public static String a()
  {
    Object localObject2 = null;
    String str2 = null;
    Object localObject1 = localObject2;
    for (;;)
    {
      try
      {
        localFileReader = new FileReader("/proc/cpuinfo");
        str1 = str2;
        localObject1 = localObject2;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        FileReader localFileReader;
        String str1;
        BufferedReader localBufferedReader;
        es.b(a, "Could not open file /proc/cpuinfo", localFileNotFoundException);
        continue;
      }
      try
      {
        localBufferedReader = new BufferedReader(localFileReader, 1024);
        str1 = str2;
        localObject1 = localObject2;
        str2 = localBufferedReader.readLine();
        str1 = str2;
        localObject1 = str2;
        localBufferedReader.close();
        str1 = str2;
        localObject1 = str2;
        localFileReader.close();
        localObject1 = str2;
      }
      catch (IOException localIOException)
      {
        localObject1 = str1;
        es.b(a, "Could not read from file /proc/cpuinfo", localIOException);
        localObject1 = str1;
      }
    }
    if (localObject1 != null) {
      return ((String)localObject1).substring(((String)localObject1).indexOf(':') + 1).trim();
    }
    return "";
  }
  
  public static String a(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return String.valueOf(i);
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "";
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }
  
  public static String[] a(GL10 paramGL10)
  {
    try
    {
      String str = paramGL10.glGetString(7936);
      paramGL10 = paramGL10.glGetString(7937);
      return new String[] { str, paramGL10 };
    }
    catch (Exception paramGL10)
    {
      es.b(a, "Could not read gpu infor:", paramGL10);
    }
    return new String[0];
  }
  
  public static String b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return "";
  }
  
  public static String c(Context paramContext)
  {
    Object localObject = (TelephonyManager)paramContext.getSystemService("phone");
    if (localObject == null) {
      es.d(a, "No IMEI.");
    }
    try
    {
      if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      {
        str = ((TelephonyManager)localObject).getDeviceId();
        localObject = str;
        if (TextUtils.isEmpty(str))
        {
          es.d(a, "No IMEI.");
          str = k(paramContext);
          localObject = str;
          if (TextUtils.isEmpty(str))
          {
            es.d(a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
            localObject = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
            es.a(a, "getDeviceId: Secure.ANDROID_ID: " + (String)localObject);
          }
        }
        return (String)localObject;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        es.d(a, "No IMEI.", localException);
        String str = "";
      }
    }
  }
  
  public static String d(Context paramContext)
  {
    return ex.b(c(paramContext));
  }
  
  public static String[] e(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "";
    arrayOfString[1] = "";
    try
    {
      if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0)
      {
        arrayOfString[0] = "";
        return arrayOfString;
      }
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null)
      {
        arrayOfString[0] = "";
        return arrayOfString;
      }
      if (paramContext.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED)
      {
        arrayOfString[0] = "Wi-Fi";
        return arrayOfString;
      }
      paramContext = paramContext.getNetworkInfo(0);
      if (paramContext.getState() == NetworkInfo.State.CONNECTED)
      {
        arrayOfString[0] = "2G/3G";
        arrayOfString[1] = paramContext.getSubtypeName();
        return arrayOfString;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return arrayOfString;
  }
  
  public static boolean f(Context paramContext)
  {
    return "Wi-Fi".equals(e(paramContext)[0]);
  }
  
  public static boolean g(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext != null)
      {
        boolean bool = paramContext.isConnectedOrConnecting();
        return bool;
      }
      return false;
    }
    catch (Exception paramContext) {}
    return true;
  }
  
  public static int h(Context paramContext)
  {
    try
    {
      paramContext = Calendar.getInstance(r(paramContext));
      if (paramContext != null)
      {
        int i = paramContext.getTimeZone().getRawOffset() / 3600000;
        return i;
      }
    }
    catch (Exception paramContext)
    {
      es.a(a, "error in getTimeZone", paramContext);
    }
    return 8;
  }
  
  public static String[] i(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    try
    {
      paramContext = r(paramContext);
      if (paramContext != null)
      {
        arrayOfString[0] = paramContext.getCountry();
        arrayOfString[1] = paramContext.getLanguage();
      }
      if (TextUtils.isEmpty(arrayOfString[0])) {
        arrayOfString[0] = "Unknown";
      }
      if (TextUtils.isEmpty(arrayOfString[1])) {
        arrayOfString[1] = "Unknown";
      }
      return arrayOfString;
    }
    catch (Exception paramContext)
    {
      es.b(a, "error in getLocaleInfo", paramContext);
    }
    return arrayOfString;
  }
  
  public static String j(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.getString("UMENG_APPKEY");
        if (paramContext != null) {
          return paramContext.trim();
        }
        es.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        es.b(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", paramContext);
      }
    }
    return null;
  }
  
  public static String k(Context paramContext)
  {
    try
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      if (a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
        return localWifiManager.getConnectionInfo().getMacAddress();
      }
      es.d(a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        es.d(a, "Could not get mac address." + paramContext.toString());
      }
    }
    return "";
  }
  
  public static int[] l(Context paramContext)
  {
    for (;;)
    {
      try
      {
        localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        if ((paramContext.getApplicationInfo().flags & 0x2000) != 0) {
          break label126;
        }
        j = a(localDisplayMetrics, "noncompatWidthPixels");
        i = a(localDisplayMetrics, "noncompatHeightPixels");
      }
      catch (Exception paramContext)
      {
        DisplayMetrics localDisplayMetrics;
        label75:
        es.b(a, "read resolution fail", paramContext);
        return null;
      }
      int i = localDisplayMetrics.widthPixels;
      int j = localDisplayMetrics.heightPixels;
      int k = i;
      i = j;
      paramContext = new int[2];
      if (k > i)
      {
        paramContext[0] = i;
        paramContext[1] = k;
        return paramContext;
      }
      paramContext[0] = k;
      paramContext[1] = i;
      return paramContext;
      label126:
      do
      {
        k = j;
        break label75;
        i = 0;
        j = -1;
        if (j == -1) {
          break;
        }
      } while (i != -1);
    }
  }
  
  public static String m(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkOperatorName();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      es.a(a, "read carrier fail", paramContext);
    }
    return "Unknown";
  }
  
  public static String n(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if ((paramContext != null) && (paramContext.metaData != null))
      {
        paramContext = paramContext.metaData.get("UMENG_CHANNEL");
        if (paramContext != null)
        {
          paramContext = paramContext.toString();
          if (paramContext != null) {
            return paramContext;
          }
          es.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
          return "Unknown";
        }
      }
    }
    catch (Exception paramContext)
    {
      es.a(a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
      paramContext.printStackTrace();
    }
    return "Unknown";
  }
  
  public static String o(Context paramContext)
  {
    return paramContext.getPackageName();
  }
  
  public static String p(Context paramContext)
  {
    return paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
  }
  
  public static boolean q(Context paramContext)
  {
    boolean bool = false;
    try
    {
      int i = paramContext.getApplicationInfo().flags;
      if ((i & 0x2) != 0) {
        bool = true;
      }
      return bool;
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  private static Locale r(Context paramContext)
  {
    Object localObject = null;
    try
    {
      Configuration localConfiguration = new Configuration();
      localConfiguration.setToDefaults();
      Settings.System.getConfiguration(paramContext.getContentResolver(), localConfiguration);
      paramContext = localConfiguration.locale;
      localObject = paramContext;
      if (paramContext == null) {
        localObject = Locale.getDefault();
      }
      return (Locale)localObject;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        es.b(a, "fail to read user config locale");
        paramContext = (Context)localObject;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\er.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */