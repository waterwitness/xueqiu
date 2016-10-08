package b.a.a;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class c
{
  static ExecutorService a = ;
  public static String b = "Event";
  private static volatile c c;
  private static final Map<Class<?>, List<Class<?>>> d = new HashMap();
  private final Map<Class<?>, CopyOnWriteArrayList<m>> e = new HashMap();
  private final Map<Object, List<Class<?>>> f = new HashMap();
  private final Map<Class<?>, Object> g = new ConcurrentHashMap();
  private final ThreadLocal<d> h = new ThreadLocal() {};
  private final f i = new f(this, Looper.getMainLooper());
  private final b j = new b(this);
  private final a k = new a(this);
  private final l l = new l();
  private boolean m;
  private boolean n = true;
  
  public static c a()
  {
    if (c == null) {}
    try
    {
      if (c == null) {
        c = new c();
      }
      return c;
    }
    finally {}
  }
  
  private static List<Class<?>> a(Class<?> paramClass)
  {
    synchronized (d)
    {
      Object localObject2 = (List)d.get(paramClass);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = new ArrayList();
        localObject1 = paramClass;
        if (localObject1 == null)
        {
          d.put(paramClass, localObject2);
          localObject1 = localObject2;
        }
      }
      else
      {
        return (List<Class<?>>)localObject1;
      }
      ((List)localObject2).add(localObject1);
      a((List)localObject2, ((Class)localObject1).getInterfaces());
      localObject1 = ((Class)localObject1).getSuperclass();
    }
  }
  
  private void a(m paramm, Object paramObject)
  {
    try
    {
      paramm.b.a.invoke(paramm.a, new Object[] { paramObject });
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getCause();
      if ((paramObject instanceof j))
      {
        Log.e(b, "SubscriberExceptionEvent subscriber " + paramm.a.getClass() + " threw an exception", localThrowable);
        paramm = (j)paramObject;
        Log.e(b, "Initial event " + paramm.c + " caused exception in " + paramm.d, paramm.b);
        return;
      }
      if (this.n) {
        Log.e(b, "Could not dispatch event: " + paramObject.getClass() + " to subscribing class " + paramm.a.getClass(), localThrowable);
      }
      b(new j(this, localThrowable, paramObject, paramm.a));
      return;
    }
    catch (IllegalAccessException paramm)
    {
      throw new IllegalStateException("Unexpected exception", paramm);
    }
  }
  
  private static void a(List<Class<?>> paramList, Class<?>[] paramArrayOfClass)
  {
    int i2 = paramArrayOfClass.length;
    int i1 = 0;
    for (;;)
    {
      if (i1 >= i2) {
        return;
      }
      Class<?> localClass = paramArrayOfClass[i1];
      if (!paramList.contains(localClass))
      {
        paramList.add(localClass);
        a(paramList, localClass.getInterfaces());
      }
      i1 += 1;
    }
  }
  
  final void a(h paramh)
  {
    Object localObject = paramh.a;
    m localm = paramh.b;
    h.a(paramh);
    if (localm.d) {
      a(localm, localObject);
    }
  }
  
  public final void a(Object paramObject)
  {
    for (;;)
    {
      try
      {
        Object localObject1 = (List)this.f.get(paramObject);
        int i2;
        if (localObject1 != null)
        {
          localObject1 = ((List)localObject1).iterator();
          if (!((Iterator)localObject1).hasNext())
          {
            this.f.remove(paramObject);
            return;
          }
          Object localObject2 = (Class)((Iterator)localObject1).next();
          localObject2 = (List)this.e.get(localObject2);
          if (localObject2 == null) {
            continue;
          }
          int i1 = ((List)localObject2).size();
          i2 = 0;
          if (i2 >= i1) {
            continue;
          }
          m localm = (m)((List)localObject2).get(i2);
          if (localm.a == paramObject)
          {
            localm.d = false;
            ((List)localObject2).remove(i2);
            i2 -= 1;
            i1 -= 1;
          }
        }
        else
        {
          Log.w(b, "Subscriber to unregister was not registered before: " + paramObject.getClass());
          continue;
        }
        i2 += 1;
      }
      finally {}
    }
  }
  
  public final void a(Object paramObject, String paramString)
  {
    Iterator localIterator1;
    boolean bool;
    Object localObject;
    Class localClass;
    for (;;)
    {
      label105:
      int i2;
      int i1;
      try
      {
        localIterator1 = l.a(paramObject.getClass(), paramString).iterator();
        bool = localIterator1.hasNext();
        if (!bool) {
          return;
        }
        localObject = (k)localIterator1.next();
        this.m = true;
        localClass = ((k)localObject).c;
        paramString = (CopyOnWriteArrayList)this.e.get(localClass);
        localObject = new m(paramObject, (k)localObject);
        if (paramString != null) {
          break label175;
        }
        paramString = new CopyOnWriteArrayList();
        this.e.put(localClass, paramString);
        i2 = paramString.size();
        i1 = 0;
      }
      finally {}
      localObject = (List)this.f.get(paramObject);
      paramString = (String)localObject;
      if (localObject == null)
      {
        paramString = new ArrayList();
        this.f.put(paramObject, paramString);
      }
      paramString.add(localClass);
      break;
      label175:
      Iterator localIterator2 = paramString.iterator();
      if (localIterator2.hasNext())
      {
        if (!((m)localIterator2.next()).equals(localObject)) {
          break label105;
        }
        throw new e("Subscriber " + paramObject.getClass() + " already registered to event " + localClass);
        do
        {
          if ((i1 == i2) || (((m)localObject).c > ((m)paramString.get(i1)).c))
          {
            paramString.add(i1, localObject);
            break;
          }
          i1 += 1;
        } while (i1 <= i2);
      }
    }
  }
  
  public final void b(Object paramObject)
  {
    d locald = (d)this.h.get();
    List localList1 = locald.a;
    localList1.add(paramObject);
    if (locald.b) {
      return;
    }
    if (Looper.getMainLooper() == Looper.myLooper()) {}
    for (boolean bool = true;; bool = false)
    {
      locald.c = bool;
      locald.b = true;
      if (!locald.f) {
        break;
      }
      throw new e("Internal error. Abort state was not reset");
    }
    try
    {
      paramObject = localList1.remove(0);
      Class localClass = paramObject.getClass();
      List localList2 = a(localClass);
      int i3 = localList2.size();
      int i2 = 0;
      int i1 = 0;
      Object localObject1;
      for (;;)
      {
        if (i2 >= i3)
        {
          if (i1 == 0)
          {
            Log.d(b, "No subscribers registered for event " + localClass);
            if ((localClass != g.class) && (localClass != j.class)) {
              b(new g(this, paramObject));
            }
          }
          bool = localList1.isEmpty();
          if (!bool) {
            break;
          }
          return;
        }
        localObject1 = (Class)localList2.get(i2);
        try
        {
          localObject1 = (CopyOnWriteArrayList)this.e.get(localObject1);
          if ((localObject1 == null) || (((CopyOnWriteArrayList)localObject1).isEmpty())) {
            break label669;
          }
          localObject1 = ((CopyOnWriteArrayList)localObject1).iterator();
          bool = ((Iterator)localObject1).hasNext();
          if (!bool)
          {
            label272:
            i1 = 1;
            i2 += 1;
          }
        }
        finally {}
      }
      localObject2 = (m)((Iterator)localObject1).next();
    }
    finally
    {
      locald.b = false;
      locald.c = false;
    }
    Object localObject2;
    locald.e = paramObject;
    locald.d = ((m)localObject2);
    label669:
    try
    {
      bool = locald.c;
      switch (b()[localObject2.b.b.ordinal()])
      {
      case 1: 
        throw new IllegalStateException("Unknown thread mode: " + ((m)localObject2).b.b);
      }
    }
    finally
    {
      locald.e = null;
      locald.d = null;
      locald.f = false;
      throw ((Throwable)paramObject);
      a((m)localObject2, paramObject);
      for (;;)
      {
        bool = locald.f;
        locald.e = null;
        locald.d = null;
        locald.f = false;
        if (bool) {
          break label272;
        }
        break;
        if (bool)
        {
          a((m)localObject2, paramObject);
        }
        else
        {
          Object localObject3 = this.i;
          localObject2 = h.a((m)localObject2, paramObject);
          try
          {
            ((f)localObject3).a.a((h)localObject2);
            if (!((f)localObject3).b)
            {
              ((f)localObject3).b = true;
              if (!((f)localObject3).sendMessage(((f)localObject3).obtainMessage())) {
                throw new e("Could not send handler message");
              }
            }
          }
          finally {}
          continue;
          if (bool)
          {
            localObject3 = this.j;
            localObject2 = h.a((m)localObject2, paramObject);
            try
            {
              ((b)localObject3).a.a((h)localObject2);
              if (!((b)localObject3).b)
              {
                ((b)localObject3).b = true;
                a.execute((Runnable)localObject3);
              }
              continue;
            }
            finally {}
          }
          else
          {
            a((m)localObject2, paramObject);
            continue;
            localObject3 = this.k;
            localObject2 = h.a((m)localObject2, paramObject);
            ((a)localObject3).a.a((h)localObject2);
            a.execute((Runnable)localObject3);
          }
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */