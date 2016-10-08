package com.xiaomi.e.e;

import android.text.TextUtils;
import com.xiaomi.a.a.f.a;
import java.util.Random;

public final class g
{
  private static final char[] a = "&quot;".toCharArray();
  private static final char[] b = "&apos;".toCharArray();
  private static final char[] c = "&amp;".toCharArray();
  private static final char[] d = "&lt;".toCharArray();
  private static final char[] e = "&gt;".toCharArray();
  private static Random f = new Random();
  private static char[] g = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  
  public static String a()
  {
    char[] arrayOfChar = new char[5];
    int i = 0;
    while (i < 5)
    {
      arrayOfChar[i] = g[f.nextInt(71)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static String a(String paramString)
  {
    int k = 0;
    if (paramString == null) {
      paramString = null;
    }
    char[] arrayOfChar;
    StringBuilder localStringBuilder;
    int j;
    label114:
    do
    {
      return paramString;
      arrayOfChar = paramString.toCharArray();
      int m = arrayOfChar.length;
      localStringBuilder = new StringBuilder((int)(m * 1.3D));
      j = 0;
      if (j < m)
      {
        int n = arrayOfChar[j];
        int i = k;
        if (n <= 62)
        {
          if (n != 60) {
            break label114;
          }
          if (j > k) {
            localStringBuilder.append(arrayOfChar, k, j - k);
          }
          i = j + 1;
          localStringBuilder.append(d);
        }
        for (;;)
        {
          j += 1;
          k = i;
          break;
          if (n == 62)
          {
            if (j > k) {
              localStringBuilder.append(arrayOfChar, k, j - k);
            }
            i = j + 1;
            localStringBuilder.append(e);
          }
          else if (n == 38)
          {
            if (j > k) {
              localStringBuilder.append(arrayOfChar, k, j - k);
            }
            if ((m > j + 5) && (arrayOfChar[(j + 1)] == '#') && (Character.isDigit(arrayOfChar[(j + 2)])) && (Character.isDigit(arrayOfChar[(j + 3)])) && (Character.isDigit(arrayOfChar[(j + 4)])))
            {
              i = k;
              if (arrayOfChar[(j + 5)] == ';') {}
            }
            else
            {
              i = j + 1;
              localStringBuilder.append(c);
            }
          }
          else if (n == 34)
          {
            if (j > k) {
              localStringBuilder.append(arrayOfChar, k, j - k);
            }
            i = j + 1;
            localStringBuilder.append(a);
          }
          else
          {
            i = k;
            if (n == 39)
            {
              if (j > k) {
                localStringBuilder.append(arrayOfChar, k, j - k);
              }
              i = j + 1;
              localStringBuilder.append(b);
            }
          }
        }
      }
    } while (k == 0);
    if (j > k) {
      localStringBuilder.append(arrayOfChar, k, j - k);
    }
    return localStringBuilder.toString();
  }
  
  private static String a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {
      localObject = null;
    }
    int i;
    do
    {
      return (String)localObject;
      i = paramString1.indexOf(paramString2, 0);
      localObject = paramString1;
    } while (i < 0);
    Object localObject = paramString1.toCharArray();
    paramString3 = paramString3.toCharArray();
    int k = paramString2.length();
    StringBuilder localStringBuilder = new StringBuilder(localObject.length);
    localStringBuilder.append((char[])localObject, 0, i).append(paramString3);
    i += k;
    for (int j = i;; j = i)
    {
      j = paramString1.indexOf(paramString2, j);
      if (j <= 0) {
        break;
      }
      localStringBuilder.append((char[])localObject, i, j - i).append(paramString3);
      i = j + k;
    }
    localStringBuilder.append((char[])localObject, i, localObject.length - i);
    return localStringBuilder.toString();
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    return String.valueOf(a.a(paramArrayOfByte));
  }
  
  public static final String b(String paramString)
  {
    return a(a(a(a(a(paramString, "&lt;", "<"), "&gt;", ">"), "&quot;", "\""), "&apos;", "'"), "&amp;", "&");
  }
  
  public static String c(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramString;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    int j = 0;
    if (j < paramString.length())
    {
      int i = paramString.charAt(j);
      if (((i >= 32) && (i <= 55295)) || ((i >= 57344) && (i <= 65533)) || ((i >= 65536) && (i <= 1114111)) || (i == 9) || (i == 10) || (i == 13)) {}
      for (int k = 1;; k = 0)
      {
        if (k != 0) {
          localStringBuilder.append(i);
        }
        j += 1;
        break;
      }
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\e\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */