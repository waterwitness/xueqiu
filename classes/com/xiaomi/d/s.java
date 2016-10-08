package com.xiaomi.d;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import org.json.JSONArray;
import org.json.JSONObject;

final class s
  implements Comparable<s>
{
  String a;
  protected int b;
  private final LinkedList<a> c = new LinkedList();
  private long d = 0L;
  
  public s()
  {
    this(null, 0);
  }
  
  public s(String paramString, int paramInt)
  {
    this.a = paramString;
    this.b = paramInt;
  }
  
  public final s a(JSONObject paramJSONObject)
  {
    try
    {
      this.d = paramJSONObject.getLong("tt");
      this.b = paramJSONObject.getInt("wt");
      this.a = paramJSONObject.getString("host");
      paramJSONObject = paramJSONObject.getJSONArray("ah");
      int i = 0;
      while (i < paramJSONObject.length())
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
        LinkedList localLinkedList = this.c;
        a locala = new a();
        locala.b = localJSONObject.getLong("cost");
        locala.e = localJSONObject.getLong("size");
        locala.c = localJSONObject.getLong("ts");
        locala.a = localJSONObject.getInt("wt");
        locala.d = localJSONObject.optString("expt");
        localLinkedList.add(locala);
        i += 1;
      }
      return this;
    }
    finally {}
  }
  
  public final ArrayList<a> a()
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (locala.c > this.d) {
          localArrayList.add(locala);
        }
      }
      this.d = System.currentTimeMillis();
    }
    finally {}
    return localArrayList1;
  }
  
  /* Error */
  protected final void a(a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +106 -> 109
    //   6: invokestatic 134	com/xiaomi/d/m:a	()Lcom/xiaomi/d/m;
    //   9: astore_2
    //   10: aload_2
    //   11: getfield 137	com/xiaomi/d/m:c	Z
    //   14: ifne +26 -> 40
    //   17: aload_2
    //   18: iconst_1
    //   19: putfield 137	com/xiaomi/d/m:c	Z
    //   22: aload_2
    //   23: getfield 140	com/xiaomi/d/m:b	Ljava/util/Timer;
    //   26: new 142	com/xiaomi/d/r
    //   29: dup
    //   30: aload_2
    //   31: invokespecial 145	com/xiaomi/d/r:<init>	(Lcom/xiaomi/d/m;)V
    //   34: ldc2_w 146
    //   37: invokevirtual 153	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   40: aload_0
    //   41: getfield 29	com/xiaomi/d/s:c	Ljava/util/LinkedList;
    //   44: aload_1
    //   45: invokevirtual 101	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   48: pop
    //   49: aload_1
    //   50: getfield 90	com/xiaomi/d/a:a	I
    //   53: istore 5
    //   55: iload 5
    //   57: ifle +55 -> 112
    //   60: aload_0
    //   61: aload_0
    //   62: getfield 35	com/xiaomi/d/s:b	I
    //   65: aload_1
    //   66: getfield 90	com/xiaomi/d/a:a	I
    //   69: iadd
    //   70: putfield 35	com/xiaomi/d/s:b	I
    //   73: aload_0
    //   74: getfield 29	com/xiaomi/d/s:c	Ljava/util/LinkedList;
    //   77: invokevirtual 155	java/util/LinkedList:size	()I
    //   80: bipush 30
    //   82: if_icmple +27 -> 109
    //   85: aload_0
    //   86: getfield 29	com/xiaomi/d/s:c	Ljava/util/LinkedList;
    //   89: invokevirtual 158	java/util/LinkedList:remove	()Ljava/lang/Object;
    //   92: checkcast 74	com/xiaomi/d/a
    //   95: astore_1
    //   96: aload_0
    //   97: aload_0
    //   98: getfield 35	com/xiaomi/d/s:b	I
    //   101: aload_1
    //   102: getfield 90	com/xiaomi/d/a:a	I
    //   105: isub
    //   106: putfield 35	com/xiaomi/d/s:b	I
    //   109: aload_0
    //   110: monitorexit
    //   111: return
    //   112: aload_0
    //   113: getfield 29	com/xiaomi/d/s:c	Ljava/util/LinkedList;
    //   116: invokevirtual 155	java/util/LinkedList:size	()I
    //   119: istore_3
    //   120: iconst_0
    //   121: istore 4
    //   123: iload_3
    //   124: iconst_1
    //   125: isub
    //   126: istore_3
    //   127: iload_3
    //   128: iflt +33 -> 161
    //   131: aload_0
    //   132: getfield 29	com/xiaomi/d/s:c	Ljava/util/LinkedList;
    //   135: iload_3
    //   136: invokevirtual 162	java/util/LinkedList:get	(I)Ljava/lang/Object;
    //   139: checkcast 74	com/xiaomi/d/a
    //   142: getfield 90	com/xiaomi/d/a:a	I
    //   145: ifge +16 -> 161
    //   148: iload 4
    //   150: iconst_1
    //   151: iadd
    //   152: istore 4
    //   154: iload_3
    //   155: iconst_1
    //   156: isub
    //   157: istore_3
    //   158: goto -31 -> 127
    //   161: aload_0
    //   162: aload_0
    //   163: getfield 35	com/xiaomi/d/s:b	I
    //   166: iload 5
    //   168: iload 4
    //   170: imul
    //   171: iadd
    //   172: putfield 35	com/xiaomi/d/s:b	I
    //   175: goto -102 -> 73
    //   178: astore_1
    //   179: aload_0
    //   180: monitorexit
    //   181: aload_1
    //   182: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	s
    //   0	183	1	parama	a
    //   9	22	2	localm	m
    //   119	39	3	i	int
    //   121	50	4	j	int
    //   53	118	5	k	int
    // Exception table:
    //   from	to	target	type
    //   6	40	178	finally
    //   40	55	178	finally
    //   60	73	178	finally
    //   73	109	178	finally
    //   112	120	178	finally
    //   131	148	178	finally
    //   161	175	178	finally
  }
  
  public final JSONObject b()
  {
    try
    {
      JSONObject localJSONObject1 = new JSONObject();
      localJSONObject1.put("tt", this.d);
      localJSONObject1.put("wt", this.b);
      localJSONObject1.put("host", this.a);
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        JSONObject localJSONObject3 = new JSONObject();
        localJSONObject3.put("cost", locala.b);
        localJSONObject3.put("size", locala.e);
        localJSONObject3.put("ts", locala.c);
        localJSONObject3.put("wt", locala.a);
        localJSONObject3.put("expt", locala.d);
        localJSONArray.put(localJSONObject3);
      }
      localJSONObject2.put("ah", localJSONArray);
    }
    finally {}
    return localJSONObject2;
  }
  
  public final String toString()
  {
    return this.a + ":" + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */