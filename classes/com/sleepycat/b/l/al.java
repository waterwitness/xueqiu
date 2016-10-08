package com.sleepycat.b.l;

public final class al
{
  public a a;
  public int b;
  public byte[] c;
  public long d = -1L;
  
  public final void a()
  {
    this.a = null;
    this.b = -1;
    this.c = null;
    this.d = -1L;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("<TreeLocation bin=\"");
    if (this.a == null) {
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append("\" index=\"");
      localStringBuilder.append(this.b);
      localStringBuilder.append("\" lnKey=\"");
      localStringBuilder.append(w.a(this.c, 0));
      localStringBuilder.append("\" childLsn=\"");
      localStringBuilder.append(com.sleepycat.b.p.j.g(this.d));
      localStringBuilder.append("\">");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */