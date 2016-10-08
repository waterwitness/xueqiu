package com.xueqiu.android.base.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.preference.PreferenceManager;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.g;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.c.a;
import rx.h;
import rx.j;

public final class b
{
  public static final String[] a = { "124.250.3.79:8400" };
  private static final String[] c = { "124.250.3.100" };
  private static b j = null;
  private static volatile boolean k = false;
  public Map<String, d> b = new HashMap();
  private boolean d = true;
  private long e;
  private AtomicBoolean f = new AtomicBoolean(false);
  private AtomicBoolean g = new AtomicBoolean(false);
  private j h;
  private Context i;
  private Map<String, String> l = new HashMap();
  
  public static b a()
  {
    if (((j == null) || (!k)) && (j == null)) {
      return new b();
    }
    return j;
  }
  
  public static final b a(Context paramContext, final q paramq)
  {
    b localb;
    String str;
    if ((j == null) || (!k))
    {
      localb = new b();
      j = localb;
      if (!k)
      {
        localb.i = paramContext;
        paramContext = localb.i.getSharedPreferences("server_ip_address_file_name", 0);
        str = paramContext.getString("key_qmas_servers", "");
        if (c.a(str)) {}
      }
    }
    try
    {
      localb.b = c((JsonObject)m.a().fromJson(str, JsonObject.class));
      localb.d = paramContext.getBoolean("key_https", true);
      localb.e = paramContext.getLong("key_expired", 0L);
      if (localb.e > System.currentTimeMillis())
      {
        localb.h = ag.c.a(new a()
        {
          public final void a()
          {
            b.this.refresh(paramq);
          }
        }, localb.e - System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        localb.l = d();
        ag.c.a(new a()
        {
          public final void a()
          {
            b.this.a(paramq);
          }
        });
        k = true;
        return j;
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
        continue;
        ag.c.a(new a()
        {
          public final void a()
          {
            b.this.refresh(paramq);
          }
        });
      }
    }
  }
  
  private void a(JsonObject paramJsonObject)
  {
    if (paramJsonObject == null) {}
    for (;;)
    {
      return;
      try
      {
        this.b = c(paramJsonObject);
        SharedPreferences.Editor localEditor = this.i.getSharedPreferences("server_ip_address_file_name", 0).edit();
        localEditor.putString("key_qmas_servers", m.a().toJson(paramJsonObject));
        if ((paramJsonObject.has("https")) && (!paramJsonObject.get("https").isJsonNull()))
        {
          this.d = paramJsonObject.get("https").getAsBoolean();
          localEditor.putBoolean("key_https", this.d);
        }
        if ((paramJsonObject.has("expires")) && (!paramJsonObject.get("expires").isJsonNull()))
        {
          this.e = (System.currentTimeMillis() + paramJsonObject.get("expires").getAsLong() * 1000L);
          localEditor.putLong("key_expired", this.e);
          if ((this.h != null) && (!this.h.c())) {
            this.h.b();
          }
          ag.c.a(new a()
          {
            public final void a()
            {
              b.this.refresh(q.a());
            }
          }, this.e - System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }
        localEditor.apply();
      }
      finally {}
    }
  }
  
  private static Map<String, String> b(JsonObject paramJsonObject)
  {
    HashMap localHashMap = new HashMap();
    if ((!paramJsonObject.has("routers")) || (!paramJsonObject.get("routers").isJsonObject())) {
      return localHashMap;
    }
    paramJsonObject = paramJsonObject.get("routers").getAsJsonObject().entrySet().iterator();
    while (paramJsonObject.hasNext())
    {
      Object localObject = (Map.Entry)paramJsonObject.next();
      if (((JsonElement)((Map.Entry)localObject).getValue()).isJsonPrimitive())
      {
        String str = (String)((Map.Entry)localObject).getKey();
        localObject = ((JsonElement)((Map.Entry)localObject).getValue()).getAsString();
        localHashMap.put(str.toLowerCase(), localObject);
      }
    }
    return localHashMap;
  }
  
  private static Map<String, d> c(JsonObject paramJsonObject)
  {
    HashMap localHashMap = new HashMap();
    paramJsonObject = paramJsonObject.entrySet().iterator();
    while (paramJsonObject.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramJsonObject.next();
      if (((JsonElement)localEntry.getValue()).isJsonArray())
      {
        JsonArray localJsonArray = ((JsonElement)localEntry.getValue()).getAsJsonArray();
        d locald = new d("10.10.28.11");
        locald.a(localJsonArray);
        localHashMap.put(localEntry.getKey(), locald);
      }
    }
    return localHashMap;
  }
  
  private static Map<String, String> d()
  {
    try
    {
      Object localObject = DefaultPrefs.qmasRoutesKey();
      com.xueqiu.android.base.b.a();
      localObject = DefaultPrefs.getString((String)localObject, "", com.xueqiu.android.base.b.d());
      if (!c.a((CharSequence)localObject))
      {
        localObject = (JsonObject)m.a().fromJson((String)localObject, JsonObject.class);
        if (localObject != null) {
          return b((JsonObject)localObject);
        }
      }
      else
      {
        localObject = e();
        return (Map<String, String>)localObject;
      }
    }
    catch (Throwable localThrowable)
    {
      aa.a(localThrowable);
    }
    return e();
  }
  
  private static Map<String, String> e()
  {
    ByteArrayOutputStream localByteArrayOutputStream = null;
    for (;;)
    {
      try
      {
        com.xueqiu.android.base.b.a();
        localInputStream = com.xueqiu.android.base.b.d().getAssets().open("routes_default");
        try
        {
          localByteArrayOutputStream = new ByteArrayOutputStream();
          localObject3 = new byte['Ȁ'];
          int m = localInputStream.read((byte[])localObject3);
          if (m != -1)
          {
            localByteArrayOutputStream.write((byte[])localObject3, 0, m);
            continue;
            if (localInputStream == null) {}
          }
        }
        catch (Exception localException2) {}
      }
      catch (Exception localException1)
      {
        InputStream localInputStream;
        Object localObject3;
        Object localObject2;
        String str;
        Object localObject1 = localObject2;
        continue;
      }
      try
      {
        localInputStream.close();
        return new HashMap();
        localObject3 = new String(localException2.toByteArray(), "utf-8");
        localObject2 = (JsonObject)m.a().fromJson((String)localObject3, JsonObject.class);
        if (localObject2 == null) {
          continue;
        }
        str = DefaultPrefs.qmasRoutesKey();
        com.xueqiu.android.base.b.a();
        DefaultPrefs.putString(str, (String)localObject3, com.xueqiu.android.base.b.d());
        localObject3 = DefaultPrefs.qmasRoutesUpdateTimeKey();
        com.xueqiu.android.base.b.a();
        DefaultPrefs.putLong((String)localObject3, 0L, com.xueqiu.android.base.b.d());
        localObject2 = b((JsonObject)localObject2);
        return (Map<String, String>)localObject2;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public final void a(q paramq)
  {
    final long l1 = 0L;
    if (!k) {}
    for (;;)
    {
      return;
      final String str;
      if (g.a().b) {
        str = PreferenceManager.getDefaultSharedPreferences(this.i).getString(r.d(2131165657), r.d(2131165517));
      }
      while (this.g.compareAndSet(false, true))
      {
        v.a("IPManager", String.format("refresh routes from: %s", new Object[] { "https://qmas.xueqiu.com/routers.json" }));
        paramq.b().a(str, "https://qmas.xueqiu.com/routers.json", l1, new p()
        {
          public final void a(y paramAnonymousy)
          {
            v.a("IPManager", String.format("refresh routes failed: %s", new Object[] { paramAnonymousy }));
            v.a("IPManager", String.format("refresh routes from: %s", new Object[] { "http://umas.xueqiu.com/routers.json" }));
            q.a().b().a(str, "http://umas.xueqiu.com/routers.json", l1, new p()
            {
              public final void a(y paramAnonymous2y)
              {
                v.a("IPManager", String.format("refresh routes failed: %s", new Object[] { paramAnonymous2y }));
                b.c(b.this).set(false);
                ag.c.a(new a()
                {
                  public final void a()
                  {
                    b.this.a(q.a());
                  }
                }, 10L, TimeUnit.SECONDS);
              }
            });
          }
        });
        return;
        str = null;
        com.xueqiu.android.base.b.a();
        l1 = DefaultPrefs.getLong("qmas_routes_updated_time", 0L, com.xueqiu.android.base.b.d());
      }
    }
  }
  
  /* Error */
  public final void a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 64	com/xueqiu/android/base/c/b:k	Z
    //   5: istore 4
    //   7: iload 4
    //   9: ifne +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: ldc_w 440
    //   18: new 473	java/lang/StringBuilder
    //   21: dup
    //   22: ldc_w 475
    //   25: invokespecial 476	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   28: aload_0
    //   29: getfield 82	com/xueqiu/android/base/c/b:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   32: invokevirtual 478	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   35: invokevirtual 482	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   38: invokevirtual 483	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: iconst_2
    //   42: anewarray 4	java/lang/Object
    //   45: dup
    //   46: iconst_0
    //   47: aload_1
    //   48: aastore
    //   49: dup
    //   50: iconst_1
    //   51: aload_2
    //   52: aastore
    //   53: invokestatic 448	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   56: invokestatic 453	com/xueqiu/android/base/util/v:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   59: aload_0
    //   60: getfield 82	com/xueqiu/android/base/c/b:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   63: invokevirtual 478	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   66: ifne -54 -> 12
    //   69: aload_0
    //   70: getfield 73	com/xueqiu/android/base/c/b:b	Ljava/util/Map;
    //   73: aload_1
    //   74: invokeinterface 487 2 0
    //   79: ifeq -67 -> 12
    //   82: aload_0
    //   83: getfield 73	com/xueqiu/android/base/c/b:b	Ljava/util/Map;
    //   86: aload_1
    //   87: invokeinterface 490 2 0
    //   92: checkcast 350	com/xueqiu/android/base/c/d
    //   95: astore_3
    //   96: aload_3
    //   97: aload_2
    //   98: invokevirtual 492	com/xueqiu/android/base/c/d:a	(Ljava/lang/String;)V
    //   101: aload_3
    //   102: invokevirtual 495	com/xueqiu/android/base/c/d:a	()[Ljava/lang/String;
    //   105: arraylength
    //   106: ifne -94 -> 12
    //   109: aload_0
    //   110: invokestatic 498	com/xueqiu/android/base/q:a	()Lcom/xueqiu/android/base/q;
    //   113: invokevirtual 501	com/xueqiu/android/base/c/b:refresh	(Lcom/xueqiu/android/base/q;)V
    //   116: aload_3
    //   117: invokevirtual 502	com/xueqiu/android/base/c/d:b	()V
    //   120: ldc_w 440
    //   123: ldc_w 504
    //   126: iconst_1
    //   127: anewarray 4	java/lang/Object
    //   130: dup
    //   131: iconst_0
    //   132: aload_1
    //   133: aastore
    //   134: invokestatic 448	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   137: invokestatic 453	com/xueqiu/android/base/util/v:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   140: goto -128 -> 12
    //   143: astore_1
    //   144: aload_0
    //   145: monitorexit
    //   146: aload_1
    //   147: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	this	b
    //   0	148	1	paramString1	String
    //   0	148	2	paramString2	String
    //   95	22	3	locald	d
    //   5	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	143	finally
    //   15	140	143	finally
  }
  
  public final String[] a(String paramString)
  {
    if (this.b.containsKey(paramString))
    {
      paramString = (d)this.b.get(paramString);
      return (String[])paramString.b.toArray(new String[paramString.b.size()]);
    }
    return new String[0];
  }
  
  /* Error */
  public final void b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 64	com/xueqiu/android/base/c/b:k	Z
    //   5: istore_2
    //   6: iload_2
    //   7: ifne +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: getfield 82	com/xueqiu/android/base/c/b:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   17: invokevirtual 478	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   20: ifne -10 -> 10
    //   23: ldc_w 440
    //   26: ldc_w 521
    //   29: iconst_1
    //   30: anewarray 4	java/lang/Object
    //   33: dup
    //   34: iconst_0
    //   35: aload_1
    //   36: aastore
    //   37: invokestatic 448	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   40: invokestatic 453	com/xueqiu/android/base/util/v:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_0
    //   44: getfield 73	com/xueqiu/android/base/c/b:b	Ljava/util/Map;
    //   47: aload_1
    //   48: invokeinterface 487 2 0
    //   53: ifeq -43 -> 10
    //   56: aload_0
    //   57: getfield 73	com/xueqiu/android/base/c/b:b	Ljava/util/Map;
    //   60: aload_1
    //   61: invokeinterface 490 2 0
    //   66: checkcast 350	com/xueqiu/android/base/c/d
    //   69: invokevirtual 502	com/xueqiu/android/base/c/d:b	()V
    //   72: goto -62 -> 10
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	b
    //   0	80	1	paramString	String
    //   5	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	6	75	finally
    //   13	72	75	finally
  }
  
  public final String[] b()
  {
    if (this.b.containsKey("im")) {
      return ((d)this.b.get("im")).a();
    }
    return a;
  }
  
  public final String c()
  {
    if ("release".equalsIgnoreCase("isolate")) {
      return "http";
    }
    if (this.d) {
      return "https";
    }
    return "http";
  }
  
  public final String c(String paramString)
  {
    paramString = paramString.toLowerCase();
    if (this.l.containsKey(paramString)) {
      return (String)this.l.get(paramString);
    }
    return "api.xueqiu.com";
  }
  
  public final String d(String paramString)
  {
    String str2 = c(paramString);
    String str1;
    if (!this.b.containsKey(str2))
    {
      str1 = str2;
      return str1;
    }
    paramString = (d)this.b.get(str2);
    if ((!c.a(paramString.c)) && ("release".equalsIgnoreCase("isolate"))) {
      paramString = paramString.c;
    }
    for (;;)
    {
      str1 = paramString;
      if (!c.a(paramString)) {
        break;
      }
      return str2;
      if (paramString.a.size() == 0) {
        paramString = null;
      } else {
        paramString = (String)paramString.a.get(0);
      }
    }
  }
  
  public final void refresh(q paramq)
  {
    if (!k) {}
    while (!this.f.compareAndSet(false, true)) {
      return;
    }
    v.a("IPManager", String.format("refresh server ip from: %s", new Object[] { "https://qmas.xueqiu.com/domains.json" }));
    if (g.a().b) {}
    for (final String str = PreferenceManager.getDefaultSharedPreferences(this.i).getString(r.d(2131165657), r.d(2131165517));; str = null)
    {
      paramq.b().a(str, "https://qmas.xueqiu.com/domains.json", new p()
      {
        public final void a(y paramAnonymousy)
        {
          v.a("IPManager", String.format("refresh server ip failed: %s", new Object[] { paramAnonymousy }));
          v.a("IPManager", String.format("refresh server ip from: %s", new Object[] { "https://umas.xueqiu.com/domains.json" }));
          q.a().b().a(str, "https://umas.xueqiu.com/domains.json", new p()
          {
            public final void a(y paramAnonymous2y)
            {
              v.a("IPManager", String.format("refresh server ip failed: %s", new Object[] { paramAnonymous2y }));
              b.a(b.this).set(false);
              if ((b.b(b.this) != null) && (!b.b(b.this).c())) {
                b.b(b.this).b();
              }
              b.a(b.this, ag.c.a(new a()
              {
                public final void a()
                {
                  b.this.refresh(q.a());
                }
              }, 10L, TimeUnit.SECONDS));
            }
          });
        }
      });
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */