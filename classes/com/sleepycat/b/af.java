package com.sleepycat.b;

import com.sleepycat.b.p.w;

public final class af
{
  private Exception a;
  private String b;
  
  public af(Exception paramException, String paramString)
  {
    this.a = paramException;
    this.b = paramString;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<ExceptionEvent exception=\"");
    localStringBuilder.append(this.a);
    localStringBuilder.append("\" threadName=\"");
    localStringBuilder.append(this.b);
    localStringBuilder.append("\">");
    localStringBuilder.append(w.a(this.a));
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */