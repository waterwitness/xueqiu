package com.xiaomi.d;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Process;
import android.text.TextUtils;
import com.xiaomi.a.a.d.d;
import com.xiaomi.b.a.a.a.i;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class f
{
  protected static Map<String, ArrayList<String>> b = new HashMap();
  protected static boolean f = false;
  private static f m;
  private static g n;
  private static String o;
  private static String p;
  protected Map<String, c> a = new HashMap();
  public Context c;
  protected h d;
  String e = "isp_prov_city_country_ip";
  private e g;
  private String h = "0";
  private long i = 0L;
  private final long j = 15L;
  private long k = 0L;
  private n l = new o(this);
  
  protected f(Context paramContext, e parame, h paramh, String paramString1, String paramString2, String paramString3)
  {
    this.c = paramContext.getApplicationContext();
    if (this.c == null) {
      this.c = paramContext;
    }
    this.d = paramh;
    if (parame == null)
    {
      this.g = new p(this);
      this.h = paramString1;
      if (paramString2 == null) {
        break label132;
      }
      label108:
      o = paramString2;
      if (paramString3 == null) {
        break label141;
      }
    }
    for (;;)
    {
      p = paramString3;
      return;
      this.g = parame;
      break;
      label132:
      paramString2 = paramContext.getPackageName();
      break label108;
      label141:
      paramString3 = m();
    }
  }
  
  public static f a()
  {
    try
    {
      if (m == null) {
        throw new IllegalStateException("the host manager is not initialized yet.");
      }
    }
    finally {}
    f localf = m;
    return localf;
  }
  
  public static <T> String a(Collection<T> paramCollection, String paramString)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty())) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      localStringBuilder.append(paramCollection.next());
      if (paramCollection.hasNext()) {
        localStringBuilder.append(paramString);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String a(String[] paramArrayOfString, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramArrayOfString[0]);
    int i1 = 1;
    while (i1 < 5)
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(paramArrayOfString[i1]);
      i1 += 1;
    }
    return localStringBuilder.toString();
  }
  
  private ArrayList<b> a(ArrayList<String> paramArrayList)
  {
    k();
    Object localObject2;
    synchronized (this.a)
    {
      g();
      localObject2 = this.a.keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        if (!paramArrayList.contains(localObject3)) {
          paramArrayList.add(localObject3);
        }
      }
    }
    synchronized (b)
    {
      localObject2 = b.keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (String)((Iterator)localObject2).next();
        if (!paramArrayList.contains(localObject3)) {
          paramArrayList.add(localObject3);
        }
      }
    }
    if (!paramArrayList.contains(c())) {
      paramArrayList.add(c());
    }
    Object localObject3 = new ArrayList(paramArrayList.size());
    int i1 = 0;
    while (i1 < paramArrayList.size())
    {
      ((ArrayList)localObject3).add(null);
      i1 += 1;
    }
    for (;;)
    {
      int i2;
      try
      {
        if (!d.b(this.c)) {
          break label818;
        }
        ??? = "wifi";
        localObject2 = a(paramArrayList, (String)???, this.h);
        if (!TextUtils.isEmpty((CharSequence)localObject2))
        {
          localObject2 = new JSONObject((String)localObject2);
          if ("OK".equalsIgnoreCase(((JSONObject)localObject2).getString("S")))
          {
            JSONObject localJSONObject1 = ((JSONObject)localObject2).getJSONObject("R");
            String str2 = localJSONObject1.getString("province");
            String str3 = localJSONObject1.getString("city");
            String str4 = localJSONObject1.getString("isp");
            String str5 = localJSONObject1.getString("ip");
            String str6 = localJSONObject1.getString("country");
            JSONObject localJSONObject2 = localJSONObject1.getJSONObject((String)???);
            localObject2 = ???;
            if (((String)???).equals("wap")) {
              localObject2 = b();
            }
            com.xiaomi.a.a.b.c.a("get bucket: " + str6 + " " + str2 + "  isp:" + str4 + " " + (String)localObject2 + " hosts:" + localJSONObject2.toString());
            i1 = 0;
            if (i1 < paramArrayList.size())
            {
              localObject2 = (String)paramArrayList.get(i1);
              ??? = localJSONObject2.optJSONArray((String)localObject2);
              if (??? == null)
              {
                com.xiaomi.a.a.b.c.a("no bucket found for " + (String)localObject2);
                break label809;
              }
              localObject2 = new b((String)localObject2);
              i2 = 0;
              if (i2 < ((JSONArray)???).length())
              {
                String str7 = ((JSONArray)???).getString(i2);
                if (TextUtils.isEmpty(str7)) {
                  break label824;
                }
                ((b)localObject2).a(new s(str7, ((JSONArray)???).length() - i2));
                break label824;
              }
              ((ArrayList)localObject3).set(i1, localObject2);
              ((b)localObject2).i = str6;
              ((b)localObject2).e = str2;
              ((b)localObject2).g = str4;
              ((b)localObject2).h = str5;
              ((b)localObject2).f = str3;
              if (localJSONObject1.has("stat-percent")) {
                ((b)localObject2).k = localJSONObject1.getDouble("stat-percent");
              }
              if (localJSONObject1.has("stat-domain")) {
                ((b)localObject2).l = localJSONObject1.getString("stat-domain");
              }
              if (!localJSONObject1.has("ttl")) {
                continue;
              }
              l1 = localJSONObject1.getInt("ttl") * 1000L;
              if (l1 > 0L) {
                continue;
              }
              throw new IllegalArgumentException("the duration is invalid " + l1);
            }
          }
        }
      }
      catch (JSONException localJSONException)
      {
        long l1;
        com.xiaomi.a.a.b.c.a("failed to get bucket" + localJSONException.getMessage());
        i1 = 0;
        if (i1 < paramArrayList.size())
        {
          b localb = (b)((ArrayList)localObject3).get(i1);
          if (localb != null) {
            a((String)paramArrayList.get(i1), localb);
          }
          i1 += 1;
          continue;
          ((b)localObject2).m = l1;
          this.e = ((b)localObject2).c();
        }
      }
      catch (IOException localIOException)
      {
        com.xiaomi.a.a.b.c.a("failed to get bucket" + localIOException.getMessage());
        continue;
      }
      catch (Exception localException)
      {
        com.xiaomi.a.a.b.c.a("failed to get bucket" + localException.getMessage());
        continue;
        h();
        return (ArrayList<b>)localObject3;
      }
      label809:
      i1 += 1;
      continue;
      label818:
      String str1 = "wap";
      continue;
      label824:
      i2 += 1;
    }
  }
  
  /* Error */
  public static void a(Context paramContext, h paramh, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 99	com/xiaomi/d/f:m	Lcom/xiaomi/d/f;
    //   6: ifnonnull +54 -> 60
    //   9: getstatic 343	com/xiaomi/d/f:n	Lcom/xiaomi/d/g;
    //   12: ifnonnull +52 -> 64
    //   15: new 2	com/xiaomi/d/f
    //   18: dup
    //   19: aload_0
    //   20: aconst_null
    //   21: aload_1
    //   22: aload_2
    //   23: aload_3
    //   24: aload 4
    //   26: invokespecial 345	com/xiaomi/d/f:<init>	(Landroid/content/Context;Lcom/xiaomi/d/e;Lcom/xiaomi/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   29: putstatic 99	com/xiaomi/d/f:m	Lcom/xiaomi/d/f;
    //   32: getstatic 99	com/xiaomi/d/f:m	Lcom/xiaomi/d/f;
    //   35: ifnull +25 -> 60
    //   38: invokestatic 350	com/xiaomi/d/m:a	()Lcom/xiaomi/d/m;
    //   41: ifnonnull +7 -> 48
    //   44: aload_0
    //   45: invokestatic 353	com/xiaomi/d/m:a	(Landroid/content/Context;)V
    //   48: invokestatic 350	com/xiaomi/d/m:a	()Lcom/xiaomi/d/m;
    //   51: getstatic 99	com/xiaomi/d/f:m	Lcom/xiaomi/d/f;
    //   54: getfield 71	com/xiaomi/d/f:l	Lcom/xiaomi/d/n;
    //   57: invokevirtual 356	com/xiaomi/d/m:a	(Lcom/xiaomi/d/n;)V
    //   60: ldc 2
    //   62: monitorexit
    //   63: return
    //   64: getstatic 343	com/xiaomi/d/f:n	Lcom/xiaomi/d/g;
    //   67: aload_0
    //   68: aload_1
    //   69: aload_2
    //   70: invokeinterface 361 4 0
    //   75: putstatic 99	com/xiaomi/d/f:m	Lcom/xiaomi/d/f;
    //   78: goto -46 -> 32
    //   81: astore_0
    //   82: ldc 2
    //   84: monitorexit
    //   85: aload_0
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	paramContext	Context
    //   0	87	1	paramh	h
    //   0	87	2	paramString1	String
    //   0	87	3	paramString2	String
    //   0	87	4	paramString3	String
    // Exception table:
    //   from	to	target	type
    //   3	32	81	finally
    //   32	48	81	finally
    //   48	60	81	finally
    //   64	78	81	finally
  }
  
  public static void a(g paramg)
  {
    try
    {
      n = paramg;
      if ((m.a() != null) && (m != null)) {
        m.a().b(m.l);
      }
      m = null;
      return;
    }
    finally {}
  }
  
  private void a(String paramString, b paramb)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramb == null)) {
      throw new IllegalArgumentException("the argument is invalid " + paramString + ", " + paramb);
    }
    synchronized (this.a)
    {
      g();
      if (this.a.containsKey(paramString))
      {
        ((c)this.a.get(paramString)).a(paramb);
        return;
      }
      c localc = new c(paramString);
      localc.a(paramb);
      this.a.put(paramString, localc);
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = (ArrayList)b.get(paramString1);
    localMap = b;
    if (localArrayList == null) {}
    for (;;)
    {
      try
      {
        localArrayList = new ArrayList();
        localArrayList.add(paramString2);
        b.put(paramString1, localArrayList);
        return;
      }
      finally {}
      if (!localArrayList.contains(paramString2)) {
        localArrayList.add(paramString2);
      }
    }
  }
  
  private String m()
  {
    try
    {
      Object localObject = this.c.getPackageManager().getPackageInfo(this.c.getPackageName(), 16384);
      if (localObject != null)
      {
        localObject = ((PackageInfo)localObject).versionName;
        return (String)localObject;
      }
    }
    catch (Exception localException) {}
    return "0";
  }
  
  public final b a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("the url is empty");
    }
    return a(new URL(paramString).getHost(), true);
  }
  
  public final b a(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("the host is empty");
    }
    b localb = c(paramString);
    Object localObject2;
    if ((localb != null) && (localb.a()))
    {
      localObject2 = localb;
      return (b)localObject2;
    }
    Object localObject1;
    if ((paramBoolean) && (d.a(this.c)))
    {
      if (System.currentTimeMillis() - this.k <= this.i * 60L * 1000L) {
        break label166;
      }
      this.k = System.currentTimeMillis();
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).add(paramString);
      localObject1 = (b)a((ArrayList)localObject1).get(0);
      if (localObject1 == null) {
        break label145;
      }
      this.i = 0L;
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 != null) {
        break;
      }
      return new q(this, paramString, localb);
      label145:
      if (this.i < 15L) {
        this.i += 1L;
      }
      label166:
      localObject1 = null;
    }
  }
  
  public String a(ArrayList<String> paramArrayList, String paramString1, String paramString2)
  {
    Object localObject = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new com.xiaomi.a.a.d.a("type", paramString1));
    localArrayList.add(new com.xiaomi.a.a.d.a("uuid", paramString2));
    localArrayList.add(new com.xiaomi.a.a.d.a("list", a(paramArrayList, ",")));
    paramArrayList = c("resolver.gslb.mi-idc.com");
    paramString1 = String.format("http://%1$s/gslb/gslb/getbucket.asp?ver=3.0", new Object[] { "resolver.gslb.mi-idc.com" });
    if (paramArrayList == null)
    {
      ((ArrayList)localObject).add(paramString1);
      paramArrayList = (ArrayList<String>)localObject;
      paramString1 = paramArrayList.iterator();
      paramArrayList = null;
    }
    for (;;)
    {
      if (paramString1.hasNext())
      {
        paramArrayList = Uri.parse((String)paramString1.next()).buildUpon();
        paramString2 = localArrayList.iterator();
        for (;;)
        {
          if (paramString2.hasNext())
          {
            localObject = (com.xiaomi.a.a.d.c)paramString2.next();
            paramArrayList.appendQueryParameter(((com.xiaomi.a.a.d.c)localObject).a(), ((com.xiaomi.a.a.d.c)localObject).b());
            continue;
            paramArrayList = paramArrayList.a(paramString1);
            break;
          }
        }
      }
      try
      {
        if (this.d == null) {
          return d.a(this.c, new URL(paramArrayList.toString()));
        }
        paramArrayList = this.d.a(paramArrayList.toString());
        return paramArrayList;
      }
      catch (IOException paramArrayList) {}
      if (paramArrayList == null) {
        break label263;
      }
      throw paramArrayList;
    }
    label263:
    return null;
  }
  
  public final b b(String paramString)
  {
    return a(paramString, true);
  }
  
  public final String b()
  {
    if (this.c == null) {
      return "unknown";
    }
    try
    {
      Object localObject = (ConnectivityManager)this.c.getSystemService("connectivity");
      if (localObject == null) {
        return "unknown";
      }
      localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
      if (localObject == null) {
        return "unknown";
      }
      if (((NetworkInfo)localObject).getType() == 1)
      {
        localObject = (WifiManager)this.c.getSystemService("wifi");
        if ((localObject != null) && (((WifiManager)localObject).getConnectionInfo() != null)) {
          return "WIFI-" + ((WifiManager)localObject).getConnectionInfo().getSSID();
        }
      }
      else
      {
        localObject = ((NetworkInfo)localObject).getTypeName() + "-" + ((NetworkInfo)localObject).getSubtypeName();
        return (String)localObject;
      }
    }
    catch (Exception localException) {}
    return "unknown";
  }
  
  protected final b c(String paramString)
  {
    synchronized (this.a)
    {
      g();
      paramString = (c)this.a.get(paramString);
      if (paramString != null)
      {
        paramString = paramString.a();
        if (paramString != null) {
          return paramString;
        }
      }
    }
    return null;
  }
  
  protected String c()
  {
    return "resolver.gslb.mi-idc.com";
  }
  
  public final void d()
  {
    synchronized (this.a)
    {
      this.a.clear();
      return;
    }
  }
  
  public final void e()
  {
    for (;;)
    {
      int i1;
      synchronized (this.a)
      {
        g();
        ArrayList localArrayList = new ArrayList(this.a.keySet());
        i1 = localArrayList.size() - 1;
        if (i1 >= 0)
        {
          c localc = (c)this.a.get(localArrayList.get(i1));
          if ((localc == null) || (localc.a() == null)) {
            break label148;
          }
          localArrayList.remove(i1);
          break label148;
        }
        ??? = a(localArrayList);
        i1 = 0;
        if (i1 < localArrayList.size())
        {
          if (((ArrayList)???).get(i1) != null) {
            a((String)localArrayList.get(i1), (b)((ArrayList)???).get(i1));
          }
          i1 += 1;
        }
      }
      return;
      label148:
      i1 -= 1;
    }
  }
  
  /* Error */
  protected final String f()
  {
    // Byte code:
    //   0: new 552	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: getfield 79	com/xiaomi/d/f:c	Landroid/content/Context;
    //   8: invokevirtual 556	android/content/Context:getFilesDir	()Ljava/io/File;
    //   11: aload_0
    //   12: invokevirtual 558	com/xiaomi/d/f:i	()Ljava/lang/String;
    //   15: invokespecial 561	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   18: astore_1
    //   19: aload_1
    //   20: invokevirtual 564	java/io/File:isFile	()Z
    //   23: ifeq +106 -> 129
    //   26: new 566	java/io/BufferedReader
    //   29: dup
    //   30: new 568	java/io/InputStreamReader
    //   33: dup
    //   34: new 570	java/io/FileInputStream
    //   37: dup
    //   38: aload_1
    //   39: invokespecial 573	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   42: invokespecial 576	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   45: invokespecial 579	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   48: astore_2
    //   49: aload_2
    //   50: astore_1
    //   51: new 117	java/lang/StringBuilder
    //   54: dup
    //   55: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   58: astore_3
    //   59: aload_2
    //   60: astore_1
    //   61: aload_2
    //   62: invokevirtual 582	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   65: astore 4
    //   67: aload 4
    //   69: ifnull +47 -> 116
    //   72: aload_2
    //   73: astore_1
    //   74: aload_3
    //   75: aload 4
    //   77: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: pop
    //   81: goto -22 -> 59
    //   84: astore_3
    //   85: aload_2
    //   86: astore_1
    //   87: new 117	java/lang/StringBuilder
    //   90: dup
    //   91: ldc_w 584
    //   94: invokespecial 240	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   97: aload_3
    //   98: invokevirtual 585	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   101: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokestatic 251	com/xiaomi/a/a/b/c:a	(Ljava/lang/String;)V
    //   110: aload_2
    //   111: invokestatic 589	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   114: aconst_null
    //   115: areturn
    //   116: aload_2
    //   117: astore_1
    //   118: aload_3
    //   119: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: astore_3
    //   123: aload_2
    //   124: invokestatic 589	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   127: aload_3
    //   128: areturn
    //   129: aconst_null
    //   130: invokestatic 589	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   133: aconst_null
    //   134: areturn
    //   135: astore_1
    //   136: aconst_null
    //   137: astore_3
    //   138: aload_1
    //   139: astore_2
    //   140: aload_3
    //   141: invokestatic 589	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   144: aload_2
    //   145: athrow
    //   146: astore_2
    //   147: aload_1
    //   148: astore_3
    //   149: goto -9 -> 140
    //   152: astore_3
    //   153: aconst_null
    //   154: astore_2
    //   155: goto -70 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	158	0	this	f
    //   18	100	1	localObject1	Object
    //   135	13	1	localObject2	Object
    //   48	97	2	localObject3	Object
    //   146	1	2	localObject4	Object
    //   154	1	2	localObject5	Object
    //   58	17	3	localStringBuilder	StringBuilder
    //   84	35	3	localThrowable1	Throwable
    //   122	27	3	localObject6	Object
    //   152	1	3	localThrowable2	Throwable
    //   65	11	4	str	String
    // Exception table:
    //   from	to	target	type
    //   51	59	84	java/lang/Throwable
    //   61	67	84	java/lang/Throwable
    //   74	81	84	java/lang/Throwable
    //   118	123	84	java/lang/Throwable
    //   0	49	135	finally
    //   51	59	146	finally
    //   61	67	146	finally
    //   74	81	146	finally
    //   87	110	146	finally
    //   118	123	146	finally
    //   0	49	152	java/lang/Throwable
  }
  
  protected boolean g()
  {
    synchronized (this.a)
    {
      if (!f)
      {
        f = true;
        this.a.clear();
        try
        {
          Object localObject2 = f();
          if (!TextUtils.isEmpty((CharSequence)localObject2)) {
            synchronized (this.a)
            {
              this.a.clear();
              localObject2 = new JSONArray((String)localObject2);
              int i1 = 0;
              while (i1 < ((JSONArray)localObject2).length())
              {
                c localc = new c().a(((JSONArray)localObject2).getJSONObject(i1));
                this.a.put(localc.a, localc);
                i1 += 1;
              }
              com.xiaomi.a.a.b.c.a("loading the new hosts succeed");
              return true;
            }
          }
        }
        catch (Throwable localThrowable)
        {
          com.xiaomi.a.a.b.c.a("load host exception " + localThrowable.getMessage());
          return false;
        }
      }
      return true;
    }
  }
  
  /* Error */
  public void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 153	com/xiaomi/d/f:k	()V
    //   4: aload_0
    //   5: getfield 48	com/xiaomi/d/f:a	Ljava/util/Map;
    //   8: astore_1
    //   9: aload_1
    //   10: monitorenter
    //   11: new 605	java/io/BufferedWriter
    //   14: dup
    //   15: new 607	java/io/OutputStreamWriter
    //   18: dup
    //   19: aload_0
    //   20: getfield 79	com/xiaomi/d/f:c	Landroid/content/Context;
    //   23: aload_0
    //   24: invokevirtual 558	com/xiaomi/d/f:i	()Ljava/lang/String;
    //   27: iconst_0
    //   28: invokevirtual 611	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   31: invokespecial 614	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   34: invokespecial 617	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   37: astore_2
    //   38: aload_0
    //   39: invokevirtual 620	com/xiaomi/d/f:l	()Lorg/json/JSONArray;
    //   42: invokevirtual 621	org/json/JSONArray:toString	()Ljava/lang/String;
    //   45: astore_3
    //   46: aload_3
    //   47: invokestatic 199	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   50: ifne +8 -> 58
    //   53: aload_2
    //   54: aload_3
    //   55: invokevirtual 624	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   58: aload_2
    //   59: invokevirtual 627	java/io/BufferedWriter:close	()V
    //   62: aload_1
    //   63: monitorexit
    //   64: return
    //   65: astore_2
    //   66: aload_2
    //   67: invokevirtual 630	java/io/IOException:printStackTrace	()V
    //   70: goto -8 -> 62
    //   73: astore_2
    //   74: aload_1
    //   75: monitorexit
    //   76: aload_2
    //   77: athrow
    //   78: astore_2
    //   79: aload_2
    //   80: invokevirtual 631	org/json/JSONException:printStackTrace	()V
    //   83: goto -21 -> 62
    //   86: astore_2
    //   87: aload_2
    //   88: invokevirtual 632	java/lang/Exception:printStackTrace	()V
    //   91: goto -29 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	f
    //   37	22	2	localBufferedWriter	java.io.BufferedWriter
    //   65	2	2	localIOException	IOException
    //   73	4	2	localObject	Object
    //   78	2	2	localJSONException	JSONException
    //   86	2	2	localException	Exception
    //   45	10	3	str	String
    // Exception table:
    //   from	to	target	type
    //   11	58	65	java/io/IOException
    //   58	62	65	java/io/IOException
    //   11	58	73	finally
    //   58	62	73	finally
    //   62	64	73	finally
    //   66	70	73	finally
    //   74	76	73	finally
    //   79	83	73	finally
    //   87	91	73	finally
    //   11	58	78	org/json/JSONException
    //   58	62	78	org/json/JSONException
    //   11	58	86	java/lang/Exception
    //   58	62	86	java/lang/Exception
  }
  
  protected final String i()
  {
    Object localObject = ((ActivityManager)this.c.getSystemService("activity")).getRunningAppProcesses();
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
        if (localRunningAppProcessInfo.pid == Process.myPid()) {
          return localRunningAppProcessInfo.processName;
        }
      }
    }
    return "com.xiaomi";
  }
  
  public final ArrayList<com.xiaomi.b.a.a.a.c> j()
  {
    for (;;)
    {
      HashMap localHashMap;
      Object localObject3;
      Object localObject4;
      int i1;
      int i4;
      synchronized (this.a)
      {
        localHashMap = new HashMap();
        Iterator localIterator1 = this.a.keySet().iterator();
        if (!localIterator1.hasNext()) {
          break label662;
        }
        Object localObject1 = (String)localIterator1.next();
        localObject1 = (c)this.a.get(localObject1);
        if (localObject1 == null) {
          continue;
        }
        Iterator localIterator2 = ((c)localObject1).b.iterator();
        if (!localIterator2.hasNext()) {
          continue;
        }
        Object localObject5 = (b)localIterator2.next();
        localObject1 = (com.xiaomi.b.a.a.a.c)localHashMap.get(((b)localObject5).c());
        if (localObject1 != null) {
          break label745;
        }
        localObject3 = new com.xiaomi.b.a.a.a.c();
        ((com.xiaomi.b.a.a.a.c)localObject3).a = "httpapi";
        ((com.xiaomi.b.a.a.a.c)localObject3).e = ((b)localObject5).h;
        localObject4 = ((b)localObject5).a;
        Object localObject6;
        com.xiaomi.b.a.a.a.g localg;
        int i2;
        long l1;
        int i3;
        if (TextUtils.isEmpty((CharSequence)localObject4))
        {
          localObject1 = "unknown";
          ((com.xiaomi.b.a.a.a.c)localObject3).d = ((String)localObject1);
          ((com.xiaomi.b.a.a.a.c)localObject3).b = this.h;
          ((com.xiaomi.b.a.a.a.c)localObject3).c = p;
          ((com.xiaomi.b.a.a.a.c)localObject3).h = o;
          ((com.xiaomi.b.a.a.a.c)localObject3).i = this.c.getPackageName();
          ((com.xiaomi.b.a.a.a.c)localObject3).j = m();
          localObject1 = new i();
          ((i)localObject1).c = ((b)localObject5).f;
          ((i)localObject1).a = ((b)localObject5).i;
          ((i)localObject1).b = ((b)localObject5).e;
          ((i)localObject1).d = ((b)localObject5).g;
          ((com.xiaomi.b.a.a.a.c)localObject3).f = ((i)localObject1);
          localHashMap.put(((b)localObject5).c(), localObject3);
          localObject1 = localObject3;
          localObject3 = new com.xiaomi.b.a.a.a.a();
          ((com.xiaomi.b.a.a.a.a)localObject3).a = ((b)localObject5).d;
          localObject4 = new ArrayList();
          localObject5 = ((b)localObject5).c.iterator();
          if (!((Iterator)localObject5).hasNext()) {
            break label616;
          }
          localObject6 = (s)((Iterator)localObject5).next();
          Object localObject7 = ((s)localObject6).a();
          if (((ArrayList)localObject7).isEmpty()) {
            continue;
          }
          localg = new com.xiaomi.b.a.a.a.g();
          localg.a = ((s)localObject6).a;
          localObject6 = new HashMap();
          localObject7 = ((ArrayList)localObject7).iterator();
          i2 = 0;
          i1 = 0;
          l1 = 0L;
          i3 = 0;
          if (!((Iterator)localObject7).hasNext()) {
            continue;
          }
          localObject8 = (a)((Iterator)localObject7).next();
          if (((a)localObject8).a >= 0)
          {
            i2 += 1;
            l1 += ((a)localObject8).b;
            long l2 = i3;
            i3 = (int)(((a)localObject8).e + l2);
            continue;
          }
        }
        else
        {
          localObject1 = localObject4;
          if (!((String)localObject4).startsWith("WIFI")) {
            continue;
          }
          localObject1 = "WIFI";
          continue;
        }
        Object localObject8 = ((a)localObject8).d;
        if (TextUtils.isEmpty((CharSequence)localObject8)) {
          break label748;
        }
        if (!((Map)localObject6).containsKey(localObject8)) {
          break label757;
        }
        i4 = ((Integer)((Map)localObject6).get(localObject8)).intValue() + 1;
        ((Map)localObject6).put(localObject8, Integer.valueOf(i4));
        break label748;
        localg.f = ((Map)localObject6);
        localg.c = i2;
        localg.b();
        localg.b = i1;
        localg.a();
        localg.d = l1;
        localg.c();
        localg.e = i3;
        localg.d();
        ((List)localObject4).add(localg);
      }
      label616:
      if (!((List)localObject4).isEmpty())
      {
        ((com.xiaomi.b.a.a.a.a)localObject3).b = ((List)localObject4);
        if (((com.xiaomi.b.a.a.a.c)localObject2).g == null) {
          ((com.xiaomi.b.a.a.a.c)localObject2).g = new HashSet();
        }
        ((com.xiaomi.b.a.a.a.c)localObject2).g.add(localObject3);
        continue;
        label662:
        ArrayList localArrayList = new ArrayList();
        localObject3 = localHashMap.values().iterator();
        label738:
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (com.xiaomi.b.a.a.a.c)((Iterator)localObject3).next();
          if (((com.xiaomi.b.a.a.a.c)localObject4).g == null) {}
          for (i1 = 0;; i1 = ((com.xiaomi.b.a.a.a.c)localObject4).g.size())
          {
            if (i1 <= 0) {
              break label738;
            }
            localArrayList.add(localObject4);
            break;
          }
        }
        return localArrayList;
        label745:
        continue;
        label748:
        i1 += 1;
        continue;
        label757:
        i4 = 1;
      }
    }
  }
  
  public void k()
  {
    synchronized (this.a)
    {
      Iterator localIterator1 = this.a.values().iterator();
      if (!localIterator1.hasNext()) {
        break label133;
      }
      ((c)localIterator1.next()).a(false);
    }
    Iterator localIterator2;
    for (;;)
    {
      if (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        if (((c)this.a.get(str)).b.isEmpty()) {
          this.a.remove(str);
        }
      }
    }
    for (;;)
    {
      if (i1 == 0)
      {
        localIterator2 = this.a.keySet().iterator();
        break;
      }
      return;
      label133:
      int i1 = 0;
      continue;
      i1 = 1;
    }
  }
  
  protected final JSONArray l()
  {
    synchronized (this.a)
    {
      JSONArray localJSONArray1 = new JSONArray();
      Iterator localIterator = this.a.values().iterator();
      if (localIterator.hasNext()) {
        localJSONArray1.put(((c)localIterator.next()).b());
      }
    }
    return localJSONArray2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */