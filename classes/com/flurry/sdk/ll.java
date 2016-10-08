package com.flurry.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ll
{
  private Map<String, Object> a = new HashMap();
  private Map<String, List<ll.a>> b = new HashMap();
  
  private boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  private void b(String paramString, Object paramObject)
  {
    if (this.b.get(paramString) != null)
    {
      Iterator localIterator = ((List)this.b.get(paramString)).iterator();
      while (localIterator.hasNext()) {
        ((ll.a)localIterator.next()).a(paramString, paramObject);
      }
    }
  }
  
  public Object a(String paramString)
  {
    try
    {
      paramString = this.a.get(paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  public void a(String paramString, ll.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 61	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore 5
    //   8: iload 5
    //   10: ifeq +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_2
    //   17: ifnull -4 -> 13
    //   20: aload_0
    //   21: getfield 20	com/flurry/sdk/ll:b	Ljava/util/Map;
    //   24: aload_1
    //   25: invokeinterface 33 2 0
    //   30: checkcast 35	java/util/List
    //   33: astore 4
    //   35: aload 4
    //   37: astore_3
    //   38: aload 4
    //   40: ifnonnull +11 -> 51
    //   43: new 63	java/util/LinkedList
    //   46: dup
    //   47: invokespecial 64	java/util/LinkedList:<init>	()V
    //   50: astore_3
    //   51: aload_3
    //   52: aload_2
    //   53: invokeinterface 67 2 0
    //   58: pop
    //   59: aload_0
    //   60: getfield 20	com/flurry/sdk/ll:b	Ljava/util/Map;
    //   63: aload_1
    //   64: aload_3
    //   65: invokeinterface 71 3 0
    //   70: pop
    //   71: goto -58 -> 13
    //   74: astore_1
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	ll
    //   0	79	1	paramString	String
    //   0	79	2	parama	ll.a
    //   37	28	3	localObject	Object
    //   33	6	4	localList	List
    //   6	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	8	74	finally
    //   20	35	74	finally
    //   43	51	74	finally
    //   51	71	74	finally
  }
  
  public void a(String paramString, Object paramObject)
  {
    for (;;)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool) {
          return;
        }
        if (!a(paramObject, this.a.get(paramString))) {
          if (paramObject == null)
          {
            this.a.remove(paramString);
            b(paramString, paramObject);
          }
          else
          {
            this.a.put(paramString, paramObject);
          }
        }
      }
      finally {}
    }
  }
  
  /* Error */
  public boolean b(String paramString, ll.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 61	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_3
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_3
    //   16: ireturn
    //   17: aload_2
    //   18: ifnonnull +8 -> 26
    //   21: iconst_0
    //   22: istore_3
    //   23: goto -10 -> 13
    //   26: aload_0
    //   27: getfield 20	com/flurry/sdk/ll:b	Ljava/util/Map;
    //   30: aload_1
    //   31: invokeinterface 33 2 0
    //   36: checkcast 35	java/util/List
    //   39: astore_1
    //   40: aload_1
    //   41: ifnonnull +8 -> 49
    //   44: iconst_0
    //   45: istore_3
    //   46: goto -33 -> 13
    //   49: aload_1
    //   50: aload_2
    //   51: invokeinterface 81 2 0
    //   56: istore_3
    //   57: goto -44 -> 13
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	ll
    //   0	65	1	paramString	String
    //   0	65	2	parama	ll.a
    //   6	51	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	60	finally
    //   26	40	60	finally
    //   49	57	60	finally
  }
  
  public void d()
  {
    try
    {
      this.b.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ll.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */