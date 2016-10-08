package com.tencent.stat.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONObject;

public class StatCommonHelper
{
  private static String appkey;
  private static String deviceModel;
  private static StatLogger logger = null;
  private static String macId;
  private static Random random;
  private static String userId = null;
  
  static
  {
    appkey = null;
    macId = null;
    deviceModel = null;
    random = null;
  }
  
  public static boolean checkPermission(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }
  
  public static boolean checkPhoneState(Context paramContext)
  {
    return paramContext.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", paramContext.getPackageName()) == 0;
  }
  
  public static Long convertStringToLong(String paramString1, String paramString2, int paramInt1, int paramInt2, Long paramLong)
  {
    if ((paramString1 == null) || (paramString2 == null)) {}
    do
    {
      return paramLong;
      String str;
      if (!paramString2.equalsIgnoreCase("."))
      {
        str = paramString2;
        if (!paramString2.equalsIgnoreCase("|")) {}
      }
      else
      {
        str = "\\" + paramString2;
      }
      paramString2 = paramString1.split(str);
    } while (paramString2.length != paramInt2);
    try
    {
      paramString1 = Long.valueOf(0L);
      paramInt2 = 0;
      while (paramInt2 < paramString2.length)
      {
        long l1 = paramInt1;
        long l2 = paramString1.longValue();
        long l3 = Long.valueOf(paramString2[paramInt2]).longValue();
        paramInt2 += 1;
        paramString1 = Long.valueOf(l1 * (l2 + l3));
      }
      return paramString1;
    }
    catch (NumberFormatException paramString1) {}
    return paramLong;
  }
  
  public static String decode(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (Build.VERSION.SDK_INT < 8);
    try
    {
      str = new String(RC4.decrypt(StatBase64.decode(paramString.getBytes("UTF-8"), 0)), "UTF-8");
      return str;
    }
    catch (Throwable localThrowable)
    {
      logger.e(localThrowable);
    }
    return paramString;
  }
  
  public static byte[] deocdeGZipContent(byte[] paramArrayOfByte)
  {
    GZIPInputStream localGZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(paramArrayOfByte));
    byte[] arrayOfByte = new byte['က'];
    paramArrayOfByte = new ByteArrayOutputStream(paramArrayOfByte.length * 2);
    for (;;)
    {
      int i = localGZIPInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramArrayOfByte.write(arrayOfByte, 0, i);
    }
    return paramArrayOfByte.toByteArray();
  }
  
  public static String encode(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString;
    } while (Build.VERSION.SDK_INT < 8);
    try
    {
      str = new String(StatBase64.encode(RC4.encrypt(paramString.getBytes("UTF-8")), 0), "UTF-8");
      return str;
    }
    catch (Throwable localThrowable)
    {
      logger.e(localThrowable);
    }
    return paramString;
  }
  
  public static String getActivityName(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    return paramContext.getClass().getName();
  }
  
  public static String getAppKey(Context paramContext)
  {
    if (appkey != null) {
      return appkey;
    }
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.getString("TA_APPKEY");
        if (paramContext == null) {
          break label60;
        }
        appkey = paramContext;
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      logger.w("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
    for (;;)
    {
      return null;
      label60:
      logger.w("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
  }
  
  /* Error */
  public static String getAppVersion(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 36	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: aload_0
    //   5: invokevirtual 40	android/content/Context:getPackageName	()Ljava/lang/String;
    //   8: iconst_0
    //   9: invokevirtual 206	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   12: getfield 211	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   15: astore_0
    //   16: aload_0
    //   17: ifnull +12 -> 29
    //   20: aload_0
    //   21: astore_1
    //   22: aload_0
    //   23: invokevirtual 215	java/lang/String:length	()I
    //   26: ifne +6 -> 32
    //   29: ldc -39
    //   31: astore_1
    //   32: aload_1
    //   33: areturn
    //   34: astore_1
    //   35: ldc -37
    //   37: astore_0
    //   38: getstatic 27	com/tencent/stat/common/StatCommonHelper:logger	Lcom/tencent/stat/common/StatLogger;
    //   41: aload_1
    //   42: invokevirtual 222	com/tencent/stat/common/StatLogger:e	(Ljava/lang/Exception;)V
    //   45: aload_0
    //   46: areturn
    //   47: astore_1
    //   48: goto -10 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	paramContext	Context
    //   21	12	1	localObject	Object
    //   34	8	1	localException1	Exception
    //   47	1	1	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	16	34	java/lang/Exception
    //   22	29	47	java/lang/Exception
  }
  
  public static String getCurAppVersion(Context paramContext)
  {
    try
    {
      String str = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      paramContext = str;
      if (str == null) {
        paramContext = "";
      }
      return paramContext;
    }
    catch (Exception paramContext)
    {
      logger.e(paramContext);
    }
    return "";
  }
  
  public static String getDateFormat(long paramLong)
  {
    return new SimpleDateFormat("yyyyMMdd").format(new Date(paramLong));
  }
  
  public static String getDeviceID(Context paramContext)
  {
    if (checkPermission(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      String str = "";
      if (checkPhoneState(paramContext)) {
        str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      }
      if (str != null) {
        return str;
      }
      logger.error("deviceId is null");
      return null;
    }
    logger.e("Could not get permission of android.permission.READ_PHONE_STATE");
    return null;
  }
  
  public static DisplayMetrics getDisplayMetrics(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public static String getExternalStorageInfo(Context paramContext)
  {
    try
    {
      if (checkPermission(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE"))
      {
        if (Environment.getExternalStorageState().equals("mounted"))
        {
          paramContext = Environment.getExternalStorageDirectory().getPath();
          if (paramContext == null) {
            return null;
          }
          paramContext = new StatFs(paramContext);
          long l1 = paramContext.getBlockCount() * paramContext.getBlockSize() / 1000000L;
          long l2 = paramContext.getAvailableBlocks();
          l2 = paramContext.getBlockSize() * l2 / 1000000L;
          return String.valueOf(l2) + "/" + String.valueOf(l1);
        }
      }
      else
      {
        logger.warn("can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
        return null;
      }
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public static HttpHost getHttpProxy(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0) {
      return null;
    }
    do
    {
      try
      {
        paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (paramContext == null) {
          return null;
        }
        if ((paramContext.getTypeName() != null) && (paramContext.getTypeName().equalsIgnoreCase("WIFI"))) {
          return null;
        }
        paramContext = paramContext.getExtraInfo();
        if (paramContext == null) {
          return null;
        }
        if ((paramContext.equals("cmwap")) || (paramContext.equals("3gwap")) || (paramContext.equals("uniwap")))
        {
          paramContext = new HttpHost("10.0.0.172", 80);
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        logger.e(paramContext);
        return null;
      }
    } while (!paramContext.equals("ctwap"));
    paramContext = new HttpHost("10.0.0.200", 80);
    return paramContext;
  }
  
  public static String getInstallChannel(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.get("InstallChannel");
        if (paramContext != null) {
          return paramContext.toString();
        }
        logger.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        logger.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
      }
    }
    return null;
  }
  
  public static String getLinkedWay(Context paramContext)
  {
    if (checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE"))
    {
      Object localObject = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localObject != null) && (((NetworkInfo)localObject).isConnected()))
      {
        paramContext = ((NetworkInfo)localObject).getTypeName();
        localObject = ((NetworkInfo)localObject).getExtraInfo();
        if (paramContext != null)
        {
          if (paramContext.equalsIgnoreCase("WIFI")) {
            paramContext = "WIFI";
          }
          do
          {
            return paramContext;
            if (paramContext.equalsIgnoreCase("MOBILE"))
            {
              if (localObject != null) {
                return (String)localObject;
              }
              return "MOBILE";
            }
          } while (localObject == null);
          return (String)localObject;
        }
      }
    }
    else
    {
      logger.e("can not get the permission of android.permission.ACCESS_WIFI_STATE");
    }
    return null;
  }
  
  public static StatLogger getLogger()
  {
    if (logger == null)
    {
      StatLogger localStatLogger = new StatLogger("MtaSDK");
      logger = localStatLogger;
      localStatLogger.setDebugEnable(false);
    }
    return logger;
  }
  
  public static String getMacId(Context paramContext)
  {
    if ((macId == null) || ("" == macId)) {
      macId = getWifiMacAddress(paramContext);
    }
    return macId;
  }
  
  public static int getNextSessionID()
  {
    return getRandom().nextInt(Integer.MAX_VALUE);
  }
  
  private static Random getRandom()
  {
    if (random == null) {
      random = new Random();
    }
    return random;
  }
  
  public static long getSDKLongVersion(String paramString)
  {
    return convertStringToLong(paramString, ".", 100, 3, Long.valueOf(0L)).longValue();
  }
  
  public static String getSimOperator(Context paramContext)
  {
    if (checkPermission(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      if (!checkPhoneState(paramContext)) {
        break label52;
      }
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      try
      {
        paramContext = paramContext.getSimOperator();
        return paramContext;
      }
      catch (Exception paramContext)
      {
        logger.e(paramContext);
        return null;
      }
    }
    logger.e("Could not get permission of android.permission.READ_PHONE_STATE");
    label52:
    return null;
  }
  
  public static Integer getTelephonyNetworkType(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext != null) {
      return Integer.valueOf(paramContext.getNetworkType());
    }
    return null;
  }
  
  public static long getTomorrowStartMilliseconds()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(11, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    localCalendar.set(14, 0);
    return localCalendar.getTimeInMillis() + 86400000L;
  }
  
  public static String getUserID(Context paramContext)
  {
    if ((userId != null) && (userId.trim().length() != 0)) {
      return userId;
    }
    paramContext = getDeviceID(paramContext);
    userId = paramContext;
    if ((paramContext == null) || (userId.trim().length() == 0)) {
      userId = Integer.toString(getRandom().nextInt(Integer.MAX_VALUE));
    }
    return userId;
  }
  
  public static String getWifiMacAddress(Context paramContext)
  {
    if (checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
      try
      {
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext == null) {
          return "";
        }
        paramContext = paramContext.getConnectionInfo().getMacAddress();
        return paramContext;
      }
      catch (Exception paramContext)
      {
        logger.e(paramContext);
        return "";
      }
    }
    logger.e("Could not get permission of android.permission.ACCESS_WIFI_STATE");
    return "";
  }
  
  public static int hasRootAccess(Context paramContext)
  {
    if (e.a()) {
      return 1;
    }
    return 0;
  }
  
  public static boolean isNetworkAvailable(Context paramContext)
  {
    if (checkPermission(paramContext, "android.permission.INTERNET"))
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.isAvailable())) {
        return true;
      }
      logger.w("Network error");
      return false;
    }
    logger.warn("can not get the permisson of android.permission.INTERNET");
    return false;
  }
  
  public static boolean isWiFiActive(Context paramContext)
  {
    boolean bool2 = false;
    if (checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE"))
    {
      paramContext = (ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity");
      boolean bool1 = bool2;
      int i;
      if (paramContext != null)
      {
        paramContext = paramContext.getAllNetworkInfo();
        bool1 = bool2;
        if (paramContext != null) {
          i = 0;
        }
      }
      for (;;)
      {
        bool1 = bool2;
        if (i < paramContext.length)
        {
          if ((paramContext[i].getTypeName().equalsIgnoreCase("WIFI")) && (paramContext[i].isConnected())) {
            bool1 = true;
          }
        }
        else {
          return bool1;
        }
        i += 1;
      }
    }
    logger.warn("can not get the permission of android.permission.ACCESS_WIFI_STATE");
    return false;
  }
  
  public static boolean isWifiNet(Context paramContext)
  {
    if (checkPermission(paramContext, "android.permission.INTERNET"))
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      return (paramContext != null) && (paramContext.isAvailable()) && (paramContext.getTypeName().equalsIgnoreCase("WIFI"));
    }
    logger.warn("can not get the permisson of android.permission.INTERNET");
    return false;
  }
  
  public static void jsonPut(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0)) {
      paramJSONObject.put(paramString1, paramString2);
    }
  }
  
  public static String md5sum(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int i = 0;
      while (i < paramString.length)
      {
        int j = paramString[i] & 0xFF;
        if (j < 16) {
          ((StringBuffer)localObject).append("0");
        }
        ((StringBuffer)localObject).append(Integer.toHexString(j));
        i += 1;
      }
      paramString = ((StringBuffer)localObject).toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      logger.e(paramString);
    }
    return "0";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\StatCommonHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */