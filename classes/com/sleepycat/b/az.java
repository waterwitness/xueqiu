package com.sleepycat.b;

import java.io.Serializable;

public final class az
  implements Serializable
{
  public static final az a = new az("SUCCESS");
  public static final az b = new az("FILLED_CACHE");
  public static final az c = new az("EXCEEDED_TIME");
  public static final az d = new az("USER_HALT_REQUEST");
  private String e;
  
  private az(String paramString)
  {
    this.e = paramString;
  }
  
  public final String toString()
  {
    return "PreloadStatus." + this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */