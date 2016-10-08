package com.sleepycat.b;

import java.io.Serializable;

public final class ay
  implements Serializable
{
  public int a = 0;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  public int e = 0;
  public int f = 0;
  public int g = 0;
  public az h = az.a;
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("status=").append(this.h).append('\n');
    localStringBuilder.append("nINsLoaded=").append(this.a).append('\n');
    localStringBuilder.append("nBINsLoaded=").append(this.b).append('\n');
    localStringBuilder.append("nLNsLoaded=").append(this.c).append('\n');
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */