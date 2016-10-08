package com.tencent.bugly.crashreport.common.strategy;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.biz.b;
import com.tencent.bugly.proguard.ao;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class a
{
  public static int a = 1000;
  private static a b = null;
  private final List<com.tencent.bugly.a> c;
  private final v d;
  private final StrategyBean e;
  private StrategyBean f = null;
  private Context g;
  
  private a(Context paramContext, List<com.tencent.bugly.a> paramList)
  {
    this.g = paramContext;
    this.e = new StrategyBean();
    this.c = paramList;
    this.d = v.a();
    this.d.b(new Thread()
    {
      public final void run()
      {
        try
        {
          Object localObject2 = o.a().a(a.a, null, true);
          if (localObject2 != null)
          {
            localObject1 = (byte[])((Map)localObject2).get("key_imei");
            localObject2 = (byte[])((Map)localObject2).get("key_ip");
            if (localObject1 != null) {
              com.tencent.bugly.crashreport.common.info.a.a(a.a(a.this)).e(new String((byte[])localObject1));
            }
            if (localObject2 != null) {
              com.tencent.bugly.crashreport.common.info.a.a(a.a(a.this)).d(new String((byte[])localObject2));
            }
          }
          Object localObject1 = a.d();
          a.a(a.this, (StrategyBean)localObject1);
          a.this.a(a.b(a.this));
          return;
        }
        catch (Throwable localThrowable)
        {
          while (w.a(localThrowable)) {}
          localThrowable.printStackTrace();
        }
      }
    });
  }
  
  public static a a()
  {
    try
    {
      a locala = b;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static a a(Context paramContext, List<com.tencent.bugly.a> paramList)
  {
    try
    {
      if (b == null) {
        b = new a(paramContext, paramList);
      }
      paramContext = b;
      return paramContext;
    }
    finally {}
  }
  
  public static StrategyBean d()
  {
    Object localObject = o.a().a(2);
    if ((localObject != null) && (((List)localObject).size() > 0))
    {
      localObject = (q)((List)localObject).get(0);
      if (((q)localObject).g != null) {
        return (StrategyBean)com.tencent.bugly.proguard.a.a(((q)localObject).g, StrategyBean.CREATOR);
      }
    }
    return null;
  }
  
  protected final void a(StrategyBean paramStrategyBean)
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
    {
      com.tencent.bugly.a locala = (com.tencent.bugly.a)localIterator.next();
      try
      {
        w.c("[strategy] Notify %s", new Object[] { locala.getClass().getName() });
        locala.onServerStrategyChanged(paramStrategyBean);
      }
      catch (Throwable localThrowable) {}
      if (!w.a(localThrowable)) {
        localThrowable.printStackTrace();
      }
    }
    b.a(paramStrategyBean);
  }
  
  public final void a(ap paramap)
  {
    if (paramap == null) {}
    while ((this.f != null) && (paramap.h == this.f.l)) {
      return;
    }
    localStrategyBean = new StrategyBean();
    localStrategyBean.d = paramap.a;
    localStrategyBean.f = paramap.c;
    localStrategyBean.e = paramap.b;
    Object localObject = paramap.d;
    int i;
    if ((localObject != null) && (((String)localObject).trim().length() > 0))
    {
      i = 0;
      if (i == 0)
      {
        w.c("upload url changes to %s", new Object[] { paramap.d });
        localStrategyBean.n = paramap.d;
      }
      localObject = paramap.e;
      if ((localObject == null) || (((String)localObject).trim().length() <= 0)) {
        break label576;
      }
      i = 0;
      label133:
      if (i == 0)
      {
        w.c("exception upload url changes to %s", new Object[] { paramap.e });
        localStrategyBean.o = paramap.e;
      }
      if (paramap.f != null)
      {
        localObject = paramap.f.a;
        if ((localObject == null) || (((String)localObject).trim().length() <= 0)) {
          break label582;
        }
        i = 0;
        label195:
        if (i == 0) {
          localStrategyBean.q = paramap.f.a;
        }
      }
      if (paramap.h != 0L) {
        localStrategyBean.l = paramap.h;
      }
      if ((paramap.g != null) && (paramap.g.size() > 0))
      {
        localStrategyBean.r = paramap.g;
        localObject = (String)paramap.g.get("B11");
        if ((localObject == null) || (!((String)localObject).equals("1"))) {
          break label588;
        }
      }
    }
    label576:
    label582:
    label588:
    for (localStrategyBean.g = true;; localStrategyBean.g = false)
    {
      localStrategyBean.m = paramap.i;
      localStrategyBean.t = paramap.i;
      localObject = (String)paramap.g.get("B27");
      if ((localObject != null) && (((String)localObject).length() > 0)) {}
      try
      {
        i = Integer.parseInt((String)localObject);
        if (i > 0) {
          localStrategyBean.s = i;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          byte[] arrayOfByte;
          if (!w.a(localException))
          {
            localException.printStackTrace();
            continue;
            localStrategyBean.h = false;
          }
        }
      }
      paramap = (String)paramap.g.get("B25");
      if ((paramap == null) || (!paramap.equals("1"))) {
        break label611;
      }
      localStrategyBean.h = true;
      w.a("cr:%b,qu:%b,uin:%b,an:%b,ss:%b,ssT:%b,ssOT:%d,cos:%b,lstT:%d", new Object[] { Boolean.valueOf(localStrategyBean.d), Boolean.valueOf(localStrategyBean.f), Boolean.valueOf(localStrategyBean.e), Boolean.valueOf(localStrategyBean.g), Boolean.valueOf(localStrategyBean.j), Boolean.valueOf(localStrategyBean.k), Long.valueOf(localStrategyBean.m), Boolean.valueOf(localStrategyBean.h), Long.valueOf(localStrategyBean.l) });
      this.f = localStrategyBean;
      o.a();
      o.b(2);
      paramap = new q();
      paramap.b = 2;
      paramap.a = localStrategyBean.b;
      paramap.e = localStrategyBean.c;
      localObject = Parcel.obtain();
      localStrategyBean.writeToParcel((Parcel)localObject, 0);
      arrayOfByte = ((Parcel)localObject).marshall();
      ((Parcel)localObject).recycle();
      paramap.g = arrayOfByte;
      o.a().a(paramap);
      a(localStrategyBean);
      return;
      i = 1;
      break;
      i = 1;
      break label133;
      i = 1;
      break label195;
    }
  }
  
  /* Error */
  public final boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 33	com/tencent/bugly/crashreport/common/strategy/a:f	Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_2
    //   19: goto -6 -> 13
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	a
    //   6	2	1	localStrategyBean	StrategyBean
    //   22	4	1	localObject	Object
    //   12	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public final StrategyBean c()
  {
    if (this.f != null) {
      return this.f;
    }
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\common\strategy\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */