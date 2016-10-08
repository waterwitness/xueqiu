package u.aly;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class gt
{
  private static gc a = null;
  private static gr b = null;
  
  public static gc a(Context paramContext)
  {
    for (;;)
    {
      Object localObject3;
      try
      {
        Object localObject1;
        if (a == null)
        {
          localObject1 = new gc(paramContext);
          a = (gc)localObject1;
          ((gc)localObject1).a(new gq(paramContext));
          a.a(new gs(paramContext));
          a.a(new cz(paramContext));
          a.a(new gu(paramContext));
          paramContext = a;
          localObject3 = paramContext.d();
          if (localObject3 != null) {
            localObject1 = new ArrayList(paramContext.d.size());
          }
        }
        try
        {
          paramContext.a = ((bh)localObject3);
          localObject3 = paramContext.d.iterator();
          if (!((Iterator)localObject3).hasNext())
          {
            localObject1 = ((List)localObject1).iterator();
            if (!((Iterator)localObject1).hasNext())
            {
              paramContext.a();
              paramContext = a;
              return paramContext;
            }
          }
          else
          {
            a locala = (a)((Iterator)localObject3).next();
            locala.a(paramContext.a);
            if (locala.a()) {
              continue;
            }
            ((List)localObject1).add(locala);
            continue;
            paramContext = finally;
          }
        }
        finally {}
        localObject3 = (a)((Iterator)localObject2).next();
      }
      finally {}
      paramContext.d.remove(localObject3);
    }
  }
  
  /* Error */
  public static gr b(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_3
    //   4: ldc 2
    //   6: monitorenter
    //   7: getstatic 14	u/aly/gt:b	Lu/aly/gr;
    //   10: ifnonnull +99 -> 109
    //   13: new 96	u/aly/gr
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 97	u/aly/gr:<init>	(Landroid/content/Context;)V
    //   21: astore 4
    //   23: aload 4
    //   25: putstatic 14	u/aly/gt:b	Lu/aly/gr;
    //   28: new 99	java/io/File
    //   31: dup
    //   32: aload 4
    //   34: getfield 103	u/aly/gr:c	Landroid/content/Context;
    //   37: invokevirtual 109	android/content/Context:getFilesDir	()Ljava/io/File;
    //   40: ldc 111
    //   42: invokespecial 114	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   45: invokevirtual 117	java/io/File:exists	()Z
    //   48: istore 5
    //   50: iload 5
    //   52: ifeq +57 -> 109
    //   55: aload 4
    //   57: getfield 103	u/aly/gr:c	Landroid/content/Context;
    //   60: ldc 111
    //   62: invokevirtual 121	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   65: astore_0
    //   66: aload_0
    //   67: astore_1
    //   68: aload_0
    //   69: invokestatic 126	u/aly/ex:b	(Ljava/io/InputStream;)[B
    //   72: astore_2
    //   73: aload_2
    //   74: astore_1
    //   75: aload_0
    //   76: invokestatic 129	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   79: aload_1
    //   80: ifnull +29 -> 109
    //   83: new 131	u/aly/bn
    //   86: dup
    //   87: invokespecial 133	u/aly/bn:<init>	()V
    //   90: astore_0
    //   91: new 135	u/aly/fe
    //   94: dup
    //   95: invokespecial 136	u/aly/fe:<init>	()V
    //   98: aload_0
    //   99: aload_1
    //   100: invokevirtual 139	u/aly/fe:a	(Lu/aly/fa;[B)V
    //   103: aload 4
    //   105: aload_0
    //   106: putfield 142	u/aly/gr:b	Lu/aly/bn;
    //   109: getstatic 14	u/aly/gt:b	Lu/aly/gr;
    //   112: astore_0
    //   113: ldc 2
    //   115: monitorexit
    //   116: aload_0
    //   117: areturn
    //   118: astore_2
    //   119: aconst_null
    //   120: astore_0
    //   121: aload_0
    //   122: astore_1
    //   123: aload_2
    //   124: invokevirtual 145	java/lang/Exception:printStackTrace	()V
    //   127: aload_0
    //   128: invokestatic 129	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   131: aload_3
    //   132: astore_1
    //   133: goto -54 -> 79
    //   136: astore_0
    //   137: ldc 2
    //   139: monitorexit
    //   140: aload_0
    //   141: athrow
    //   142: astore_0
    //   143: aload_1
    //   144: invokestatic 129	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   147: aload_0
    //   148: athrow
    //   149: astore_0
    //   150: aload_0
    //   151: invokevirtual 145	java/lang/Exception:printStackTrace	()V
    //   154: goto -45 -> 109
    //   157: astore_0
    //   158: goto -15 -> 143
    //   161: astore_2
    //   162: goto -41 -> 121
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	paramContext	Context
    //   1	143	1	localObject1	Object
    //   72	2	2	arrayOfByte	byte[]
    //   118	6	2	localException1	Exception
    //   161	1	2	localException2	Exception
    //   3	129	3	localObject2	Object
    //   21	83	4	localgr	gr
    //   48	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   55	66	118	java/lang/Exception
    //   7	50	136	finally
    //   75	79	136	finally
    //   83	109	136	finally
    //   109	113	136	finally
    //   127	131	136	finally
    //   143	149	136	finally
    //   150	154	136	finally
    //   55	66	142	finally
    //   83	109	149	java/lang/Exception
    //   68	73	157	finally
    //   123	127	157	finally
    //   68	73	161	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */