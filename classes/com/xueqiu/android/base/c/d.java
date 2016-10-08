package com.xueqiu.android.base.c;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
{
  List<String> a = null;
  List<String> b = null;
  String c = null;
  
  public d(String paramString)
  {
    this.c = paramString;
  }
  
  public final void a(JsonArray paramJsonArray)
  {
    if (paramJsonArray.size() > 0)
    {
      this.a.clear();
      ArrayList localArrayList = new ArrayList(this.b);
      this.b.clear();
      int i = 0;
      if (i < paramJsonArray.size())
      {
        String str = paramJsonArray.get(i).getAsString();
        if (localArrayList.contains(str)) {
          this.b.add(str);
        }
        for (;;)
        {
          i += 1;
          break;
          this.a.add(str);
        }
      }
    }
  }
  
  /* Error */
  public final void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 17	com/xueqiu/android/base/c/d:a	Ljava/util/List;
    //   6: invokeinterface 61 1 0
    //   11: ifle +46 -> 57
    //   14: aload_0
    //   15: getfield 17	com/xueqiu/android/base/c/d:a	Ljava/util/List;
    //   18: iconst_0
    //   19: invokeinterface 64 2 0
    //   24: checkcast 66	java/lang/String
    //   27: aload_1
    //   28: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   31: ifeq +26 -> 57
    //   34: aload_0
    //   35: getfield 19	com/xueqiu/android/base/c/d:b	Ljava/util/List;
    //   38: aload_0
    //   39: getfield 17	com/xueqiu/android/base/c/d:a	Ljava/util/List;
    //   42: iconst_0
    //   43: invokeinterface 72 2 0
    //   48: invokeinterface 60 2 0
    //   53: pop
    //   54: aload_0
    //   55: monitorexit
    //   56: return
    //   57: aload_0
    //   58: getfield 17	com/xueqiu/android/base/c/d:a	Ljava/util/List;
    //   61: invokeinterface 61 1 0
    //   66: ifne -12 -> 54
    //   69: aload_0
    //   70: getfield 17	com/xueqiu/android/base/c/d:a	Ljava/util/List;
    //   73: aload_0
    //   74: getfield 19	com/xueqiu/android/base/c/d:b	Ljava/util/List;
    //   77: invokeinterface 76 2 0
    //   82: pop
    //   83: aload_0
    //   84: getfield 19	com/xueqiu/android/base/c/d:b	Ljava/util/List;
    //   87: invokeinterface 40 1 0
    //   92: goto -38 -> 54
    //   95: astore_1
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_1
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	d
    //   0	100	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   2	54	95	finally
    //   57	92	95	finally
  }
  
  public final String[] a()
  {
    if ("release".equalsIgnoreCase("isolate")) {
      return new String[] { this.c };
    }
    return (String[])this.a.toArray(new String[this.a.size()]);
  }
  
  public final void b()
  {
    for (;;)
    {
      try
      {
        boolean bool = this.b.isEmpty();
        if (bool) {
          return;
        }
        Iterator localIterator = this.b.iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (!this.a.contains(str)) {
            this.a.add(str);
          }
        }
        else
        {
          this.b.clear();
        }
      }
      finally {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */