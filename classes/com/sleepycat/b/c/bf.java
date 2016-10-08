package com.sleepycat.b.c;

import java.util.Formatter;

final class bf
{
  static String a = " Elapsed(ms)";
  long b;
  long c;
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Formatter localFormatter = new Formatter(localStringBuilder);
    if (this.c != 0L) {
      localFormatter.format("%,13d", new Object[] { Long.valueOf(this.c - this.b) });
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (this.b != 0L) {
        localFormatter.format("%13s  %tD,%tH:%tM:%tS:%tL", new Object[] { "started at", Long.valueOf(this.b), Long.valueOf(this.b), Long.valueOf(this.b), Long.valueOf(this.b), Long.valueOf(this.b) });
      } else {
        localFormatter.format("%13s", new Object[] { "none" });
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\bf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */