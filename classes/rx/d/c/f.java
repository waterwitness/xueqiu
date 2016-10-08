package rx.d.c;

import java.io.PrintStream;
import java.util.Queue;
import rx.b.g;
import rx.d.a.a;
import rx.d.c.a.x;
import rx.j;

public final class f
  implements j
{
  static int d;
  public static final int e;
  private static final a<Object> f = ;
  private static d<Queue<Object>> h;
  private static d<Queue<Object>> i;
  public Queue<Object> a;
  public final int b;
  public volatile Object c;
  private final d<Queue<Object>> g;
  
  static
  {
    d = 128;
    if (e.a()) {
      d = 16;
    }
    String str = System.getProperty("rx.ring-buffer.size");
    if (str != null) {}
    try
    {
      d = Integer.parseInt(str);
      e = d;
      h = new d() {};
      i = new d() {};
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        System.err.println("Failed to set 'rx.buffer.size' with value " + str + " => " + localException.getMessage());
      }
    }
  }
  
  f()
  {
    this(new k(e), e);
  }
  
  private f(Queue<Object> paramQueue, int paramInt)
  {
    this.a = paramQueue;
    this.g = null;
    this.b = paramInt;
  }
  
  private f(d<Queue<Object>> paramd, int paramInt)
  {
    this.g = paramd;
    this.a = ((Queue)paramd.b());
    this.b = paramInt;
  }
  
  public static f a()
  {
    if (x.a()) {
      return new f(i, e);
    }
    return new f();
  }
  
  public static boolean a(Object paramObject, rx.e parame)
  {
    return a.a(parame, paramObject);
  }
  
  public static boolean b(Object paramObject)
  {
    return a.b(paramObject);
  }
  
  public static Object c(Object paramObject)
  {
    return a.d(paramObject);
  }
  
  public static f d()
  {
    if (x.a()) {
      return new f(i, e);
    }
    return new f();
  }
  
  public final void a(Object paramObject)
  {
    if (this.a == null) {
      throw new IllegalStateException("This instance has been unsubscribed and the queue is no longer usable.");
    }
    if (!this.a.offer(a.a(paramObject))) {
      throw new g();
    }
  }
  
  public final void b()
  {
    if (this.g != null)
    {
      Queue localQueue = this.a;
      localQueue.clear();
      this.a = null;
      this.g.a(localQueue);
    }
  }
  
  public final boolean c()
  {
    return this.a == null;
  }
  
  public final void e()
  {
    if (this.c == null) {
      this.c = a.b();
    }
  }
  
  public final boolean f()
  {
    if (this.a == null) {
      return true;
    }
    return this.a.isEmpty();
  }
  
  public final Object g()
  {
    if (this.a == null) {
      localObject1 = null;
    }
    do
    {
      Object localObject2;
      do
      {
        do
        {
          return localObject1;
          localObject2 = this.a.poll();
          localObject1 = localObject2;
        } while (localObject2 != null);
        localObject1 = localObject2;
      } while (this.c == null);
      localObject1 = localObject2;
    } while (!this.a.isEmpty());
    Object localObject1 = this.c;
    this.c = null;
    return localObject1;
  }
  
  public final Object h()
  {
    Object localObject1;
    if (this.a == null) {
      localObject1 = null;
    }
    do
    {
      Object localObject2;
      do
      {
        do
        {
          return localObject1;
          localObject2 = this.a.peek();
          localObject1 = localObject2;
        } while (localObject2 != null);
        localObject1 = localObject2;
      } while (this.c == null);
      localObject1 = localObject2;
    } while (!this.a.isEmpty());
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */