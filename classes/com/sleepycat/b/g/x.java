package com.sleepycat.b.g;

import java.io.File;
import java.io.FilenameFilter;
import java.util.StringTokenizer;

final class x
  implements FilenameFilter
{
  String[] a;
  long b = 0L;
  long c = -1L;
  
  x(String[] paramArrayOfString)
  {
    this.a = paramArrayOfString;
  }
  
  x(String[] paramArrayOfString, long paramLong1, long paramLong2)
  {
    this.a = paramArrayOfString;
    this.b = paramLong1;
    this.c = paramLong2;
  }
  
  private boolean a(String paramString)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < this.a.length)
      {
        if (paramString.equalsIgnoreCase(this.a[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public final boolean accept(File paramFile, String paramString)
  {
    boolean bool2 = false;
    paramFile = new StringTokenizer(paramString, ".");
    int i = paramFile.countTokens();
    boolean bool1;
    if (i != 2)
    {
      bool1 = bool2;
      if (i != 3) {}
    }
    else
    {
      if (i != 3) {
        break label146;
      }
      i = 1;
      paramString = paramFile.nextToken();
      String str = "." + paramFile.nextToken();
      if (i == 0) {
        break label152;
      }
      paramFile = paramFile.nextToken();
      label80:
      bool1 = bool2;
      if (paramString.length() == 8)
      {
        bool1 = bool2;
        if (!a(str)) {}
      }
    }
    for (;;)
    {
      try
      {
        l1 = Long.parseLong(paramString, 16);
        long l2 = this.b;
        if (l1 >= l2) {
          continue;
        }
        bool1 = false;
      }
      catch (NumberFormatException paramString)
      {
        long l1;
        label146:
        label152:
        bool1 = false;
        continue;
      }
      if (i != 0)
      {
        try
        {
          Integer.parseInt(paramFile);
          bool1 = true;
          return bool1;
        }
        catch (NumberFormatException paramFile)
        {
          return false;
        }
        i = 0;
        break;
        paramFile = null;
        break label80;
        if (l1 > this.c)
        {
          l1 = this.c;
          if (l1 != -1L) {
            break label201;
          }
        }
        bool1 = true;
        continue;
      }
      return bool1;
      label201:
      bool1 = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */