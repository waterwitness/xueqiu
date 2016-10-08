package com.sleepycat.b.c;

import java.util.Comparator;

public final class aa
  implements Comparator<byte[]>
{
  private final Comparator<byte[]> a;
  private final Comparator<byte[]> b;
  
  public aa(Comparator<byte[]> paramComparator1, Comparator<byte[]> paramComparator2)
  {
    this.a = paramComparator1;
    this.b = paramComparator2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */