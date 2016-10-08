package u.aly;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class gc
{
  bh a = null;
  long b;
  long c;
  Set<a> d = new HashSet();
  private final String e = "umeng_it.cache";
  private File f;
  
  public gc(Context paramContext)
  {
    this.f = new File(paramContext.getFilesDir(), "umeng_it.cache");
    this.c = 86400000L;
  }
  
  final void a()
  {
    bh localbh = new bh();
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.d.iterator();
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        localbh.b = localArrayList;
        localbh.a = localHashMap;
      }
      try
      {
        this.a = localbh;
        return;
      }
      finally {}
      a locala = (a)localIterator.next();
      if (locala.a())
      {
        if (locala.c != null) {
          localHashMap.put(locala.a, locala.c);
        }
        if ((locala.b != null) && (!locala.b.isEmpty())) {
          localArrayList.addAll(locala.b);
        }
      }
    }
  }
  
  public final void a(a parama)
  {
    this.d.add(parama);
  }
  
  public final void b()
  {
    Iterator localIterator = this.d.iterator();
    for (int i = 0;; i = 1)
    {
      a locala;
      do
      {
        if (!localIterator.hasNext())
        {
          if (i != 0)
          {
            this.a.a(false);
            c();
          }
          return;
        }
        locala = (a)localIterator.next();
      } while ((!locala.a()) || (locala.b == null) || (locala.b.isEmpty()));
      locala.b = null;
    }
  }
  
  public final void c()
  {
    Object localObject1;
    if (this.a != null)
    {
      localObject1 = this.a;
      if (localObject1 == null) {}
    }
    try
    {
      try
      {
        localObject1 = new fh().a((fa)localObject1);
        if (localObject1 != null) {
          ex.a(this.f, (byte[])localObject1);
        }
        return;
      }
      finally {}
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  /* Error */
  final bh d()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	u/aly/gc:f	Ljava/io/File;
    //   4: invokevirtual 136	java/io/File:exists	()Z
    //   7: ifne +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: new 138	java/io/FileInputStream
    //   15: dup
    //   16: aload_0
    //   17: getfield 45	u/aly/gc:f	Ljava/io/File;
    //   20: invokespecial 141	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   23: astore_2
    //   24: aload_2
    //   25: astore_1
    //   26: aload_2
    //   27: invokestatic 144	u/aly/ex:b	(Ljava/io/InputStream;)[B
    //   30: astore_3
    //   31: aload_2
    //   32: astore_1
    //   33: new 52	u/aly/bh
    //   36: dup
    //   37: invokespecial 53	u/aly/bh:<init>	()V
    //   40: astore 4
    //   42: aload_2
    //   43: astore_1
    //   44: new 146	u/aly/fe
    //   47: dup
    //   48: invokespecial 147	u/aly/fe:<init>	()V
    //   51: aload 4
    //   53: aload_3
    //   54: invokevirtual 150	u/aly/fe:a	(Lu/aly/fa;[B)V
    //   57: aload_2
    //   58: invokestatic 153	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   61: aload 4
    //   63: areturn
    //   64: astore_3
    //   65: aconst_null
    //   66: astore_2
    //   67: aload_2
    //   68: astore_1
    //   69: aload_3
    //   70: invokevirtual 132	java/lang/Exception:printStackTrace	()V
    //   73: aload_2
    //   74: invokestatic 153	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   77: aconst_null
    //   78: areturn
    //   79: astore_1
    //   80: aconst_null
    //   81: astore_3
    //   82: aload_1
    //   83: astore_2
    //   84: aload_3
    //   85: invokestatic 153	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   88: aload_2
    //   89: athrow
    //   90: astore_2
    //   91: aload_1
    //   92: astore_3
    //   93: goto -9 -> 84
    //   96: astore_3
    //   97: goto -30 -> 67
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	gc
    //   25	44	1	localObject1	Object
    //   79	13	1	localObject2	Object
    //   23	66	2	localObject3	Object
    //   90	1	2	localObject4	Object
    //   30	24	3	arrayOfByte	byte[]
    //   64	6	3	localException1	Exception
    //   81	12	3	localObject5	Object
    //   96	1	3	localException2	Exception
    //   40	22	4	localbh	bh
    // Exception table:
    //   from	to	target	type
    //   12	24	64	java/lang/Exception
    //   12	24	79	finally
    //   26	31	90	finally
    //   33	42	90	finally
    //   44	57	90	finally
    //   69	73	90	finally
    //   26	31	96	java/lang/Exception
    //   33	42	96	java/lang/Exception
    //   44	57	96	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */