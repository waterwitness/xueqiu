package org.apache.http.client.utils;

import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public class Rfc3492Idn
  implements Idn
{
  private static final String ACE_PREFIX = "xn--";
  private static final int base = 36;
  private static final int damp = 700;
  private static final char delimiter = '-';
  private static final int initial_bias = 72;
  private static final int initial_n = 128;
  private static final int skew = 38;
  private static final int tmax = 26;
  private static final int tmin = 1;
  
  private int adapt(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramInt1 /= 700;
    }
    for (;;)
    {
      paramInt2 = paramInt1 / paramInt2 + paramInt1;
      paramInt1 = 0;
      while (paramInt2 > 455)
      {
        paramInt2 /= 35;
        paramInt1 += 36;
      }
      paramInt1 /= 2;
    }
    return paramInt1 + paramInt2 * 36 / (paramInt2 + 38);
  }
  
  private int digit(char paramChar)
  {
    if ((paramChar >= 'A') && (paramChar <= 'Z')) {
      return paramChar - 'A';
    }
    if ((paramChar >= 'a') && (paramChar <= 'z')) {
      return paramChar - 'a';
    }
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0' + 26;
    }
    throw new IllegalArgumentException("illegal digit: " + paramChar);
  }
  
  protected String decode(String paramString)
  {
    int m = 72;
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    int i = paramString.lastIndexOf('-');
    int j;
    if (i != -1)
    {
      localStringBuilder.append(paramString.subSequence(0, i));
      paramString = paramString.substring(i + 1);
      j = 128;
      i = 0;
    }
    for (;;)
    {
      if (!paramString.isEmpty())
      {
        int n = 36;
        int i1 = 1;
        int k = i;
        String str = paramString;
        int i3 = k;
        paramString = str;
        if (!str.isEmpty())
        {
          char c = str.charAt(0);
          str = str.substring(1);
          int i4 = digit(c);
          int i2 = k + i4 * i1;
          if (n <= m + 1) {
            k = 1;
          }
          for (;;)
          {
            i3 = i2;
            paramString = str;
            if (i4 < k) {
              break label199;
            }
            i1 *= (36 - k);
            n += 36;
            k = i2;
            break;
            if (n >= m + 26) {
              k = 26;
            } else {
              k = n - m;
            }
          }
        }
        label199:
        k = localStringBuilder.length();
        if (i == 0) {}
        for (boolean bool = true;; bool = false)
        {
          m = adapt(i3 - i, k + 1, bool);
          j += i3 / (localStringBuilder.length() + 1);
          i = i3 % (localStringBuilder.length() + 1);
          localStringBuilder.insert(i, (char)j);
          i += 1;
          break;
        }
      }
      return localStringBuilder.toString();
      j = 128;
      i = 0;
    }
  }
  
  public String toUnicode(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ".");
    while (localStringTokenizer.hasMoreTokens())
    {
      String str = localStringTokenizer.nextToken();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append('.');
      }
      paramString = str;
      if (str.startsWith("xn--")) {
        paramString = decode(str.substring(4));
      }
      localStringBuilder.append(paramString);
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\Rfc3492Idn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */