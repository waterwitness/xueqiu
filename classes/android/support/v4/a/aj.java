package android.support.v4.a;

import android.os.Bundle;
import android.support.v4.content.n;
import android.support.v4.content.q;
import android.support.v4.e.b;
import android.support.v4.e.c;
import android.support.v4.e.o;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class aj
  implements android.support.v4.content.p<Object>, q<Object>
{
  final int a = 0;
  final Bundle b = null;
  ah<Object> c;
  n<Object> d;
  boolean e;
  boolean f;
  Object g;
  boolean h;
  boolean i;
  boolean j;
  boolean k;
  boolean l;
  boolean m;
  aj n;
  
  public aj(int paramInt)
  {
    ah localah;
    this.c = localah;
  }
  
  final void a()
  {
    if ((this.i) && (this.j)) {
      this.h = true;
    }
    do
    {
      do
      {
        return;
      } while (this.h);
      this.h = true;
      if (ai.a) {
        Log.v("LoaderManager", "  Starting: " + this);
      }
      if ((this.d == null) && (this.c != null)) {
        this.d = this.c.a();
      }
    } while (this.d == null);
    if ((this.d.getClass().isMemberClass()) && (!Modifier.isStatic(this.d.getClass().getModifiers()))) {
      throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
    }
    if (!this.m)
    {
      n localn = this.d;
      int i1 = this.a;
      if (localn.o != null) {
        throw new IllegalStateException("There is already a listener registered");
      }
      localn.o = this;
      localn.n = i1;
      localn = this.d;
      if (localn.p != null) {
        throw new IllegalStateException("There is already a listener registered");
      }
      localn.p = this;
      this.m = true;
    }
    this.d.i();
  }
  
  public final void a(n<Object> paramn, Object paramObject)
  {
    if (ai.a) {
      Log.v("LoaderManager", "onLoadComplete: " + this);
    }
    if (this.l) {
      if (ai.a) {
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
      }
    }
    do
    {
      do
      {
        return;
        if (this.o.b.a(this.a) == this) {
          break;
        }
      } while (!ai.a);
      Log.v("LoaderManager", "  Ignoring load complete -- not active");
      return;
      aj localaj = this.n;
      if (localaj != null)
      {
        if (ai.a) {
          Log.v("LoaderManager", "  Switching to pending loader: " + localaj);
        }
        this.n = null;
        this.o.b.a(this.a, null);
        c();
        this.o.a(localaj);
        return;
      }
      if ((this.g != paramObject) || (!this.e))
      {
        this.g = paramObject;
        this.e = true;
        if (this.h) {
          b(paramn, paramObject);
        }
      }
      paramn = (aj)this.o.c.a(this.a);
      if ((paramn != null) && (paramn != this))
      {
        paramn.f = false;
        paramn.c();
        paramn = this.o.c;
        int i1 = this.a;
        i1 = b.a(paramn.c, paramn.e, i1);
        if ((i1 >= 0) && (paramn.d[i1] != o.a))
        {
          paramn.d[i1] = o.a;
          paramn.b = true;
        }
      }
    } while ((ai.a(this.o) == null) || (this.o.a()));
    ai.a(this.o).f.e();
  }
  
  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    String str = paramString;
    paramString = this;
    for (;;)
    {
      paramPrintWriter.print(str);
      paramPrintWriter.print("mId=");
      paramPrintWriter.print(paramString.a);
      paramPrintWriter.print(" mArgs=");
      paramPrintWriter.println(paramString.b);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mCallbacks=");
      paramPrintWriter.println(paramString.c);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mLoader=");
      paramPrintWriter.println(paramString.d);
      if (paramString.d != null) {
        paramString.d.a(str + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
      }
      if ((paramString.e) || (paramString.f))
      {
        paramPrintWriter.print(str);
        paramPrintWriter.print("mHaveData=");
        paramPrintWriter.print(paramString.e);
        paramPrintWriter.print("  mDeliveredData=");
        paramPrintWriter.println(paramString.f);
        paramPrintWriter.print(str);
        paramPrintWriter.print("mData=");
        paramPrintWriter.println(paramString.g);
      }
      paramPrintWriter.print(str);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(paramString.h);
      paramPrintWriter.print(" mReportNextStart=");
      paramPrintWriter.print(paramString.k);
      paramPrintWriter.print(" mDestroyed=");
      paramPrintWriter.println(paramString.l);
      paramPrintWriter.print(str);
      paramPrintWriter.print("mRetaining=");
      paramPrintWriter.print(paramString.i);
      paramPrintWriter.print(" mRetainingStarted=");
      paramPrintWriter.print(paramString.j);
      paramPrintWriter.print(" mListenerRegistered=");
      paramPrintWriter.println(paramString.m);
      if (paramString.n == null) {
        break;
      }
      paramPrintWriter.print(str);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(paramString.n);
      paramPrintWriter.println(":");
      paramString = paramString.n;
      str = str + "  ";
    }
  }
  
  final void b()
  {
    if (ai.a) {
      Log.v("LoaderManager", "  Stopping: " + this);
    }
    this.h = false;
    if ((!this.i) && (this.d != null) && (this.m))
    {
      this.m = false;
      this.d.a(this);
      this.d.a(this);
      this.d.l();
    }
  }
  
  final void b(n<Object> paramn, Object paramObject)
  {
    String str;
    if (this.c != null)
    {
      if (ai.a(this.o) == null) {
        break label185;
      }
      str = ai.a(this.o).f.v;
      ai.a(this.o).f.v = "onLoadFinished";
    }
    for (;;)
    {
      try
      {
        if (ai.a)
        {
          paramn = new StringBuilder("  onLoadFinished in ").append(paramn).append(": ");
          StringBuilder localStringBuilder = new StringBuilder(64);
          c.a(paramObject, localStringBuilder);
          localStringBuilder.append("}");
          Log.v("LoaderManager", localStringBuilder.toString());
        }
        this.c.a(paramObject);
        if (ai.a(this.o) != null) {
          ai.a(this.o).f.v = str;
        }
        this.f = true;
        return;
      }
      finally
      {
        if (ai.a(this.o) != null) {
          ai.a(this.o).f.v = str;
        }
      }
      label185:
      str = null;
    }
  }
  
  /* Error */
  final void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: astore_1
    //   2: getstatic 60	android/support/v4/a/ai:a	Z
    //   5: ifeq +26 -> 31
    //   8: ldc 62
    //   10: new 64	java/lang/StringBuilder
    //   13: dup
    //   14: ldc_w 299
    //   17: invokespecial 69	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: invokestatic 83	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   30: pop
    //   31: aload_1
    //   32: iconst_1
    //   33: putfield 140	android/support/v4/a/aj:l	Z
    //   36: aload_1
    //   37: getfield 174	android/support/v4/a/aj:f	Z
    //   40: istore 4
    //   42: aload_1
    //   43: iconst_0
    //   44: putfield 174	android/support/v4/a/aj:f	Z
    //   47: aload_1
    //   48: getfield 47	android/support/v4/a/aj:c	Landroid/support/v4/a/ah;
    //   51: ifnull +124 -> 175
    //   54: aload_1
    //   55: getfield 85	android/support/v4/a/aj:d	Landroid/support/v4/content/n;
    //   58: ifnull +117 -> 175
    //   61: aload_1
    //   62: getfield 168	android/support/v4/a/aj:e	Z
    //   65: ifeq +110 -> 175
    //   68: iload 4
    //   70: ifeq +105 -> 175
    //   73: getstatic 60	android/support/v4/a/ai:a	Z
    //   76: ifeq +26 -> 102
    //   79: ldc 62
    //   81: new 64	java/lang/StringBuilder
    //   84: dup
    //   85: ldc_w 301
    //   88: invokespecial 69	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   91: aload_1
    //   92: invokevirtual 73	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokestatic 83	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: aload_1
    //   103: getfield 38	android/support/v4/a/aj:o	Landroid/support/v4/a/ai;
    //   106: invokestatic 194	android/support/v4/a/ai:a	(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    //   109: ifnull +166 -> 275
    //   112: aload_1
    //   113: getfield 38	android/support/v4/a/aj:o	Landroid/support/v4/a/ai;
    //   116: invokestatic 194	android/support/v4/a/ai:a	(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    //   119: getfield 201	android/support/v4/a/p:f	Landroid/support/v4/a/r;
    //   122: getfield 280	android/support/v4/a/r:v	Ljava/lang/String;
    //   125: astore_2
    //   126: aload_1
    //   127: getfield 38	android/support/v4/a/aj:o	Landroid/support/v4/a/ai;
    //   130: invokestatic 194	android/support/v4/a/ai:a	(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    //   133: getfield 201	android/support/v4/a/p:f	Landroid/support/v4/a/r;
    //   136: ldc_w 303
    //   139: putfield 280	android/support/v4/a/r:v	Ljava/lang/String;
    //   142: aload_1
    //   143: getfield 47	android/support/v4/a/aj:c	Landroid/support/v4/a/ah;
    //   146: invokeinterface 305 1 0
    //   151: aload_1
    //   152: getfield 38	android/support/v4/a/aj:o	Landroid/support/v4/a/ai;
    //   155: invokestatic 194	android/support/v4/a/ai:a	(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    //   158: ifnull +17 -> 175
    //   161: aload_1
    //   162: getfield 38	android/support/v4/a/aj:o	Landroid/support/v4/a/ai;
    //   165: invokestatic 194	android/support/v4/a/ai:a	(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    //   168: getfield 201	android/support/v4/a/p:f	Landroid/support/v4/a/r;
    //   171: aload_2
    //   172: putfield 280	android/support/v4/a/r:v	Ljava/lang/String;
    //   175: aload_1
    //   176: aconst_null
    //   177: putfield 47	android/support/v4/a/aj:c	Landroid/support/v4/a/ah;
    //   180: aload_1
    //   181: aconst_null
    //   182: putfield 166	android/support/v4/a/aj:g	Ljava/lang/Object;
    //   185: aload_1
    //   186: iconst_0
    //   187: putfield 168	android/support/v4/a/aj:e	Z
    //   190: aload_1
    //   191: getfield 85	android/support/v4/a/aj:d	Landroid/support/v4/content/n;
    //   194: ifnull +38 -> 232
    //   197: aload_1
    //   198: getfield 117	android/support/v4/a/aj:m	Z
    //   201: ifeq +24 -> 225
    //   204: aload_1
    //   205: iconst_0
    //   206: putfield 117	android/support/v4/a/aj:m	Z
    //   209: aload_1
    //   210: getfield 85	android/support/v4/a/aj:d	Landroid/support/v4/content/n;
    //   213: aload_1
    //   214: invokevirtual 272	android/support/v4/content/n:a	(Landroid/support/v4/content/q;)V
    //   217: aload_1
    //   218: getfield 85	android/support/v4/a/aj:d	Landroid/support/v4/content/n;
    //   221: aload_1
    //   222: invokevirtual 275	android/support/v4/content/n:a	(Landroid/support/v4/content/p;)V
    //   225: aload_1
    //   226: getfield 85	android/support/v4/a/aj:d	Landroid/support/v4/content/n;
    //   229: invokevirtual 307	android/support/v4/content/n:m	()V
    //   232: aload_1
    //   233: getfield 154	android/support/v4/a/aj:n	Landroid/support/v4/a/aj;
    //   236: ifnull +38 -> 274
    //   239: aload_1
    //   240: getfield 154	android/support/v4/a/aj:n	Landroid/support/v4/a/aj;
    //   243: astore_1
    //   244: goto -242 -> 2
    //   247: astore_3
    //   248: aload_1
    //   249: getfield 38	android/support/v4/a/aj:o	Landroid/support/v4/a/ai;
    //   252: invokestatic 194	android/support/v4/a/ai:a	(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    //   255: ifnull +17 -> 272
    //   258: aload_1
    //   259: getfield 38	android/support/v4/a/aj:o	Landroid/support/v4/a/ai;
    //   262: invokestatic 194	android/support/v4/a/ai:a	(Landroid/support/v4/a/ai;)Landroid/support/v4/a/p;
    //   265: getfield 201	android/support/v4/a/p:f	Landroid/support/v4/a/r;
    //   268: aload_2
    //   269: putfield 280	android/support/v4/a/r:v	Ljava/lang/String;
    //   272: aload_3
    //   273: athrow
    //   274: return
    //   275: aconst_null
    //   276: astore_2
    //   277: goto -135 -> 142
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	this	aj
    //   1	258	1	localaj	aj
    //   125	152	2	str	String
    //   247	26	3	localObject	Object
    //   40	29	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   142	151	247	finally
  }
  
  public final void d()
  {
    if (ai.a) {
      Log.v("LoaderManager", "onLoadCanceled: " + this);
    }
    if (this.l) {
      if (ai.a) {
        Log.v("LoaderManager", "  Ignoring load canceled -- destroyed");
      }
    }
    aj localaj;
    do
    {
      do
      {
        return;
        if (this.o.b.a(this.a) == this) {
          break;
        }
      } while (!ai.a);
      Log.v("LoaderManager", "  Ignoring load canceled -- not active");
      return;
      localaj = this.n;
    } while (localaj == null);
    if (ai.a) {
      Log.v("LoaderManager", "  Switching to pending loader: " + localaj);
    }
    this.n = null;
    this.o.b.a(this.a, null);
    c();
    this.o.a(localaj);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.a);
    localStringBuilder.append(" : ");
    c.a(this.d, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */