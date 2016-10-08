package com.sleepycat.b.a;

public final class q
{
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  public int f;
  public int g;
  public int h;
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<INSummary totalINCount=\"");
    localStringBuilder.append(this.a);
    localStringBuilder.append("\" totalINSize=\"");
    localStringBuilder.append(this.b);
    localStringBuilder.append("\" totalBINDeltaCount=\"");
    localStringBuilder.append(this.c);
    localStringBuilder.append("\" totalBINDeltaSize=\"");
    localStringBuilder.append(this.d);
    localStringBuilder.append("\" obsoleteINCount=\"");
    localStringBuilder.append(this.e);
    localStringBuilder.append("\" obsoleteINSize=\"");
    localStringBuilder.append(this.f);
    localStringBuilder.append("\" obsoleteBINDeltaCount=\"");
    localStringBuilder.append(this.g);
    localStringBuilder.append("\" obsoleteBINDeltaSize=\"");
    localStringBuilder.append(this.h);
    localStringBuilder.append("\"/>");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */