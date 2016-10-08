package com.xiaomi.push.service;

import com.xiaomi.e.e.i;
import com.xiaomi.push.b.b;
import java.util.ArrayList;
import java.util.List;

public final class t
{
  private static t d;
  b a;
  private List<u> b = new ArrayList();
  private com.xiaomi.a.a.c.d c;
  
  /* Error */
  static
  {
    // Byte code:
    //   0: new 2	com/xiaomi/push/service/t
    //   3: dup
    //   4: invokespecial 20	com/xiaomi/push/service/t:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: putstatic 22	com/xiaomi/push/service/t:d	Lcom/xiaomi/push/service/t;
    //   12: aconst_null
    //   13: astore_1
    //   14: aconst_null
    //   15: astore_2
    //   16: aload_1
    //   17: astore_0
    //   18: aload_3
    //   19: getfield 24	com/xiaomi/push/service/t:a	Lcom/xiaomi/push/b/b;
    //   22: ifnull +98 -> 120
    //   25: aload_1
    //   26: astore_0
    //   27: new 26	java/io/BufferedInputStream
    //   30: dup
    //   31: getstatic 31	com/xiaomi/e/e/h:a	Landroid/content/Context;
    //   34: ldc 33
    //   36: invokevirtual 39	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   39: invokespecial 42	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   42: astore_1
    //   43: aload_3
    //   44: new 44	com/google/a/a/a
    //   47: dup
    //   48: aload_1
    //   49: invokespecial 45	com/google/a/a/a:<init>	(Ljava/io/InputStream;)V
    //   52: invokestatic 50	com/xiaomi/push/b/b:b	(Lcom/google/a/a/a;)Lcom/xiaomi/push/b/b;
    //   55: putfield 24	com/xiaomi/push/service/t:a	Lcom/xiaomi/push/b/b;
    //   58: aload_1
    //   59: invokevirtual 53	java/io/BufferedInputStream:close	()V
    //   62: aload_1
    //   63: invokestatic 57	com/xiaomi/a/a/a/a:a	(Ljava/io/InputStream;)V
    //   66: return
    //   67: astore_0
    //   68: aload_2
    //   69: astore_1
    //   70: aload_0
    //   71: astore_2
    //   72: aload_1
    //   73: astore_0
    //   74: new 59	java/lang/StringBuilder
    //   77: dup
    //   78: ldc 61
    //   80: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_2
    //   84: invokevirtual 68	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   87: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokestatic 79	com/xiaomi/a/a/b/c:a	(Ljava/lang/String;)V
    //   96: aload_1
    //   97: invokestatic 57	com/xiaomi/a/a/a/a:a	(Ljava/io/InputStream;)V
    //   100: return
    //   101: astore_2
    //   102: aload_0
    //   103: astore_1
    //   104: aload_2
    //   105: astore_0
    //   106: aload_1
    //   107: invokestatic 57	com/xiaomi/a/a/a/a:a	(Ljava/io/InputStream;)V
    //   110: aload_0
    //   111: athrow
    //   112: astore_0
    //   113: goto -7 -> 106
    //   116: astore_2
    //   117: goto -45 -> 72
    //   120: aconst_null
    //   121: astore_1
    //   122: goto -60 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   17	10	0	localObject1	Object
    //   67	4	0	localException1	Exception
    //   73	38	0	localObject2	Object
    //   112	1	0	localObject3	Object
    //   13	109	1	localObject4	Object
    //   15	69	2	localObject5	Object
    //   101	4	2	localObject6	Object
    //   116	1	2	localException2	Exception
    //   7	37	3	localt	t
    // Exception table:
    //   from	to	target	type
    //   18	25	67	java/lang/Exception
    //   27	43	67	java/lang/Exception
    //   18	25	101	finally
    //   27	43	101	finally
    //   74	96	101	finally
    //   43	62	112	finally
    //   43	62	116	java/lang/Exception
  }
  
  public static t a()
  {
    return d;
  }
  
  final void a(com.xiaomi.push.b.d paramd)
  {
    if ((paramd.c) && (paramd.d > c()) && (this.c == null))
    {
      this.c = new v(this);
      i.a(this.c);
    }
    try
    {
      u[] arrayOfu = (u[])this.b.toArray(new u[this.b.size()]);
      int j = arrayOfu.length;
      int i = 0;
      while (i < j)
      {
        arrayOfu[i].a(paramd);
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public final void a(u paramu)
  {
    try
    {
      this.b.add(paramu);
      return;
    }
    finally
    {
      paramu = finally;
      throw paramu;
    }
  }
  
  final void b()
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
  
  final int c()
  {
    if (this.a != null) {
      return this.a.a;
    }
    return 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */