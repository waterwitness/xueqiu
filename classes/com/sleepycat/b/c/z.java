package com.sleepycat.b.c;

import java.util.Comparator;

public final class z
  implements Comparator<byte[]>
{
  private final Comparator<byte[]> a;
  
  public z(Comparator<byte[]> paramComparator)
  {
    this.a = paramComparator;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */