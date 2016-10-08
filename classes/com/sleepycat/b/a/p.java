package com.sleepycat.b.a;

import com.sleepycat.b.b.b;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ad;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.SortedMap;
import java.util.StringTokenizer;

class p
{
  boolean a;
  long b;
  private final ad d;
  private long[] e;
  private int f;
  private boolean g;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  p(ad paramad)
  {
    this.d = paramad;
    a(paramad.u.a(d.aY));
    this.f = paramad.u.a(d.aZ);
    if (this.f == -1) {
      this.f = 8;
    }
    if (this.f != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.g = bool;
      this.a = false;
      this.b = -1L;
      return;
    }
  }
  
  private void a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      this.e = null;
    }
    for (;;)
    {
      return;
      String str1 = "Error in " + d.aY.a + "=" + paramString + ": ";
      paramString = new StringTokenizer(paramString, ",-", true);
      ArrayList localArrayList = new ArrayList();
      while (paramString.hasMoreTokens())
      {
        String str2 = paramString.nextToken();
        long l2;
        long l1;
        for (;;)
        {
          try
          {
            l2 = Long.parseLong(str2, 16);
            if (!paramString.hasMoreTokens()) {
              break label310;
            }
            str2 = paramString.nextToken();
            if (",".equals(str2))
            {
              l1 = l2;
              if ((c) || (l1 != -1L)) {
                break;
              }
              throw new AssertionError();
            }
          }
          catch (NumberFormatException paramString)
          {
            throw new IllegalArgumentException(str1 + "Invalid hex file number: " + str2);
          }
          if ("-".equals(str2))
          {
            if (paramString.hasMoreTokens())
            {
              str2 = paramString.nextToken();
              try
              {
                l1 = Long.parseLong(str2, 16);
              }
              catch (NumberFormatException paramString)
              {
                throw new IllegalArgumentException(str1 + "Invalid hex file number: " + str2);
              }
            }
            else
            {
              throw new IllegalArgumentException(str1 + "Expected file number: " + str2);
            }
          }
          else
          {
            throw new IllegalArgumentException(str1 + "Expected '-' or ',': " + str2);
            label310:
            l1 = l2;
          }
        }
        localArrayList.add(Long.valueOf(l2));
        localArrayList.add(Long.valueOf(l1));
      }
      this.e = new long[localArrayList.size()];
      int i = 0;
      while (i < this.e.length)
      {
        this.e[i] = ((Long)localArrayList.get(i)).longValue();
        i += 1;
      }
    }
  }
  
  final boolean a(SortedMap<Long, o> paramSortedMap)
  {
    boolean bool = false;
    if (this.a) {
      bool = true;
    }
    label74:
    label117:
    label124:
    label156:
    label207:
    for (;;)
    {
      return bool;
      paramSortedMap = paramSortedMap.tailMap(Long.valueOf(this.b + 1L)).keySet().iterator();
      long l2;
      int i;
      if (paramSortedMap.hasNext())
      {
        l2 = ((Long)paramSortedMap.next()).longValue();
        if (this.e != null)
        {
          i = 0;
          if (i < this.e.length)
          {
            l1 = this.e[i];
            long l3 = this.e[(i + 1)];
            if ((l2 >= l1) && (l2 <= l3))
            {
              i = 1;
              if (i == 0) {
                break label156;
              }
            }
          }
        }
      }
      for (long l1 = l2;; l1 = -1L)
      {
        if (l1 == -1L) {
          break label207;
        }
        this.b = l1;
        this.a = true;
        return true;
        i += 2;
        break label74;
        i = 0;
        break label117;
        if (!this.g) {
          break;
        }
        l1 = l2;
        try
        {
          if (this.d.x.e(l2) < this.f) {
            break label124;
          }
          this.g = false;
        }
        catch (RuntimeException paramSortedMap)
        {
          this.b = l2;
          throw paramSortedMap;
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */