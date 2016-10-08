package android.support.v4.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;

public final class h
  extends a<Cursor>
{
  final n<Cursor>.o f = new o(this);
  Uri g;
  String[] h;
  String i;
  String[] j;
  String k;
  Cursor l;
  android.support.v4.d.a m;
  
  public h(Context paramContext, Uri paramUri, String[] paramArrayOfString, String paramString)
  {
    super(paramContext);
    this.g = paramUri;
    this.h = paramArrayOfString;
    this.i = null;
    this.j = null;
    this.k = paramString;
  }
  
  private void a(Cursor paramCursor)
  {
    if (this.t) {
      if (paramCursor != null) {
        paramCursor.close();
      }
    }
    Cursor localCursor;
    do
    {
      return;
      localCursor = this.l;
      this.l = paramCursor;
      if (this.r) {
        super.b(paramCursor);
      }
    } while ((localCursor == null) || (localCursor == paramCursor) || (localCursor.isClosed()));
    localCursor.close();
  }
  
  /* Error */
  private Cursor o()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 77	android/support/v4/content/a:b	Landroid/support/v4/content/b;
    //   6: ifnull +22 -> 28
    //   9: iconst_1
    //   10: istore_3
    //   11: iload_3
    //   12: ifeq +21 -> 33
    //   15: new 79	android/support/v4/d/b
    //   18: dup
    //   19: invokespecial 81	android/support/v4/d/b:<init>	()V
    //   22: athrow
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: athrow
    //   28: iconst_0
    //   29: istore_3
    //   30: goto -19 -> 11
    //   33: aload_0
    //   34: new 83	android/support/v4/d/a
    //   37: dup
    //   38: invokespecial 84	android/support/v4/d/a:<init>	()V
    //   41: putfield 86	android/support/v4/content/h:m	Landroid/support/v4/d/a;
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_0
    //   47: getfield 90	android/support/v4/content/n:q	Landroid/content/Context;
    //   50: invokevirtual 96	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   53: aload_0
    //   54: getfield 34	android/support/v4/content/h:g	Landroid/net/Uri;
    //   57: aload_0
    //   58: getfield 36	android/support/v4/content/h:h	[Ljava/lang/String;
    //   61: aload_0
    //   62: getfield 38	android/support/v4/content/h:i	Ljava/lang/String;
    //   65: aload_0
    //   66: getfield 40	android/support/v4/content/h:j	[Ljava/lang/String;
    //   69: aload_0
    //   70: getfield 42	android/support/v4/content/h:k	Ljava/lang/String;
    //   73: aload_0
    //   74: getfield 86	android/support/v4/content/h:m	Landroid/support/v4/d/a;
    //   77: invokestatic 101	android/support/v4/content/c:a	(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/d/a;)Landroid/database/Cursor;
    //   80: astore_1
    //   81: aload_1
    //   82: ifnull +20 -> 102
    //   85: aload_1
    //   86: invokeinterface 105 1 0
    //   91: pop
    //   92: aload_1
    //   93: aload_0
    //   94: getfield 32	android/support/v4/content/h:f	Landroid/support/v4/content/o;
    //   97: invokeinterface 109 2 0
    //   102: aload_0
    //   103: monitorenter
    //   104: aload_0
    //   105: aconst_null
    //   106: putfield 86	android/support/v4/content/h:m	Landroid/support/v4/d/a;
    //   109: aload_0
    //   110: monitorexit
    //   111: aload_1
    //   112: areturn
    //   113: astore_2
    //   114: aload_1
    //   115: invokeinterface 57 1 0
    //   120: aload_2
    //   121: athrow
    //   122: astore_1
    //   123: aload_0
    //   124: monitorenter
    //   125: aload_0
    //   126: aconst_null
    //   127: putfield 86	android/support/v4/content/h:m	Landroid/support/v4/d/a;
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_1
    //   133: athrow
    //   134: astore_1
    //   135: aload_0
    //   136: monitorexit
    //   137: aload_1
    //   138: athrow
    //   139: astore_1
    //   140: aload_0
    //   141: monitorexit
    //   142: aload_1
    //   143: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	144	0	this	h
    //   23	4	1	localObject1	Object
    //   80	35	1	localCursor	Cursor
    //   122	11	1	localObject2	Object
    //   134	4	1	localObject3	Object
    //   139	4	1	localObject4	Object
    //   113	8	2	localRuntimeException	RuntimeException
    //   10	20	3	n	int
    // Exception table:
    //   from	to	target	type
    //   2	9	23	finally
    //   15	23	23	finally
    //   24	26	23	finally
    //   33	46	23	finally
    //   85	102	113	java/lang/RuntimeException
    //   46	81	122	finally
    //   85	102	122	finally
    //   114	122	122	finally
    //   104	111	134	finally
    //   135	137	134	finally
    //   125	132	139	finally
    //   140	142	139	finally
  }
  
  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mUri=");
    paramPrintWriter.println(this.g);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mProjection=");
    paramPrintWriter.println(Arrays.toString(this.h));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelection=");
    paramPrintWriter.println(this.i);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSelectionArgs=");
    paramPrintWriter.println(Arrays.toString(this.j));
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mSortOrder=");
    paramPrintWriter.println(this.k);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCursor=");
    paramPrintWriter.println(this.l);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mContentChanged=");
    paramPrintWriter.println(this.u);
  }
  
  /* Error */
  public final void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 158	android/support/v4/content/a:e	()V
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield 86	android/support/v4/content/h:m	Landroid/support/v4/d/a;
    //   10: ifnull +19 -> 29
    //   13: aload_0
    //   14: getfield 86	android/support/v4/content/h:m	Landroid/support/v4/d/a;
    //   17: astore_1
    //   18: aload_1
    //   19: monitorenter
    //   20: aload_1
    //   21: getfield 160	android/support/v4/d/a:a	Z
    //   24: ifeq +8 -> 32
    //   27: aload_1
    //   28: monitorexit
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_1
    //   33: iconst_1
    //   34: putfield 160	android/support/v4/d/a:a	Z
    //   37: aload_1
    //   38: iconst_1
    //   39: putfield 163	android/support/v4/d/a:c	Z
    //   42: aload_1
    //   43: getfield 166	android/support/v4/d/a:b	Ljava/lang/Object;
    //   46: astore_2
    //   47: aload_1
    //   48: monitorexit
    //   49: aload_2
    //   50: ifnull +10 -> 60
    //   53: aload_2
    //   54: checkcast 168	android/os/CancellationSignal
    //   57: invokevirtual 171	android/os/CancellationSignal:cancel	()V
    //   60: aload_1
    //   61: monitorenter
    //   62: aload_1
    //   63: iconst_0
    //   64: putfield 163	android/support/v4/d/a:c	Z
    //   67: aload_1
    //   68: invokevirtual 176	java/lang/Object:notifyAll	()V
    //   71: aload_1
    //   72: monitorexit
    //   73: goto -44 -> 29
    //   76: astore_2
    //   77: aload_1
    //   78: monitorexit
    //   79: aload_2
    //   80: athrow
    //   81: astore_1
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    //   86: astore_2
    //   87: aload_1
    //   88: monitorexit
    //   89: aload_2
    //   90: athrow
    //   91: astore_2
    //   92: aload_1
    //   93: monitorenter
    //   94: aload_1
    //   95: iconst_0
    //   96: putfield 163	android/support/v4/d/a:c	Z
    //   99: aload_1
    //   100: invokevirtual 176	java/lang/Object:notifyAll	()V
    //   103: aload_1
    //   104: monitorexit
    //   105: aload_2
    //   106: athrow
    //   107: astore_2
    //   108: aload_1
    //   109: monitorexit
    //   110: aload_2
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	h
    //   17	61	1	locala	android.support.v4.d.a
    //   81	28	1	localObject1	Object
    //   46	8	2	localObject2	Object
    //   76	4	2	localObject3	Object
    //   86	4	2	localObject4	Object
    //   91	15	2	localObject5	Object
    //   107	4	2	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   62	73	76	finally
    //   77	79	76	finally
    //   6	20	81	finally
    //   29	31	81	finally
    //   60	62	81	finally
    //   79	81	81	finally
    //   82	84	81	finally
    //   89	91	81	finally
    //   92	94	81	finally
    //   105	107	81	finally
    //   110	112	81	finally
    //   20	29	86	finally
    //   32	49	86	finally
    //   87	89	86	finally
    //   53	60	91	finally
    //   94	105	107	finally
    //   108	110	107	finally
  }
  
  protected final void f()
  {
    if (this.l != null) {
      a(this.l);
    }
    boolean bool = this.u;
    this.u = false;
    this.v |= bool;
    if ((bool) || (this.l == null)) {
      k();
    }
  }
  
  protected final void g()
  {
    j();
  }
  
  protected final void h()
  {
    super.h();
    j();
    if ((this.l != null) && (!this.l.isClosed())) {
      this.l.close();
    }
    this.l = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */