package com.alipay.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  d a = new d();
  private g b = new g();
  
  public static Map<String, String> a(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("profiles", 0).getString("deviceid", "");
    if (com.alipay.a.c.a.a(paramContext)) {}
    do
    {
      return null;
      paramContext = h.b(h.a(), paramContext);
    } while (com.alipay.a.c.a.a(paramContext));
    new g();
    return g.b(paramContext);
  }
  
  private static void a(Context paramContext, String paramString)
  {
    paramString = h.a(h.a(), paramString);
    if (com.alipay.a.c.a.a(paramString)) {
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("deviceid", paramString);
    g.a(paramContext.getSharedPreferences("profiles", 0), localHashMap);
  }
  
  public static boolean a(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.size() < 0)) {}
    while ((!paramMap.containsKey("deviceId")) || (!paramMap.containsKey("checkcode")) || (!paramMap.containsKey("apdtk")) || (!paramMap.containsKey("time")) || (!paramMap.containsKey("rule"))) {
      return false;
    }
    return true;
  }
  
  private e d()
  {
    e locale = new e();
    locale.h = false;
    Object localObject = new HashMap();
    HashMap localHashMap = new HashMap();
    if (!com.alipay.a.c.a.a(this.a.a))
    {
      localHashMap.put("AH1", this.a.a);
      if (com.alipay.a.c.a.a(this.a.b)) {
        break label680;
      }
      localHashMap.put("AH2", this.a.b);
      label87:
      if (com.alipay.a.c.a.a(this.a.c)) {
        break label694;
      }
      localHashMap.put("AH3", this.a.c);
      label116:
      if (com.alipay.a.c.a.a(this.a.d)) {
        break label708;
      }
      localHashMap.put("AH4", this.a.d);
      label145:
      if (com.alipay.a.c.a.a(this.a.e)) {
        break label722;
      }
      localHashMap.put("AH5", this.a.e);
      label174:
      if (com.alipay.a.c.a.a(this.a.f)) {
        break label736;
      }
      localHashMap.put("AH6", this.a.f);
      label203:
      if (com.alipay.a.c.a.a(this.a.g)) {
        break label750;
      }
      localHashMap.put("AH7", this.a.g);
      label232:
      if (com.alipay.a.c.a.a(this.a.h)) {
        break label764;
      }
      localHashMap.put("AH8", this.a.h);
      label261:
      if (com.alipay.a.c.a.a(this.a.i)) {
        break label778;
      }
      localHashMap.put("AH9", this.a.i);
      label290:
      if (com.alipay.a.c.a.a(this.a.j)) {
        break label792;
      }
      localHashMap.put("AH10", this.a.j);
      label319:
      if (com.alipay.a.c.a.a(this.a.k)) {
        break label806;
      }
      localHashMap.put("AS1", this.a.k);
      label348:
      if (com.alipay.a.c.a.a(this.a.l)) {
        break label820;
      }
      localHashMap.put("AS2", this.a.l);
      label377:
      if (com.alipay.a.c.a.a(this.a.m)) {
        break label834;
      }
      localHashMap.put("AS3", this.a.m);
      label406:
      if (com.alipay.a.c.a.a(this.a.n)) {
        break label848;
      }
      localHashMap.put("AS4", this.a.n);
      label435:
      if (com.alipay.a.c.a.a(this.a.p)) {
        break label862;
      }
      localHashMap.put("AC1", this.a.p);
      label464:
      if (com.alipay.a.c.a.a(this.a.q)) {
        break label876;
      }
      localHashMap.put("AC2", this.a.q);
    }
    for (;;)
    {
      ((Map)localObject).put("deviceInfo", localHashMap);
      if (!com.alipay.a.c.a.a(this.a.s)) {
        ((Map)localObject).put("deviceId", this.a.s);
      }
      if (!com.alipay.a.c.a.a(this.a.t)) {
        ((Map)localObject).put("priDeviceId", this.a.t);
      }
      if (!com.alipay.a.c.a.a(this.a.r)) {
        ((Map)localObject).put("appId", this.a.r);
      }
      if (!com.alipay.a.c.a.a(this.a.o)) {
        ((Map)localObject).put("time", this.a.o);
      }
      if (!com.alipay.a.c.a.a(this.a.u)) {
        ((Map)localObject).put("apdtk", this.a.u);
      }
      localObject = g.b((Map)localObject);
      if ((localObject != null) && (((String)localObject).length() >= 0)) {
        break label890;
      }
      return locale;
      localHashMap.put("AH1", "");
      break;
      label680:
      localHashMap.put("AH2", "");
      break label87;
      label694:
      localHashMap.put("AH3", "");
      break label116;
      label708:
      localHashMap.put("AH4", "");
      break label145;
      label722:
      localHashMap.put("AH4", "");
      break label174;
      label736:
      localHashMap.put("AH6", "");
      break label203;
      label750:
      localHashMap.put("AH7", "");
      break label232;
      label764:
      localHashMap.put("AH8", "");
      break label261;
      label778:
      localHashMap.put("AH9", "");
      break label290;
      label792:
      localHashMap.put("AH10", "");
      break label319;
      label806:
      localHashMap.put("AS1", "");
      break label348;
      label820:
      localHashMap.put("AS2", "");
      break label377;
      label834:
      localHashMap.put("AS3", "");
      break label406;
      label848:
      localHashMap.put("AS4", "");
      break label435;
      label862:
      localHashMap.put("AC1", "");
      break label464;
      label876:
      localHashMap.put("AC2", "");
    }
    try
    {
      label890:
      new a.a();
      localObject = a.a.a("https://seccliprod.alipay.com/api/do.htm", "deviceFingerprint", (String)localObject, "1", false);
      if ((localObject != null) && (((HttpResponse)localObject).getStatusLine().getStatusCode() == 200))
      {
        new g();
        return g.a(EntityUtils.toString(((HttpResponse)localObject).getEntity()));
      }
      locale.h = false;
      return locale;
    }
    catch (IOException localIOException)
    {
      c(f.a(localIOException));
    }
    return locale;
  }
  
  public final String a()
  {
    Object localObject2 = null;
    String str = System.getProperty("deviceid");
    Object localObject1 = localObject2;
    if (!com.alipay.a.c.a.a(str)) {}
    try
    {
      str = new JSONObject(str).getString("device");
      localObject1 = localObject2;
      if (!com.alipay.a.c.a.a(str)) {
        localObject1 = h.b(h.a(), str);
      }
      return (String)localObject1;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        c(f.a(localJSONException));
        str = null;
      }
    }
  }
  
  public final void a(String paramString)
  {
    if (com.alipay.a.c.a.a(paramString)) {}
    do
    {
      return;
      paramString = h.a(h.a(), paramString);
    } while (com.alipay.a.c.a.a(paramString));
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("device", paramString);
      System.setProperty("deviceid", localJSONObject.toString());
      return;
    }
    catch (JSONException paramString)
    {
      c(f.a(paramString));
    }
  }
  
  public final String b()
  {
    try
    {
      Object localObject1;
      if (com.alipay.a.c.a.a())
      {
        localObject1 = new File(Environment.getExternalStorageDirectory(), ".SystemConfig");
        if (!((File)localObject1).exists()) {
          ((File)localObject1).mkdir();
        }
        localObject1 = com.alipay.a.c.a.c(((File)localObject1).getAbsolutePath() + File.separator + "data");
        boolean bool = com.alipay.a.c.a.a((String)localObject1);
        if (!bool) {
          break label76;
        }
      }
      for (;;)
      {
        return null;
        try
        {
          label76:
          localObject1 = new JSONObject((String)localObject1).getString("device");
          if (!com.alipay.a.c.a.a((String)localObject1)) {
            return h.b(h.a(), (String)localObject1);
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            c(f.a(localJSONException));
            Object localObject2 = null;
          }
        }
      }
      return null;
    }
    catch (Exception localException)
    {
      c(f.a(localException));
    }
  }
  
  /* Error */
  public final String b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 329	com/alipay/a/a/c:d	()Lcom/alipay/a/a/e;
    //   4: astore_2
    //   5: aload_2
    //   6: ifnull +171 -> 177
    //   9: aload_2
    //   10: getfield 105	com/alipay/a/a/e:h	Z
    //   13: ifeq +164 -> 177
    //   16: new 306	java/lang/StringBuilder
    //   19: dup
    //   20: aload_2
    //   21: getfield 330	com/alipay/a/a/e:b	Ljava/lang/String;
    //   24: invokestatic 313	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   27: invokespecial 314	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   30: aload_2
    //   31: getfield 331	com/alipay/a/a/e:e	Ljava/lang/String;
    //   34: invokevirtual 321	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 324	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: astore_3
    //   41: new 64	java/util/HashMap
    //   44: dup
    //   45: invokespecial 65	java/util/HashMap:<init>	()V
    //   48: astore 4
    //   50: aload 4
    //   52: ldc 81
    //   54: aload_2
    //   55: getfield 330	com/alipay/a/a/e:b	Ljava/lang/String;
    //   58: invokeinterface 71 3 0
    //   63: pop
    //   64: aload 4
    //   66: ldc -64
    //   68: aload_2
    //   69: getfield 330	com/alipay/a/a/e:b	Ljava/lang/String;
    //   72: invokeinterface 71 3 0
    //   77: pop
    //   78: aload 4
    //   80: ldc 91
    //   82: aload_2
    //   83: getfield 331	com/alipay/a/a/e:e	Ljava/lang/String;
    //   86: invokeinterface 71 3 0
    //   91: pop
    //   92: aload 4
    //   94: ldc 87
    //   96: aload_2
    //   97: getfield 332	com/alipay/a/a/e:f	Ljava/lang/String;
    //   100: invokeinterface 71 3 0
    //   105: pop
    //   106: aload 4
    //   108: ldc 93
    //   110: aload_2
    //   111: getfield 333	com/alipay/a/a/e:d	Ljava/lang/String;
    //   114: invokeinterface 71 3 0
    //   119: pop
    //   120: aload 4
    //   122: ldc 89
    //   124: aload_2
    //   125: getfield 334	com/alipay/a/a/e:c	Ljava/lang/String;
    //   128: invokeinterface 71 3 0
    //   133: pop
    //   134: new 19	com/alipay/a/a/g
    //   137: dup
    //   138: invokespecial 20	com/alipay/a/a/g:<init>	()V
    //   141: pop
    //   142: aload_1
    //   143: aload 4
    //   145: invokestatic 336	com/alipay/a/a/g:a	(Ljava/util/Map;)Ljava/lang/String;
    //   148: invokestatic 338	com/alipay/a/a/c:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   151: aload_0
    //   152: aload_3
    //   153: invokevirtual 340	com/alipay/a/a/c:a	(Ljava/lang/String;)V
    //   156: aload_0
    //   157: aload_3
    //   158: invokevirtual 342	com/alipay/a/a/c:b	(Ljava/lang/String;)V
    //   161: aload_2
    //   162: getfield 330	com/alipay/a/a/e:b	Ljava/lang/String;
    //   165: astore_1
    //   166: aload_1
    //   167: areturn
    //   168: astore_1
    //   169: aload_0
    //   170: aload_1
    //   171: invokestatic 252	com/alipay/a/a/f:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   174: invokevirtual 255	com/alipay/a/a/c:c	(Ljava/lang/String;)V
    //   177: aconst_null
    //   178: areturn
    //   179: astore_1
    //   180: goto -29 -> 151
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	c
    //   0	183	1	paramContext	Context
    //   4	158	2	locale	e
    //   40	118	3	str	String
    //   48	96	4	localHashMap	HashMap
    // Exception table:
    //   from	to	target	type
    //   9	142	168	java/lang/Exception
    //   142	151	168	java/lang/Exception
    //   151	166	168	java/lang/Exception
    //   142	151	179	org/json/JSONException
  }
  
  /* Error */
  public final void b(String paramString)
  {
    // Byte code:
    //   0: invokestatic 285	com/alipay/a/c/a:a	()Z
    //   3: ifeq +119 -> 122
    //   6: invokestatic 52	com/alipay/a/a/h:a	()Ljava/lang/String;
    //   9: aload_1
    //   10: invokestatic 62	com/alipay/a/a/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   13: astore_3
    //   14: new 287	java/io/File
    //   17: dup
    //   18: invokestatic 293	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   21: ldc_w 295
    //   24: invokespecial 298	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   27: astore_2
    //   28: aload_2
    //   29: invokevirtual 301	java/io/File:exists	()Z
    //   32: ifne +8 -> 40
    //   35: aload_2
    //   36: invokevirtual 304	java/io/File:mkdir	()Z
    //   39: pop
    //   40: new 265	org/json/JSONObject
    //   43: dup
    //   44: invokespecial 272	org/json/JSONObject:<init>	()V
    //   47: astore_1
    //   48: aload_1
    //   49: ldc_w 269
    //   52: aload_3
    //   53: invokevirtual 275	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   56: pop
    //   57: new 306	java/lang/StringBuilder
    //   60: dup
    //   61: aload_2
    //   62: invokevirtual 309	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   65: invokestatic 313	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   68: invokespecial 314	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   71: getstatic 317	java/io/File:separator	Ljava/lang/String;
    //   74: invokevirtual 321	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: ldc_w 323
    //   80: invokevirtual 321	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 324	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: astore_2
    //   87: aload_1
    //   88: invokevirtual 277	org/json/JSONObject:toString	()Ljava/lang/String;
    //   91: astore_3
    //   92: new 287	java/io/File
    //   95: dup
    //   96: aload_2
    //   97: invokespecial 343	java/io/File:<init>	(Ljava/lang/String;)V
    //   100: astore_1
    //   101: new 345	java/io/FileWriter
    //   104: dup
    //   105: aload_1
    //   106: iconst_0
    //   107: invokespecial 348	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   110: astore_2
    //   111: aload_2
    //   112: astore_1
    //   113: aload_2
    //   114: aload_3
    //   115: invokevirtual 351	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   118: aload_2
    //   119: invokevirtual 354	java/io/FileWriter:close	()V
    //   122: return
    //   123: astore_3
    //   124: aload_0
    //   125: aload_3
    //   126: invokestatic 252	com/alipay/a/a/f:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   129: invokevirtual 255	com/alipay/a/a/c:c	(Ljava/lang/String;)V
    //   132: goto -75 -> 57
    //   135: astore_1
    //   136: aload_0
    //   137: aload_1
    //   138: invokestatic 252	com/alipay/a/a/f:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   141: invokevirtual 255	com/alipay/a/a/c:c	(Ljava/lang/String;)V
    //   144: return
    //   145: astore_3
    //   146: aconst_null
    //   147: astore_2
    //   148: aload_2
    //   149: astore_1
    //   150: ldc_w 356
    //   153: aload_3
    //   154: invokevirtual 359	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   157: invokestatic 364	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   160: pop
    //   161: aload_2
    //   162: invokevirtual 354	java/io/FileWriter:close	()V
    //   165: return
    //   166: astore_1
    //   167: aload_0
    //   168: aload_1
    //   169: invokestatic 252	com/alipay/a/a/f:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   172: invokevirtual 255	com/alipay/a/a/c:c	(Ljava/lang/String;)V
    //   175: return
    //   176: astore_2
    //   177: aconst_null
    //   178: astore_1
    //   179: aload_1
    //   180: invokevirtual 354	java/io/FileWriter:close	()V
    //   183: aload_2
    //   184: athrow
    //   185: astore_2
    //   186: goto -7 -> 179
    //   189: astore_3
    //   190: goto -42 -> 148
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	193	0	this	c
    //   0	193	1	paramString	String
    //   27	135	2	localObject1	Object
    //   176	8	2	localObject2	Object
    //   185	1	2	localObject3	Object
    //   13	102	3	str	String
    //   123	3	3	localJSONException	JSONException
    //   145	9	3	localException1	Exception
    //   189	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   48	57	123	org/json/JSONException
    //   0	40	135	java/lang/Exception
    //   40	48	135	java/lang/Exception
    //   48	57	135	java/lang/Exception
    //   57	101	135	java/lang/Exception
    //   118	122	135	java/lang/Exception
    //   124	132	135	java/lang/Exception
    //   161	165	135	java/lang/Exception
    //   167	175	135	java/lang/Exception
    //   179	185	135	java/lang/Exception
    //   101	111	145	java/lang/Exception
    //   57	101	166	java/io/IOException
    //   118	122	166	java/io/IOException
    //   161	165	166	java/io/IOException
    //   179	185	166	java/io/IOException
    //   101	111	176	finally
    //   113	118	185	finally
    //   150	161	185	finally
    //   113	118	189	java/lang/Exception
  }
  
  final String c()
  {
    Object localObject2;
    if (com.alipay.a.c.a.a(this.a.v))
    {
      localObject2 = null;
      return (String)localObject2;
    }
    for (;;)
    {
      int i;
      try
      {
        JSONArray localJSONArray = new JSONObject(this.a.v).getJSONArray("params");
        if (localJSONArray == null) {
          return null;
        }
        Object localObject1 = new String();
        i = 0;
        localObject2 = localObject1;
        if (i == localJSONArray.length()) {
          break;
        }
        localObject2 = localObject1;
        if (localJSONArray.getString(i).equals("AC1"))
        {
          if (!com.alipay.a.c.a.a(this.a.p)) {
            localObject2 = localObject1 + this.a.p;
          }
        }
        else
        {
          localObject1 = localObject2;
          if (localJSONArray.getString(i).equals("AC2"))
          {
            if (com.alipay.a.c.a.a(this.a.q)) {
              continue;
            }
            localObject1 = localObject2 + this.a.q;
          }
          localObject2 = localObject1;
          if (localJSONArray.getString(i).equals("AH1"))
          {
            if (com.alipay.a.c.a.a(this.a.a)) {
              continue;
            }
            localObject2 = localObject1 + this.a.a;
          }
          localObject1 = localObject2;
          if (localJSONArray.getString(i).equals("AH2"))
          {
            if (com.alipay.a.c.a.a(this.a.b)) {
              continue;
            }
            localObject1 = localObject2 + this.a.b;
          }
          localObject2 = localObject1;
          if (localJSONArray.getString(i).equals("AH3"))
          {
            if (com.alipay.a.c.a.a(this.a.c)) {
              continue;
            }
            localObject2 = localObject1 + this.a.c;
          }
          localObject1 = localObject2;
          if (localJSONArray.getString(i).equals("AH4"))
          {
            if (com.alipay.a.c.a.a(this.a.d)) {
              continue;
            }
            localObject1 = localObject2 + this.a.d;
          }
          localObject2 = localObject1;
          if (localJSONArray.getString(i).equals("AH5"))
          {
            if (com.alipay.a.c.a.a(this.a.e)) {
              continue;
            }
            localObject2 = localObject1 + this.a.e;
          }
          localObject1 = localObject2;
          if (localJSONArray.getString(i).equals("AH6"))
          {
            if (com.alipay.a.c.a.a(this.a.f)) {
              continue;
            }
            localObject1 = localObject2 + this.a.f;
          }
          localObject2 = localObject1;
          if (localJSONArray.getString(i).equals("AH7"))
          {
            if (com.alipay.a.c.a.a(this.a.g)) {
              continue;
            }
            localObject2 = localObject1 + this.a.g;
          }
          localObject1 = localObject2;
          if (localJSONArray.getString(i).equals("AH8"))
          {
            if (com.alipay.a.c.a.a(this.a.h)) {
              continue;
            }
            localObject1 = localObject2 + this.a.h;
          }
          localObject2 = localObject1;
          if (localJSONArray.getString(i).equals("AH9"))
          {
            if (com.alipay.a.c.a.a(this.a.i)) {
              continue;
            }
            localObject2 = localObject1 + this.a.i;
          }
          localObject1 = localObject2;
          if (localJSONArray.getString(i).equals("AH10"))
          {
            if (com.alipay.a.c.a.a(this.a.j)) {
              continue;
            }
            localObject1 = localObject2 + this.a.j;
          }
          localObject2 = localObject1;
          if (localJSONArray.getString(i).equals("AS1"))
          {
            if (com.alipay.a.c.a.a(this.a.k)) {
              continue;
            }
            localObject2 = localObject1 + this.a.k;
          }
          localObject1 = localObject2;
          if (localJSONArray.getString(i).equals("AS2"))
          {
            if (com.alipay.a.c.a.a(this.a.l)) {
              continue;
            }
            localObject1 = localObject2 + this.a.l;
          }
          localObject2 = localObject1;
          if (localJSONArray.getString(i).equals("AS3"))
          {
            if (com.alipay.a.c.a.a(this.a.m)) {
              continue;
            }
            localObject2 = localObject1 + this.a.m;
          }
          localObject1 = localObject2;
          if (!localJSONArray.getString(i).equals("AS4")) {
            break label1232;
          }
          if (com.alipay.a.c.a.a(this.a.n)) {
            continue;
          }
          localObject1 = localObject2 + this.a.n;
          break label1232;
        }
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
        continue;
        localObject2 = localObject1;
        continue;
        localObject1 = localObject2;
      }
      catch (JSONException localJSONException)
      {
        c(f.a(localJSONException));
        return null;
      }
      label1232:
      i += 1;
    }
  }
  
  final void c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (com.alipay.a.c.a.a(this.a.p)) {
      localArrayList.add(this.a.p.substring(0, 20));
    }
    if (com.alipay.a.c.a.a(this.a.q)) {
      localArrayList.add(this.a.q.substring(0, 20));
    }
    if (com.alipay.a.c.a.a(this.a.r)) {
      localArrayList.add(this.a.r.substring(0, 20));
    }
    localArrayList.add(paramString);
    f.a(localArrayList);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */