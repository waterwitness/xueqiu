package com.xiaomi.d;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

final class c
{
  String a;
  final ArrayList<b> b = new ArrayList();
  
  public c() {}
  
  public c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("the host is empty");
    }
    this.a = paramString;
  }
  
  /* Error */
  public final b a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 18	com/xiaomi/d/c:b	Ljava/util/ArrayList;
    //   6: invokevirtual 39	java/util/ArrayList:size	()I
    //   9: iconst_1
    //   10: isub
    //   11: istore_2
    //   12: iload_2
    //   13: iflt +52 -> 65
    //   16: aload_0
    //   17: getfield 18	com/xiaomi/d/c:b	Ljava/util/ArrayList;
    //   20: iload_2
    //   21: invokevirtual 43	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   24: checkcast 45	com/xiaomi/d/b
    //   27: astore_1
    //   28: aload_1
    //   29: getfield 46	com/xiaomi/d/b:a	Ljava/lang/String;
    //   32: invokestatic 51	com/xiaomi/d/f:a	()Lcom/xiaomi/d/f;
    //   35: invokevirtual 54	com/xiaomi/d/f:b	()Ljava/lang/String;
    //   38: invokestatic 58	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   41: ifeq +17 -> 58
    //   44: invokestatic 51	com/xiaomi/d/f:a	()Lcom/xiaomi/d/f;
    //   47: aload_1
    //   48: invokevirtual 61	com/xiaomi/d/b:c	()Ljava/lang/String;
    //   51: putfield 64	com/xiaomi/d/f:e	Ljava/lang/String;
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: areturn
    //   58: iload_2
    //   59: iconst_1
    //   60: isub
    //   61: istore_2
    //   62: goto -50 -> 12
    //   65: aconst_null
    //   66: astore_1
    //   67: goto -13 -> 54
    //   70: astore_1
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	c
    //   27	40	1	localb	b
    //   70	4	1	localObject	Object
    //   11	51	2	i	int
    // Exception table:
    //   from	to	target	type
    //   2	12	70	finally
    //   16	54	70	finally
  }
  
  public final c a(JSONObject paramJSONObject)
  {
    try
    {
      this.a = paramJSONObject.getString("host");
      paramJSONObject = paramJSONObject.getJSONArray("fbs");
      int i = 0;
      while (i < paramJSONObject.length())
      {
        this.b.add(new b(this.a).a(paramJSONObject.getJSONObject(i)));
        i += 1;
      }
      return this;
    }
    finally {}
  }
  
  /* Error */
  public final void a(b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_2
    //   4: iload_2
    //   5: aload_0
    //   6: getfield 18	com/xiaomi/d/c:b	Ljava/util/ArrayList;
    //   9: invokevirtual 39	java/util/ArrayList:size	()I
    //   12: if_icmpge +37 -> 49
    //   15: aload_0
    //   16: getfield 18	com/xiaomi/d/c:b	Ljava/util/ArrayList;
    //   19: iload_2
    //   20: invokevirtual 43	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   23: checkcast 45	com/xiaomi/d/b
    //   26: getfield 46	com/xiaomi/d/b:a	Ljava/lang/String;
    //   29: aload_1
    //   30: getfield 46	com/xiaomi/d/b:a	Ljava/lang/String;
    //   33: invokestatic 58	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   36: ifeq +36 -> 72
    //   39: aload_0
    //   40: getfield 18	com/xiaomi/d/c:b	Ljava/util/ArrayList;
    //   43: iload_2
    //   44: aload_1
    //   45: invokevirtual 101	java/util/ArrayList:set	(ILjava/lang/Object;)Ljava/lang/Object;
    //   48: pop
    //   49: iload_2
    //   50: aload_0
    //   51: getfield 18	com/xiaomi/d/c:b	Ljava/util/ArrayList;
    //   54: invokevirtual 39	java/util/ArrayList:size	()I
    //   57: if_icmplt +12 -> 69
    //   60: aload_0
    //   61: getfield 18	com/xiaomi/d/c:b	Ljava/util/ArrayList;
    //   64: aload_1
    //   65: invokevirtual 96	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   68: pop
    //   69: aload_0
    //   70: monitorexit
    //   71: return
    //   72: iload_2
    //   73: iconst_1
    //   74: iadd
    //   75: istore_2
    //   76: goto -72 -> 4
    //   79: astore_1
    //   80: aload_0
    //   81: monitorexit
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	c
    //   0	84	1	paramb	b
    //   3	73	2	i	int
    // Exception table:
    //   from	to	target	type
    //   4	49	79	finally
    //   49	69	79	finally
  }
  
  public final void a(boolean paramBoolean)
  {
    for (;;)
    {
      int i;
      try
      {
        i = this.b.size() - 1;
        if (i >= 0)
        {
          b localb = (b)this.b.get(i);
          if (paramBoolean)
          {
            if (864000000L >= localb.m) {
              break label141;
            }
            l1 = localb.m;
            long l2 = System.currentTimeMillis();
            if (l2 - localb.b > l1) {
              break label149;
            }
            if ((l2 - localb.b <= localb.m) || (!localb.a.startsWith("WIFI-"))) {
              break label162;
            }
            break label149;
            if (j == 0) {
              break label155;
            }
            this.b.remove(i);
            break label155;
          }
          if (localb.a()) {
            break label155;
          }
          this.b.remove(i);
        }
      }
      finally {}
      return;
      label141:
      long l1 = 864000000L;
      continue;
      label149:
      int j = 1;
      continue;
      label155:
      i -= 1;
      continue;
      label162:
      j = 0;
    }
  }
  
  public final JSONObject b()
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("host", this.a);
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((b)localIterator.next()).d());
      }
      localJSONObject2.put("fbs", localJSONArray);
    }
    finally {}
    return localJSONObject2;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append("\n");
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append((b)localIterator.next());
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */