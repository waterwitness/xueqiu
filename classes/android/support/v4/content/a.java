package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;

public abstract class a<D>
  extends n<D>
{
  volatile a<D>.b a;
  volatile a<D>.b b;
  long c;
  long d = -10000L;
  Handler e;
  private final Executor f;
  
  public a(Context paramContext)
  {
    this(paramContext, u.c);
  }
  
  private a(Context paramContext, Executor paramExecutor)
  {
    super(paramContext);
    this.f = paramExecutor;
  }
  
  protected final void a()
  {
    super.a();
    j();
    this.a = new b(this);
    c();
  }
  
  final void a(a<D>.b parama, D paramD)
  {
    a(paramD);
    if (this.b == parama)
    {
      if (this.v) {
        this.u = true;
      }
      this.d = SystemClock.uptimeMillis();
      this.b = null;
      if (this.p != null) {
        this.p.d();
      }
      c();
    }
  }
  
  public void a(D paramD) {}
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    if (this.a != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTask=");
      paramPrintWriter.print(this.a);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.a.a);
    }
    if (this.b != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mCancellingTask=");
      paramPrintWriter.print(this.b);
      paramPrintWriter.print(" waiting=");
      paramPrintWriter.println(this.b.a);
    }
    if (this.c != 0L)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mUpdateThrottle=");
      android.support.v4.e.p.a(this.c, paramPrintWriter);
      paramPrintWriter.print(" mLastLoadCompleteTime=");
      android.support.v4.e.p.a(this.d, SystemClock.uptimeMillis(), paramPrintWriter);
      paramPrintWriter.println();
    }
  }
  
  protected final boolean b()
  {
    if (this.a != null)
    {
      if (this.b != null)
      {
        if (this.a.a)
        {
          this.a.a = false;
          this.e.removeCallbacks(this.a);
        }
        this.a = null;
      }
    }
    else {
      return false;
    }
    if (this.a.a)
    {
      this.a.a = false;
      this.e.removeCallbacks(this.a);
      this.a = null;
      return false;
    }
    boolean bool = this.a.e.cancel(false);
    if (bool)
    {
      this.b = this.a;
      e();
    }
    this.a = null;
    return bool;
  }
  
  final void c()
  {
    if ((this.b == null) && (this.a != null))
    {
      if (this.a.a)
      {
        this.a.a = false;
        this.e.removeCallbacks(this.a);
      }
      if ((this.c > 0L) && (SystemClock.uptimeMillis() < this.d + this.c))
      {
        this.a.a = true;
        this.e.postAtTime(this.a, this.d + this.c);
      }
    }
    else
    {
      return;
    }
    b localb = this.a;
    Executor localExecutor = this.f;
    if (localb.f != x.a) {}
    switch (u.4.a[(localb.f - 1)])
    {
    default: 
      localb.f = x.b;
      localb.d.b = null;
      localExecutor.execute(localb.e);
      return;
    case 1: 
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }
  
  public abstract D d();
  
  public void e() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */