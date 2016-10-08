package com.xueqiu.android.base.util;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import rx.a.d.a;
import rx.g;
import rx.h;
import rx.h.p;

public final class ag
{
  public static final ExecutorService a;
  public static final g b;
  public static final h c;
  public static final h d = a.a().a();
  private static final int e;
  
  static
  {
    int i = Math.max(Runtime.getRuntime().availableProcessors(), 2);
    e = i;
    Object localObject = Executors.newFixedThreadPool(i);
    a = (ExecutorService)localObject;
    localObject = p.a((Executor)localObject);
    b = (g)localObject;
    c = ((g)localObject).a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */