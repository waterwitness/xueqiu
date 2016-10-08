package com.xiaomi.e;

import com.xiaomi.e.c.j;
import com.xiaomi.e.c.k;
import java.io.PrintStream;
import java.io.PrintWriter;

public final class t
  extends Exception
{
  public Throwable a = null;
  private j b = null;
  private k c = null;
  
  public t() {}
  
  public t(j paramj)
  {
    this.b = paramj;
  }
  
  public t(String paramString)
  {
    super(paramString);
  }
  
  public t(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.a = paramThrowable;
  }
  
  public t(Throwable paramThrowable)
  {
    this.a = paramThrowable;
  }
  
  public final String getMessage()
  {
    String str2 = super.getMessage();
    String str1;
    if ((str2 == null) && (this.c != null)) {
      str1 = this.c.toString();
    }
    do
    {
      do
      {
        return str1;
        str1 = str2;
      } while (str2 != null);
      str1 = str2;
    } while (this.b == null);
    return this.b.toString();
  }
  
  public final void printStackTrace()
  {
    printStackTrace(System.err);
  }
  
  public final void printStackTrace(PrintStream paramPrintStream)
  {
    super.printStackTrace(paramPrintStream);
    if (this.a != null)
    {
      paramPrintStream.println("Nested Exception: ");
      this.a.printStackTrace(paramPrintStream);
    }
  }
  
  public final void printStackTrace(PrintWriter paramPrintWriter)
  {
    super.printStackTrace(paramPrintWriter);
    if (this.a != null)
    {
      paramPrintWriter.println("Nested Exception: ");
      this.a.printStackTrace(paramPrintWriter);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = super.getMessage();
    if (str != null) {
      localStringBuilder.append(str).append(": ");
    }
    if (this.c != null) {
      localStringBuilder.append(this.c);
    }
    if (this.b != null) {
      localStringBuilder.append(this.b);
    }
    if (this.a != null) {
      localStringBuilder.append("\n  -- caused by: ").append(this.a);
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */