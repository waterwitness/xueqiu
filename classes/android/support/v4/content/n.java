package android.support.v4.content;

import android.content.Context;
import android.support.v4.e.c;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class n<D>
{
  public int n;
  public q<D> o;
  public p<D> p;
  Context q;
  boolean r = false;
  boolean s = false;
  boolean t = true;
  boolean u = false;
  boolean v = false;
  
  public n(Context paramContext)
  {
    this.q = paramContext.getApplicationContext();
  }
  
  protected void a() {}
  
  public final void a(p<D> paramp)
  {
    if (this.p == null) {
      throw new IllegalStateException("No listener register");
    }
    if (this.p != paramp) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    this.p = null;
  }
  
  public final void a(q<D> paramq)
  {
    if (this.o == null) {
      throw new IllegalStateException("No listener register");
    }
    if (this.o != paramq) {
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
    this.o = null;
  }
  
  public void a(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.n);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.o);
    if ((this.r) || (this.u) || (this.v))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(this.r);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(this.u);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(this.v);
    }
    if ((this.s) || (this.t))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(this.s);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(this.t);
    }
  }
  
  public void b(D paramD)
  {
    if (this.o != null) {
      this.o.a(this, paramD);
    }
  }
  
  protected boolean b()
  {
    return false;
  }
  
  protected void f() {}
  
  protected void g() {}
  
  protected void h() {}
  
  public final void i()
  {
    this.r = true;
    this.t = false;
    this.s = false;
    f();
  }
  
  public final boolean j()
  {
    return b();
  }
  
  public final void k()
  {
    a();
  }
  
  public final void l()
  {
    this.r = false;
    g();
  }
  
  public final void m()
  {
    h();
    this.t = true;
    this.r = false;
    this.s = false;
    this.u = false;
    this.v = false;
  }
  
  public final void n()
  {
    if (this.r)
    {
      a();
      return;
    }
    this.u = true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    c.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.n);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */