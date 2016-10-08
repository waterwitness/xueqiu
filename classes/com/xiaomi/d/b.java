package com.xiaomi.d;

import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

public class b
{
  public String a;
  long b;
  ArrayList<s> c = new ArrayList();
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public String i;
  protected String j;
  double k = 0.1D;
  String l = "s.mi1.cc";
  long m = 86400000L;
  private String n;
  
  public b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("the host is empty");
    }
    this.b = System.currentTimeMillis();
    this.c.add(new s(paramString, -1));
    this.a = f.a().b();
    this.d = paramString;
  }
  
  private void a(String paramString, int paramInt, long paramLong1, long paramLong2, Exception paramException)
  {
    a(paramString, new a(paramInt, paramLong1, paramLong2, paramException));
  }
  
  private void b(String paramString)
  {
    try
    {
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext()) {
        if (TextUtils.equals(((s)localIterator.next()).a, paramString)) {
          localIterator.remove();
        }
      }
    }
    finally {}
  }
  
  public final b a(JSONObject paramJSONObject)
  {
    try
    {
      this.a = paramJSONObject.optString("net");
      this.m = paramJSONObject.getLong("ttl");
      this.k = paramJSONObject.getDouble("pct");
      this.b = paramJSONObject.getLong("ts");
      this.f = paramJSONObject.optString("city");
      this.e = paramJSONObject.optString("prv");
      this.i = paramJSONObject.optString("cty");
      this.g = paramJSONObject.optString("isp");
      this.h = paramJSONObject.optString("ip");
      this.d = paramJSONObject.optString("host");
      this.j = paramJSONObject.optString("xf");
      paramJSONObject = paramJSONObject.getJSONArray("fbs");
      int i1 = 0;
      while (i1 < paramJSONObject.length())
      {
        a(new s().a(paramJSONObject.getJSONObject(i1)));
        i1 += 1;
      }
      return this;
    }
    finally {}
  }
  
  public final ArrayList<String> a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("the url is empty.");
    }
    paramString = new URL(paramString);
    ArrayList localArrayList;
    if (TextUtils.equals(paramString.getHost(), this.d))
    {
      localArrayList = new ArrayList();
      Iterator localIterator = a(true).iterator();
      while (localIterator.hasNext())
      {
        d locald = d.a((String)localIterator.next(), paramString.getPort());
        localArrayList.add(new URL(paramString.getProtocol(), locald.a, locald.b, paramString.getFile()).toString());
      }
    }
    throw new IllegalArgumentException("the url is not supported by the fallback");
    return localArrayList;
  }
  
  public ArrayList<String> a(boolean paramBoolean)
  {
    int i1 = 0;
    for (;;)
    {
      ArrayList localArrayList;
      s locals;
      try
      {
        s[] arrayOfs = new s[this.c.size()];
        this.c.toArray(arrayOfs);
        Arrays.sort(arrayOfs);
        localArrayList = new ArrayList();
        int i2 = arrayOfs.length;
        if (i1 >= i2) {
          break label126;
        }
        locals = arrayOfs[i1];
        if (paramBoolean)
        {
          localArrayList.add(locals.a);
        }
        else
        {
          int i3 = locals.a.indexOf(":");
          if (i3 != -1) {
            localArrayList.add(locals.a.substring(0, i3));
          }
        }
      }
      finally {}
      localArrayList.add(locals.a);
      break label130;
      label126:
      return localArrayList;
      label130:
      i1 += 1;
    }
  }
  
  final void a(s params)
  {
    try
    {
      b(params.a);
      this.c.add(params);
      return;
    }
    finally
    {
      params = finally;
      throw params;
    }
  }
  
  public final void a(String paramString, long paramLong1, long paramLong2)
  {
    a(paramString, 0, paramLong1, paramLong2, null);
  }
  
  public final void a(String paramString, long paramLong1, long paramLong2, Exception paramException)
  {
    try
    {
      b(new URL(paramString).getHost(), paramLong1, paramLong2, paramException);
      return;
    }
    catch (MalformedURLException paramString) {}
  }
  
  public void a(String paramString, a parama)
  {
    try
    {
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        s locals = (s)localIterator.next();
        if (TextUtils.equals(paramString, locals.a)) {
          locals.a(parama);
        }
      }
      return;
    }
    finally {}
  }
  
  public final void a(String[] paramArrayOfString)
  {
    for (;;)
    {
      int i1;
      int i2;
      try
      {
        i1 = this.c.size() - 1;
        if (i1 >= 0)
        {
          int i3 = paramArrayOfString.length;
          i2 = 0;
          if (i2 >= i3) {
            break label170;
          }
          localObject = paramArrayOfString[i2];
          if (!TextUtils.equals(((s)this.c.get(i1)).a, (CharSequence)localObject)) {
            break label179;
          }
          this.c.remove(i1);
          break label170;
        }
        Object localObject = this.c.iterator();
        i1 = 0;
        if (!((Iterator)localObject).hasNext()) {
          break label191;
        }
        s locals = (s)((Iterator)localObject).next();
        if (locals.b <= i1) {
          break label167;
        }
        i1 = locals.b;
      }
      finally {}
      if (i2 < paramArrayOfString.length)
      {
        a(new s(paramArrayOfString[i2], paramArrayOfString.length + i1 - i2));
        i2 += 1;
      }
      else
      {
        return;
        label167:
        break label188;
        label170:
        i1 -= 1;
        continue;
        label179:
        i2 += 1;
        continue;
        label188:
        continue;
        label191:
        i2 = 0;
      }
    }
  }
  
  public boolean a()
  {
    return System.currentTimeMillis() - this.b < this.m;
  }
  
  public final ArrayList<String> b()
  {
    try
    {
      ArrayList localArrayList = a(false);
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void b(String paramString, long paramLong1, long paramLong2, Exception paramException)
  {
    a(paramString, -1, paramLong1, paramLong2, paramException);
  }
  
  /* Error */
  public final String c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 281	com/xiaomi/d/b:n	Ljava/lang/String;
    //   6: invokestatic 51	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifne +12 -> 21
    //   12: aload_0
    //   13: getfield 281	com/xiaomi/d/b:n	Ljava/lang/String;
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: areturn
    //   21: aload_0
    //   22: getfield 157	com/xiaomi/d/b:g	Ljava/lang/String;
    //   25: invokestatic 51	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   28: ifeq +10 -> 38
    //   31: ldc_w 283
    //   34: astore_1
    //   35: goto -18 -> 17
    //   38: aload_0
    //   39: iconst_5
    //   40: anewarray 204	java/lang/String
    //   43: dup
    //   44: iconst_0
    //   45: aload_0
    //   46: getfield 157	com/xiaomi/d/b:g	Ljava/lang/String;
    //   49: aastore
    //   50: dup
    //   51: iconst_1
    //   52: aload_0
    //   53: getfield 149	com/xiaomi/d/b:e	Ljava/lang/String;
    //   56: aastore
    //   57: dup
    //   58: iconst_2
    //   59: aload_0
    //   60: getfield 145	com/xiaomi/d/b:f	Ljava/lang/String;
    //   63: aastore
    //   64: dup
    //   65: iconst_3
    //   66: aload_0
    //   67: getfield 153	com/xiaomi/d/b:i	Ljava/lang/String;
    //   70: aastore
    //   71: dup
    //   72: iconst_4
    //   73: aload_0
    //   74: getfield 161	com/xiaomi/d/b:h	Ljava/lang/String;
    //   77: aastore
    //   78: ldc_w 285
    //   81: invokestatic 288	com/xiaomi/d/f:a	([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   84: putfield 281	com/xiaomi/d/b:n	Ljava/lang/String;
    //   87: aload_0
    //   88: getfield 281	com/xiaomi/d/b:n	Ljava/lang/String;
    //   91: astore_1
    //   92: goto -75 -> 17
    //   95: astore_1
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_1
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	b
    //   16	76	1	str	String
    //   95	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	17	95	finally
    //   21	31	95	finally
    //   38	92	95	finally
  }
  
  public final JSONObject d()
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("net", this.a);
      localJSONObject1.put("ttl", this.m);
      localJSONObject1.put("pct", this.k);
      localJSONObject1.put("ts", this.b);
      localJSONObject1.put("city", this.f);
      localJSONObject1.put("prv", this.e);
      localJSONObject1.put("cty", this.i);
      localJSONObject1.put("isp", this.g);
      localJSONObject1.put("ip", this.h);
      localJSONObject1.put("host", this.d);
      localJSONObject1.put("xf", this.j);
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((s)localIterator.next()).b());
      }
      localJSONObject2.put("fbs", localJSONArray);
    }
    finally {}
    return localJSONObject2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append("\n");
    localStringBuilder.append(c());
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      s locals = (s)localIterator.next();
      localStringBuilder.append("\n");
      localStringBuilder.append(locals.toString());
    }
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */