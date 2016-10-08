package com.xueqiu.android.base;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.util.Base64;
import android.util.Log;
import com.alipay.euler.andfix.patch.PatchManager;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.model.ClientInfo;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.UserVerifyType;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.Key;
import javax.crypto.Cipher;
import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import rx.c.a;
import rx.h;

public class n
{
  private static final String f = n.class.getSimpleName();
  private static n i = null;
  private static long j = 0L;
  Context a = null;
  public PatchManager b = null;
  boolean c = false;
  public boolean d = false;
  public SharedPreferences e = null;
  private String g = null;
  private String h = null;
  
  private n(Context paramContext)
  {
    this.a = paramContext;
    this.e = paramContext.getSharedPreferences("_snb_andfix_", 0);
    this.b = new PatchManager(this.a);
  }
  
  public static void a(Context paramContext)
  {
    if ((j != 0L) && (System.currentTimeMillis() - j < 5000L)) {
      return;
    }
    j = System.currentTimeMillis();
    paramContext.startService(new Intent(paramContext, DownloadPatchService.class));
  }
  
  private void a(String paramString)
  {
    if (this.c) {
      return;
    }
    this.b.removeAllPatch();
    this.b = new PatchManager(this.a);
    this.b.init(c(this.a));
    this.b.addPatch(paramString);
    this.b.loadPatch();
    this.c = true;
  }
  
  public static n b(Context paramContext)
  {
    if (i == null) {
      i = new n(paramContext);
    }
    return i;
  }
  
  /* Error */
  private File b(String paramString)
  {
    // Byte code:
    //   0: new 159	java/net/URL
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 161	java/net/URL:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: aload_2
    //   10: invokevirtual 165	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   13: invokevirtual 170	java/net/URLConnection:connect	()V
    //   16: new 172	java/io/BufferedInputStream
    //   19: dup
    //   20: aload_2
    //   21: invokevirtual 176	java/net/URL:openStream	()Ljava/io/InputStream;
    //   24: invokespecial 179	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   27: astore_2
    //   28: new 181	java/io/File
    //   31: dup
    //   32: aload_0
    //   33: getfield 56	com/xueqiu/android/base/n:a	Landroid/content/Context;
    //   36: invokevirtual 185	android/content/Context:getFilesDir	()Ljava/io/File;
    //   39: ldc -69
    //   41: invokespecial 190	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   44: astore_3
    //   45: aload_3
    //   46: invokevirtual 194	java/io/File:exists	()Z
    //   49: ifne +25 -> 74
    //   52: aload_3
    //   53: invokevirtual 197	java/io/File:mkdirs	()Z
    //   56: ifne +18 -> 74
    //   59: getstatic 45	com/xueqiu/android/base/n:f	Ljava/lang/String;
    //   62: ldc -57
    //   64: invokestatic 204	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   67: pop
    //   68: aload_2
    //   69: invokevirtual 209	java/io/InputStream:close	()V
    //   72: aconst_null
    //   73: areturn
    //   74: new 181	java/io/File
    //   77: dup
    //   78: aload_3
    //   79: aload_1
    //   80: aload_1
    //   81: ldc -45
    //   83: invokevirtual 217	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   86: iconst_1
    //   87: iadd
    //   88: aload_1
    //   89: invokevirtual 221	java/lang/String:length	()I
    //   92: invokevirtual 225	java/lang/String:substring	(II)Ljava/lang/String;
    //   95: invokespecial 190	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   98: astore 5
    //   100: new 227	java/io/FileOutputStream
    //   103: dup
    //   104: aload 5
    //   106: invokespecial 230	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   109: astore_1
    //   110: aload_1
    //   111: astore 4
    //   113: aload_2
    //   114: astore_3
    //   115: sipush 1024
    //   118: newarray <illegal type>
    //   120: astore 6
    //   122: aload_1
    //   123: astore 4
    //   125: aload_2
    //   126: astore_3
    //   127: aload_2
    //   128: aload 6
    //   130: invokevirtual 234	java/io/InputStream:read	([B)I
    //   133: istore 7
    //   135: iload 7
    //   137: iconst_m1
    //   138: if_icmpeq +57 -> 195
    //   141: aload_1
    //   142: astore 4
    //   144: aload_2
    //   145: astore_3
    //   146: aload_1
    //   147: aload 6
    //   149: iconst_0
    //   150: iload 7
    //   152: invokevirtual 238	java/io/FileOutputStream:write	([BII)V
    //   155: goto -33 -> 122
    //   158: astore 5
    //   160: aload_1
    //   161: astore 4
    //   163: aload_2
    //   164: astore_3
    //   165: aload 5
    //   167: invokevirtual 241	java/io/IOException:printStackTrace	()V
    //   170: aload_1
    //   171: ifnull +11 -> 182
    //   174: aload_1
    //   175: invokevirtual 244	java/io/FileOutputStream:flush	()V
    //   178: aload_1
    //   179: invokevirtual 245	java/io/FileOutputStream:close	()V
    //   182: aload_2
    //   183: ifnull -111 -> 72
    //   186: aload_2
    //   187: invokevirtual 209	java/io/InputStream:close	()V
    //   190: aconst_null
    //   191: areturn
    //   192: astore_1
    //   193: aconst_null
    //   194: areturn
    //   195: aload_1
    //   196: invokevirtual 244	java/io/FileOutputStream:flush	()V
    //   199: aload_1
    //   200: invokevirtual 245	java/io/FileOutputStream:close	()V
    //   203: aload_2
    //   204: invokevirtual 209	java/io/InputStream:close	()V
    //   207: aload 5
    //   209: areturn
    //   210: astore_1
    //   211: aconst_null
    //   212: astore 4
    //   214: aconst_null
    //   215: astore_2
    //   216: aload 4
    //   218: ifnull +13 -> 231
    //   221: aload 4
    //   223: invokevirtual 244	java/io/FileOutputStream:flush	()V
    //   226: aload 4
    //   228: invokevirtual 245	java/io/FileOutputStream:close	()V
    //   231: aload_2
    //   232: ifnull +7 -> 239
    //   235: aload_2
    //   236: invokevirtual 209	java/io/InputStream:close	()V
    //   239: aload_1
    //   240: athrow
    //   241: astore_1
    //   242: aconst_null
    //   243: areturn
    //   244: astore_3
    //   245: goto -46 -> 199
    //   248: astore_1
    //   249: goto -46 -> 203
    //   252: astore_1
    //   253: goto -46 -> 207
    //   256: astore_3
    //   257: goto -79 -> 178
    //   260: astore_1
    //   261: goto -79 -> 182
    //   264: astore_3
    //   265: goto -39 -> 226
    //   268: astore_3
    //   269: goto -38 -> 231
    //   272: astore_2
    //   273: goto -34 -> 239
    //   276: astore_1
    //   277: aconst_null
    //   278: astore 4
    //   280: goto -64 -> 216
    //   283: astore_1
    //   284: aload_3
    //   285: astore_2
    //   286: goto -70 -> 216
    //   289: astore 5
    //   291: aconst_null
    //   292: astore_1
    //   293: aconst_null
    //   294: astore_2
    //   295: goto -135 -> 160
    //   298: astore 5
    //   300: aconst_null
    //   301: astore_1
    //   302: goto -142 -> 160
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	305	0	this	n
    //   0	305	1	paramString	String
    //   8	228	2	localObject1	Object
    //   272	1	2	localIOException1	java.io.IOException
    //   285	10	2	localObject2	Object
    //   44	121	3	localObject3	Object
    //   244	1	3	localIOException2	java.io.IOException
    //   256	1	3	localIOException3	java.io.IOException
    //   264	1	3	localIOException4	java.io.IOException
    //   268	17	3	localIOException5	java.io.IOException
    //   111	168	4	str	String
    //   98	7	5	localFile	File
    //   158	50	5	localIOException6	java.io.IOException
    //   289	1	5	localIOException7	java.io.IOException
    //   298	1	5	localIOException8	java.io.IOException
    //   120	28	6	arrayOfByte	byte[]
    //   133	18	7	k	int
    // Exception table:
    //   from	to	target	type
    //   115	122	158	java/io/IOException
    //   127	135	158	java/io/IOException
    //   146	155	158	java/io/IOException
    //   186	190	192	java/io/IOException
    //   0	28	210	finally
    //   68	72	241	java/io/IOException
    //   195	199	244	java/io/IOException
    //   199	203	248	java/io/IOException
    //   203	207	252	java/io/IOException
    //   174	178	256	java/io/IOException
    //   178	182	260	java/io/IOException
    //   221	226	264	java/io/IOException
    //   226	231	268	java/io/IOException
    //   235	239	272	java/io/IOException
    //   28	68	276	finally
    //   74	110	276	finally
    //   115	122	283	finally
    //   127	135	283	finally
    //   146	155	283	finally
    //   165	170	283	finally
    //   0	28	289	java/io/IOException
    //   28	68	298	java/io/IOException
    //   74	110	298	java/io/IOException
  }
  
  private static boolean b(File paramFile, String paramString)
  {
    try
    {
      Object localObject2 = com.snowballfinance.message.a.b.a(Base64.decode("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEArbvR4JQ4i7DzFHuWGzdI\n/vEWGayCjNMnltyGdDDuq901KUmvgivbAiO8ZZG/mZ2cDG1OEv4Onedlcz4ftI7q\n9jSGAWyfxxaQY57jrOpUa8svVCvWM2w123aWmD3s2Tcoylg7hynTwSyz6rh8yf0b\nhkpgoXOVaXHNHJW9kF2LyCxS1wuLlk7gQVqpPWRlB8cYsuTiV99C/m+KK3sdhYAY\nuriMBewtpB5LUuGq3iZDctdoDWzH/BM1kvST9nzchXUesxH9PXbyRCy1/dqNb1I+\nglmf+vO+nO53vQ6Z9D+dZjCssgskovsH/yxF5MweQABmf86vR/KkgXuKyAcotFXA\ntwIDAQAB", 0));
      paramString = Base64.decode(paramString, 0);
      Object localObject1 = Cipher.getInstance("RSA/NONE/PKCS1Padding");
      ((Cipher)localObject1).init(2, (Key)localObject2);
      localObject2 = new ByteArrayOutputStream();
      int k = 0;
      int m = 0;
      while (paramString.length - k > 0)
      {
        int i1 = paramString.length - k;
        int n = i1;
        if (i1 > 256) {
          n = 256;
        }
        byte[] arrayOfByte = ((Cipher)localObject1).doFinal(paramString, k, n);
        ((ByteArrayOutputStream)localObject2).write(arrayOfByte, 0, arrayOfByte.length);
        k = m + 1;
        m = k;
        k *= 256;
      }
      paramString = new String(((ByteArrayOutputStream)localObject2).toByteArray(), "utf-8");
      paramFile = new FileInputStream(paramFile);
      localObject1 = new String(Hex.encodeHex(DigestUtils.md5(paramFile)));
      paramFile.close();
      boolean bool = paramString.equals(localObject1);
      return bool;
    }
    catch (Throwable paramFile)
    {
      paramFile.printStackTrace();
      Log.e(f, "check patch security failed");
    }
    return false;
  }
  
  private static String c(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private void d()
  {
    this.b.removeAllPatch();
    this.e.edit().clear().apply();
  }
  
  public final void a()
  {
    try
    {
      this.b.init(c(this.a));
      String str = this.e.getString("patch_file_launch_to_load", "");
      if ((!c.a(str)) && (new File(str).exists()))
      {
        a(str);
        Log.d(f, "success add patch while launch , path = " + str);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      d();
      Log.e(f, "andfix init failed " + localThrowable.getMessage());
      MobclickAgent.onEvent(this.a, "andfix_init_failed");
    }
  }
  
  final void a(Context paramContext, final o paramo)
  {
    JsonObject localJsonObject = new JsonObject();
    try
    {
      long l = UserLogonDataPrefs.getLogonUserId();
      localJsonObject.addProperty("user_id", Long.valueOf(l));
      localJsonObject.addProperty("device", i.h());
      localJsonObject.addProperty("system_version", Build.VERSION.RELEASE);
      localJsonObject.addProperty("channel_id", g.a().a().getChannelId());
      localObject = DBManager.getInstance().queryUserByUserId(l);
      if ((localObject != null) && (((User)localObject).getVerifyType() != null)) {
        localJsonObject.addProperty("user_verify_type", Integer.valueOf(((User)localObject).getVerifyType().getValue()));
      }
    }
    catch (Throwable localThrowable)
    {
      Object localObject;
      for (;;) {}
    }
    localObject = new StringBuilder("https://api.xueqiu.com/jspatch/config.json");
    try
    {
      ((StringBuilder)localObject).append("?app_key=" + URLEncoder.encode("02dfc0390c04c8e8464e0b2d13c5cfcb", "UTF-8"));
      ((StringBuilder)localObject).append("&app_version=" + URLEncoder.encode(c(paramContext), "UTF-8"));
      ((StringBuilder)localObject).append("&user_data=" + URLEncoder.encode(m.a().toJson(localJsonObject), "UTF-8"));
      new AsyncTask()
      {
        private JsonObject a()
        {
          try
          {
            Object localObject = new Request.Builder().url(this.a).build();
            localObject = new String(new OkHttpClient().newCall((Request)localObject).execute().body().bytes(), "UTF-8");
            localObject = (JsonObject)m.a().fromJson((String)localObject, JsonObject.class);
            return (JsonObject)localObject;
          }
          catch (Throwable localThrowable)
          {
            localThrowable.printStackTrace();
            Log.e(n.c(), "request patch failed" + localThrowable.getMessage());
          }
          return null;
        }
      }.execute(new Void[0]);
      return;
    }
    catch (UnsupportedEncodingException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public final void b()
  {
    a(this.a, new o()
    {
      public final void a(final JsonObject paramAnonymousJsonObject)
      {
        ag.c.a(new a()
        {
          public final void a()
          {
            n.b(n.this, paramAnonymousJsonObject);
          }
        });
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */