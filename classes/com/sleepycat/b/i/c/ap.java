package com.sleepycat.b.i.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.b.c;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.b.x;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.Socket;
import java.nio.channels.SocketChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class ap
{
  private final String a;
  private final String b;
  private int c = 10000;
  private int d;
  private final Map<String, av> e = new HashMap();
  public Set<Integer> j;
  public final x k;
  protected final String l;
  public int m = 10000;
  public final av n = new av("PE", ax.class);
  public final av o = new av("OK", aw.class);
  public final av p = new av("FAIL", aq.class);
  protected final Logger q;
  protected final Formatter r;
  protected final ad s;
  
  static
  {
    if (!ap.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      t = bool;
      return;
    }
  }
  
  public ap(String paramString1, String paramString2, x paramx, ad paramad)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.k = paramx;
    this.s = paramad;
    this.l = (paramString2 + "|-2147483648");
    if (paramad != null) {}
    for (this.q = com.sleepycat.b.p.w.a(getClass());; this.q = com.sleepycat.b.p.w.b(getClass()))
    {
      this.r = new com.sleepycat.b.i.h.w(paramx);
      return;
    }
  }
  
  public static int a(String paramString)
  {
    return Double.valueOf(paramString).intValue();
  }
  
  public final ay a(SocketChannel paramSocketChannel)
  {
    paramSocketChannel = paramSocketChannel.socket();
    Object localObject = new BufferedReader(new InputStreamReader(paramSocketChannel.getInputStream())).readLine();
    if (localObject == null) {
      return null;
    }
    try
    {
      localObject = c((String)localObject);
      return (ay)localObject;
    }
    catch (ar localar)
    {
      com.sleepycat.b.p.w.a(this.q, this.s, this.r, Level.WARNING, "Message format error:" + com.sleepycat.b.p.w.a(localar));
      paramSocketChannel = new PrintWriter(paramSocketChannel.getOutputStream(), true);
      paramSocketChannel.println(new ax(this, localar).b());
      paramSocketChannel.close();
    }
    return null;
  }
  
  public final az a(Object paramObject, ay paramay)
  {
    Class localClass = paramObject.getClass();
    try
    {
      paramObject = (az)localClass.getMethod("process", new Class[] { paramay.getClass() }).invoke(paramObject, new Object[] { paramay });
      return (az)paramObject;
    }
    catch (NoSuchMethodException paramObject)
    {
      com.sleepycat.b.p.w.a(this.q, this.s, this.r, Level.SEVERE, "Method: process(" + paramay.getClass().getName() + ") was missing");
      throw aa.a((Exception)paramObject);
    }
    catch (Exception paramObject)
    {
      com.sleepycat.b.p.w.a(this.q, this.s, this.r, Level.SEVERE, "Unexpected exception: " + com.sleepycat.b.p.w.a((Exception)paramObject));
      throw aa.a((Exception)paramObject);
    }
  }
  
  public final void a(aj paramaj, c paramc1, c paramc2)
  {
    if (paramaj == null) {
      return;
    }
    paramaj = paramaj.u;
    this.c = paramaj.a(paramc1);
    this.m = paramaj.a(paramc2);
  }
  
  public final void a(av[] paramArrayOfav)
  {
    int i1 = paramArrayOfav.length;
    int i = 0;
    while (i < i1)
    {
      av localav = paramArrayOfav[i];
      this.e.put(localav.a, localav);
      i += 1;
    }
    this.d = paramArrayOfav.length;
    this.e.put(this.n.a, this.n);
    this.e.put(this.o.a, this.o);
    this.e.put(this.p.a, this.p);
  }
  
  public final as b(String paramString)
  {
    Object localObject1 = paramString.split("\\|");
    int i = bb.d - 1;
    if (i >= localObject1.length) {
      throw new ar(at.a, "Missing message op");
    }
    Object localObject2 = (av)this.e.get(localObject1[i]);
    if ((!t) && (localObject2 == null)) {
      throw new AssertionError();
    }
    try
    {
      localObject2 = ((av)localObject2).b;
      paramString = (as)((Class)localObject2).getConstructor(new Class[] { ((Class)localObject2).getEnclosingClass(), paramString.getClass(), localObject1.getClass() }).newInstance(new Object[] { this, paramString, localObject1 });
      return paramString;
    }
    catch (InstantiationException paramString)
    {
      throw aa.a(paramString);
    }
    catch (IllegalAccessException paramString)
    {
      throw aa.a(paramString);
    }
    catch (SecurityException paramString)
    {
      throw aa.a(paramString);
    }
    catch (NoSuchMethodException paramString)
    {
      throw aa.a(paramString);
    }
    catch (InvocationTargetException paramString)
    {
      localObject1 = paramString.getTargetException();
      if ((localObject1 instanceof RuntimeException)) {
        throw ((RuntimeException)paramString.getTargetException());
      }
      if ((localObject1 instanceof ar)) {
        throw ((ar)localObject1);
      }
      throw aa.a(paramString);
    }
  }
  
  public final ay c(String paramString)
  {
    return (ay)b(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */