package com.pingan.paphone.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.security.MessageDigest;
import java.util.Calendar;
import java.util.List;

public class CommonUtil
{
  public static String TAG = CommonUtil.class.getSimpleName();
  public static Dialog dialog = null;
  private static Toast mToast = null;
  public static DisplayMetrics metric;
  
  public static boolean ExistSDCard()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }
  
  /* Error */
  public static void TDOnEvent(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: getstatic 57	com/pingan/a:z	Z
    //   3: ifeq +186 -> 189
    //   6: new 59	java/text/SimpleDateFormat
    //   9: dup
    //   10: ldc 61
    //   12: invokespecial 64	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   15: astore_0
    //   16: new 59	java/text/SimpleDateFormat
    //   19: dup
    //   20: ldc 66
    //   22: invokespecial 64	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   25: astore_3
    //   26: invokestatic 72	java/lang/System:currentTimeMillis	()J
    //   29: lstore 4
    //   31: aload_0
    //   32: lload 4
    //   34: invokestatic 78	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   37: invokevirtual 82	java/text/SimpleDateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   40: astore_0
    //   41: aload_3
    //   42: lload 4
    //   44: invokestatic 78	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   47: invokevirtual 82	java/text/SimpleDateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   50: astore_3
    //   51: new 84	java/lang/StringBuilder
    //   54: dup
    //   55: ldc 86
    //   57: invokespecial 87	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: aload_3
    //   61: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: ldc 93
    //   66: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_1
    //   70: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc 95
    //   75: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: aload_2
    //   79: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: astore_2
    //   86: new 84	java/lang/StringBuilder
    //   89: dup
    //   90: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   93: invokestatic 103	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   96: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   99: ldc 108
    //   101: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: astore_3
    //   108: new 110	java/io/File
    //   111: dup
    //   112: aload_3
    //   113: invokespecial 111	java/io/File:<init>	(Ljava/lang/String;)V
    //   116: astore_1
    //   117: aload_1
    //   118: invokevirtual 114	java/io/File:exists	()Z
    //   121: ifne +8 -> 129
    //   124: aload_1
    //   125: invokevirtual 117	java/io/File:mkdirs	()Z
    //   128: pop
    //   129: aconst_null
    //   130: astore_1
    //   131: new 110	java/io/File
    //   134: dup
    //   135: aload_3
    //   136: new 84	java/lang/StringBuilder
    //   139: dup
    //   140: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   143: aload_0
    //   144: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: ldc 119
    //   149: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: invokespecial 122	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   158: astore_0
    //   159: new 124	java/io/OutputStreamWriter
    //   162: dup
    //   163: new 126	java/io/FileOutputStream
    //   166: dup
    //   167: aload_0
    //   168: iconst_1
    //   169: invokespecial 129	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   172: invokespecial 132	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   175: astore_0
    //   176: aload_0
    //   177: aload_2
    //   178: invokevirtual 135	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   181: aload_0
    //   182: invokevirtual 138	java/io/OutputStreamWriter:flush	()V
    //   185: aload_0
    //   186: invokevirtual 141	java/io/OutputStreamWriter:close	()V
    //   189: return
    //   190: astore_0
    //   191: aconst_null
    //   192: astore_0
    //   193: aload_0
    //   194: ifnull -5 -> 189
    //   197: aload_0
    //   198: invokevirtual 138	java/io/OutputStreamWriter:flush	()V
    //   201: aload_0
    //   202: invokevirtual 141	java/io/OutputStreamWriter:close	()V
    //   205: return
    //   206: astore_0
    //   207: return
    //   208: astore_0
    //   209: aload_1
    //   210: ifnull +11 -> 221
    //   213: aload_1
    //   214: invokevirtual 138	java/io/OutputStreamWriter:flush	()V
    //   217: aload_1
    //   218: invokevirtual 141	java/io/OutputStreamWriter:close	()V
    //   221: aload_0
    //   222: athrow
    //   223: astore_1
    //   224: goto -3 -> 221
    //   227: astore_2
    //   228: aload_0
    //   229: astore_1
    //   230: aload_2
    //   231: astore_0
    //   232: goto -23 -> 209
    //   235: astore_1
    //   236: goto -43 -> 193
    //   239: astore_0
    //   240: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	241	0	paramContext	Context
    //   0	241	1	paramString1	String
    //   0	241	2	paramString2	String
    //   25	111	3	localObject	Object
    //   29	14	4	l	long
    // Exception table:
    //   from	to	target	type
    //   159	176	190	java/lang/Exception
    //   197	205	206	java/lang/Exception
    //   159	176	208	finally
    //   213	221	223	java/lang/Exception
    //   176	181	227	finally
    //   176	181	235	java/lang/Exception
    //   181	189	239	java/lang/Exception
  }
  
  public static void closeSoftKeyBoard(Context paramContext)
  {
    if (((Activity)paramContext).getCurrentFocus() != null) {
      ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(((Activity)paramContext).getCurrentFocus().getWindowToken(), 2);
    }
  }
  
  public static void closeSoftKeyBoard1(Activity paramActivity, EditText paramEditText)
  {
    paramActivity = (InputMethodManager)paramActivity.getSystemService("input_method");
    if (paramEditText != null) {
      paramActivity.hideSoftInputFromWindow(paramEditText.getWindowToken(), 0);
    }
  }
  
  public static List<String> ergodic(File paramFile, List<String> paramList)
  {
    paramFile = paramFile.listFiles();
    if (paramFile == null) {
      return paramList;
    }
    int j = paramFile.length;
    int i = 0;
    label17:
    File localFile;
    if (i < j)
    {
      localFile = paramFile[i];
      if (!localFile.isDirectory()) {
        break label58;
      }
      paramList.add(localFile.getPath());
      ergodic(localFile, paramList);
    }
    for (;;)
    {
      i += 1;
      break label17;
      break;
      label58:
      paramList.add(localFile.getPath());
    }
  }
  
  public static String getMd5ByFile(File paramFile)
  {
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    try
    {
      paramFile = localFileInputStream.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, paramFile.length());
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramFile);
      paramFile = new BigInteger(1, localMessageDigest.digest()).toString(16);
      try
      {
        localFileInputStream.close();
        return paramFile;
      }
      catch (IOException localIOException1)
      {
        localIOException1.printStackTrace();
        return paramFile;
      }
      try
      {
        localIOException1.close();
        throw paramFile;
      }
      catch (IOException localIOException2)
      {
        for (;;)
        {
          localIOException2.printStackTrace();
        }
      }
    }
    catch (Exception paramFile)
    {
      paramFile = paramFile;
      paramFile.printStackTrace();
      try
      {
        localIOException1.close();
        return null;
      }
      catch (IOException paramFile)
      {
        paramFile.printStackTrace();
        return null;
      }
    }
    finally {}
  }
  
  public static void getScreenInfo(Activity paramActivity)
  {
    metric = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getMetrics(metric);
  }
  
  public static String getStrFromInputSteam(File paramFile)
  {
    paramFile = new BufferedReader(new InputStreamReader(new FileInputStream(paramFile), "UTF-8"));
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      String str = paramFile.readLine();
      if (str == null) {
        break;
      }
      localStringBuffer.append(str);
    }
    return localStringBuffer.toString();
  }
  
  public static String getStrFromInputSteam(InputStream paramInputStream)
  {
    paramInputStream = new BufferedReader(new InputStreamReader(paramInputStream, "UTF-8"));
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      String str = paramInputStream.readLine();
      if (str == null) {
        break;
      }
      localStringBuffer.append(str);
    }
    return localStringBuffer.toString();
  }
  
  public static Object getValue(Context paramContext, String paramString1, String paramString2, Object paramObject)
  {
    paramString1 = paramContext.getSharedPreferences(paramString1, 1);
    String str = paramObject.getClass().getSimpleName();
    paramContext = (Context)paramObject;
    if (paramString1 != null)
    {
      if (!str.equals("String")) {
        break label47;
      }
      paramContext = paramString1.getString(paramString2, (String)paramObject);
    }
    label47:
    do
    {
      return paramContext;
      if (str.equals("Integer")) {
        return Integer.valueOf(paramString1.getInt(paramString2, ((Integer)paramObject).intValue()));
      }
      if (str.equals("Boolean")) {
        return Boolean.valueOf(paramString1.getBoolean(paramString2, ((Boolean)paramObject).booleanValue()));
      }
      if (str.equals("Long")) {
        return Long.valueOf(paramString1.getLong(paramString2, ((Long)paramObject).longValue()));
      }
      paramContext = (Context)paramObject;
    } while (!str.equals("Float"));
    return Float.valueOf(paramString1.getFloat(paramString2, ((Float)paramObject).floatValue()));
  }
  
  public static String getVersion(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      Log.e("~~~error", paramContext.toString());
    }
    return "2.7.0";
  }
  
  public static int getVersionCode(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i;
    }
    catch (Exception paramContext)
    {
      Log.e("~~~error", paramContext.toString());
    }
    return 0;
  }
  
  public static boolean hasSDCard()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }
  
  public static void hideSoftInputFromWindow(Activity paramActivity)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramActivity.getSystemService("input_method");
    if (localInputMethodManager != null) {
      localInputMethodManager.hideSoftInputFromWindow(paramActivity.getWindow().getDecorView().getWindowToken(), 0);
    }
  }
  
  public static boolean isValidEmail(String paramString)
  {
    return paramString.matches("[a-zA-Z0-9_\\.]{1,}@(([a-zA-z0-9]-*){1,}\\.){1,3}[a-zA-z\\-]{1,}");
  }
  
  public static boolean isWorkTime()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(System.currentTimeMillis());
    int i = localCalendar.get(11);
    localCalendar.get(12);
    return (i >= 8) && (i < 23);
  }
  
  /* Error */
  public static void saveMsg(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 110	java/io/File
    //   5: dup
    //   6: new 84	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   13: invokestatic 103	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   16: invokevirtual 443	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   19: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: ldc_w 445
    //   25: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokespecial 111	java/io/File:<init>	(Ljava/lang/String;)V
    //   34: astore_1
    //   35: aload_1
    //   36: invokevirtual 114	java/io/File:exists	()Z
    //   39: ifne +8 -> 47
    //   42: aload_1
    //   43: invokevirtual 448	java/io/File:createNewFile	()Z
    //   46: pop
    //   47: new 124	java/io/OutputStreamWriter
    //   50: dup
    //   51: new 126	java/io/FileOutputStream
    //   54: dup
    //   55: aload_1
    //   56: iconst_1
    //   57: invokespecial 129	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   60: invokespecial 132	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   63: astore_1
    //   64: aload_1
    //   65: new 84	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 99	java/lang/StringBuilder:<init>	()V
    //   72: aload_0
    //   73: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: ldc 86
    //   78: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 98	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokevirtual 135	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   87: aload_1
    //   88: invokevirtual 138	java/io/OutputStreamWriter:flush	()V
    //   91: aload_1
    //   92: invokevirtual 141	java/io/OutputStreamWriter:close	()V
    //   95: return
    //   96: astore_3
    //   97: aload_3
    //   98: invokevirtual 252	java/io/IOException:printStackTrace	()V
    //   101: goto -54 -> 47
    //   104: astore_0
    //   105: aconst_null
    //   106: astore_1
    //   107: aload_1
    //   108: ifnull -13 -> 95
    //   111: aload_1
    //   112: invokevirtual 138	java/io/OutputStreamWriter:flush	()V
    //   115: aload_1
    //   116: invokevirtual 141	java/io/OutputStreamWriter:close	()V
    //   119: return
    //   120: astore_0
    //   121: return
    //   122: astore_0
    //   123: aload_2
    //   124: astore_1
    //   125: aload_1
    //   126: ifnull +11 -> 137
    //   129: aload_1
    //   130: invokevirtual 138	java/io/OutputStreamWriter:flush	()V
    //   133: aload_1
    //   134: invokevirtual 141	java/io/OutputStreamWriter:close	()V
    //   137: aload_0
    //   138: athrow
    //   139: astore_1
    //   140: goto -3 -> 137
    //   143: astore_0
    //   144: goto -19 -> 125
    //   147: astore_0
    //   148: goto -41 -> 107
    //   151: astore_0
    //   152: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	153	0	paramString	String
    //   34	100	1	localObject1	Object
    //   139	1	1	localException	Exception
    //   1	123	2	localObject2	Object
    //   96	2	3	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   42	47	96	java/io/IOException
    //   47	64	104	java/lang/Exception
    //   111	119	120	java/lang/Exception
    //   47	64	122	finally
    //   129	137	139	java/lang/Exception
    //   64	87	143	finally
    //   64	87	147	java/lang/Exception
    //   87	95	151	java/lang/Exception
  }
  
  public static boolean setValue(Context paramContext, String paramString1, String paramString2, Object paramObject)
  {
    boolean bool = false;
    paramContext = paramContext.getSharedPreferences(paramString1, 2);
    paramString1 = paramObject.getClass().getSimpleName();
    SharedPreferences.Editor localEditor = paramContext.edit();
    if (paramContext != null)
    {
      if (!paramString1.equals("String")) {
        break label65;
      }
      localEditor.putString(paramString2, (String)paramObject);
    }
    for (;;)
    {
      bool = localEditor.commit();
      return bool;
      label65:
      if (paramString1.equals("Integer")) {
        localEditor.putInt(paramString2, ((Integer)paramObject).intValue());
      } else if (paramString1.equals("Boolean")) {
        localEditor.putBoolean(paramString2, ((Boolean)paramObject).booleanValue());
      } else if (paramString1.equals("Long")) {
        localEditor.putLong(paramString2, ((Long)paramObject).longValue());
      } else if (paramString1.equals("Float")) {
        localEditor.putFloat(paramString2, ((Float)paramObject).floatValue());
      }
    }
  }
  
  public static AlertDialog showAlert(Activity paramActivity, String paramString)
  {
    new AlertDialog.Builder(paramActivity).setTitle("提示").setMessage(paramString).setCancelable(false).setPositiveButton("确定", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    }).show();
  }
  
  public static void toast(Context paramContext, String paramString)
  {
    LogM.e(TAG + "thread", "Thread id:" + Thread.currentThread().getId() + " name: " + Thread.currentThread().getName());
    if (mToast == null) {
      mToast = Toast.makeText(paramContext, paramString, 0);
    }
    for (;;)
    {
      mToast.show();
      return;
      mToast.setText(paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\utils\CommonUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */