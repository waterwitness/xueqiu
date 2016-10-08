package android.support.v4.a;

import android.support.v4.content.n;
import android.support.v4.e.c;
import android.support.v4.e.o;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

final class ai
  extends ag
{
  static boolean a = false;
  final o<aj> b = new o();
  final o<aj> c = new o();
  final String d;
  boolean e;
  boolean f;
  boolean g;
  p h;
  
  ai(String paramString, p paramp, boolean paramBoolean)
  {
    this.d = paramString;
    this.h = paramp;
    this.e = paramBoolean;
  }
  
  private aj b(ah<Object> paramah)
  {
    try
    {
      this.g = true;
      aj localaj = new aj(this, paramah);
      localaj.d = paramah.a();
      a(localaj);
      return localaj;
    }
    finally
    {
      this.g = false;
    }
  }
  
  public final <D> n<D> a(ah<D> paramah)
  {
    if (this.g) {
      throw new IllegalStateException("Called while creating a loader");
    }
    aj localaj = (aj)this.b.a(0);
    if (a) {
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + null);
    }
    if (localaj == null)
    {
      localaj = b(paramah);
      paramah = localaj;
      if (a) {
        Log.v("LoaderManager", "  Created new loader " + localaj);
      }
    }
    for (paramah = localaj;; paramah = localaj)
    {
      if ((paramah.e) && (this.e)) {
        paramah.b(paramah.d, paramah.g);
      }
      return paramah.d;
      if (a) {
        Log.v("LoaderManager", "  Re-using existing loader " + localaj);
      }
      localaj.c = paramah;
    }
  }
  
  final void a(aj paramaj)
  {
    this.b.a(paramaj.a, paramaj);
    if (this.e) {
      paramaj.a();
    }
  }
  
  public final void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int j = 0;
    String str;
    int i;
    aj localaj;
    if (this.b.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < this.b.a())
      {
        localaj = (aj)this.b.c(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.b.b(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localaj.toString());
        localaj.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (this.c.a() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = j;
      while (i < this.c.a())
      {
        localaj = (aj)this.c.c(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.c.b(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localaj.toString());
        localaj.a(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  public final boolean a()
  {
    int j = this.b.a();
    int i = 0;
    boolean bool2 = false;
    if (i < j)
    {
      aj localaj = (aj)this.b.c(i);
      if ((localaj.h) && (!localaj.f)) {}
      for (boolean bool1 = true;; bool1 = false)
      {
        bool2 |= bool1;
        i += 1;
        break;
      }
    }
    return bool2;
  }
  
  final void b()
  {
    if (a) {
      Log.v("LoaderManager", "Starting in " + this);
    }
    if (this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
    }
    for (;;)
    {
      return;
      this.e = true;
      int i = this.b.a() - 1;
      while (i >= 0)
      {
        ((aj)this.b.c(i)).a();
        i -= 1;
      }
    }
  }
  
  final void c()
  {
    if (a) {
      Log.v("LoaderManager", "Stopping in " + this);
    }
    if (!this.e)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = this.b.a() - 1;
    while (i >= 0)
    {
      ((aj)this.b.c(i)).b();
      i -= 1;
    }
    this.e = false;
  }
  
  final void d()
  {
    if (a) {
      Log.v("LoaderManager", "Retaining in " + this);
    }
    Object localObject;
    if (!this.e)
    {
      localObject = new RuntimeException("here");
      ((RuntimeException)localObject).fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, (Throwable)localObject);
    }
    for (;;)
    {
      return;
      this.f = true;
      this.e = false;
      int i = this.b.a() - 1;
      while (i >= 0)
      {
        localObject = (aj)this.b.c(i);
        if (a) {
          Log.v("LoaderManager", "  Retaining: " + localObject);
        }
        ((aj)localObject).i = true;
        ((aj)localObject).j = ((aj)localObject).h;
        ((aj)localObject).h = false;
        ((aj)localObject).c = null;
        i -= 1;
      }
    }
  }
  
  final void e()
  {
    int i = this.b.a() - 1;
    while (i >= 0)
    {
      ((aj)this.b.c(i)).k = true;
      i -= 1;
    }
  }
  
  final void f()
  {
    int i = this.b.a() - 1;
    while (i >= 0)
    {
      aj localaj = (aj)this.b.c(i);
      if ((localaj.h) && (localaj.k))
      {
        localaj.k = false;
        if (localaj.e) {
          localaj.b(localaj.d, localaj.g);
        }
      }
      i -= 1;
    }
  }
  
  final void g()
  {
    if (!this.f)
    {
      if (a) {
        Log.v("LoaderManager", "Destroying Active in " + this);
      }
      i = this.b.a() - 1;
      while (i >= 0)
      {
        ((aj)this.b.c(i)).c();
        i -= 1;
      }
      this.b.b();
    }
    if (a) {
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    }
    int i = this.c.a() - 1;
    while (i >= 0)
    {
      ((aj)this.c.c(i)).c();
      i -= 1;
    }
    this.c.b();
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    c.a(this.h, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */