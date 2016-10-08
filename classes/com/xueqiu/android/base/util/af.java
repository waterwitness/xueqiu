package com.xueqiu.android.base.util;

import net.a.a.a.b;
import net.a.a.a.d;

public final class af
{
  public static String a(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    b localb = new b();
    localb.b = net.a.a.a.a.a;
    localb.c = net.a.a.a.c.b;
    localb.a = d.b;
    int i1 = arrayOfChar.length;
    int k = 0;
    String str2 = "";
    String[] arrayOfString;
    int m;
    label91:
    String str1;
    if (k < i1) {
      try
      {
        if (!Character.toString(arrayOfChar[k]).matches("[\\u4E00-\\u9FA5]")) {
          break label537;
        }
        arrayOfString = net.a.a.c.a(arrayOfChar[k]);
        if (arrayOfString == null) {
          break label641;
        }
        m = 0;
        if (m >= arrayOfString.length) {
          break label624;
        }
        str1 = arrayOfString[m];
        if ((net.a.a.a.c.c != localb.c) || ((d.b != localb.a) && (d.a != localb.a))) {
          break label155;
        }
        throw new net.a.a.a.a.a("tone marks cannot be added to v or u:");
      }
      catch (net.a.a.a.a.a paramString)
      {
        paramString.printStackTrace();
      }
    }
    return str2;
    label155:
    if (net.a.a.a.c.b == localb.c)
    {
      paramString = str1.replaceAll("[1-5]", "");
      if (d.b != localb.a) {
        break label488;
      }
      str1 = paramString.replaceAll("u:", "v");
    }
    int i;
    int j;
    int n;
    for (;;)
    {
      paramString = str1;
      if (net.a.a.a.a.a != localb.b) {
        break label579;
      }
      paramString = str1.toUpperCase();
      break label579;
      paramString = str1;
      if (net.a.a.a.c.c != localb.c) {
        break;
      }
      str1 = str1.replaceAll("u:", "v").toLowerCase();
      paramString = str1;
      if (!str1.matches("[a-z]*[1-5]?")) {
        break;
      }
      if (str1.matches("[a-z]*[1-5]"))
      {
        int i2 = Character.getNumericValue(str1.charAt(str1.length() - 1));
        i = str1.indexOf('a');
        j = str1.indexOf('e');
        n = str1.indexOf("ou");
        if (-1 == i) {
          break label594;
        }
        j = 97;
        for (;;)
        {
          label310:
          paramString = str1;
          if (36 == j) {
            break;
          }
          paramString = str1;
          if (-1 == i) {
            break;
          }
          char c = "āáăàaēéĕèeīíĭìiōóŏòoūúŭùuǖǘǚǜü".charAt("aeiouv".indexOf(j) * 5 + (i2 - 1));
          paramString = new StringBuffer();
          paramString.append(str1.substring(0, i).replaceAll("v", "ü"));
          paramString.append(c);
          paramString.append(str1.substring(i + 1, str1.length() - 1).replaceAll("v", "ü"));
          paramString = paramString.toString();
          break;
          label414:
          if (-1 != n)
          {
            j = "ou".charAt(0);
            i = n;
          }
          else
          {
            i = str1.length() - 1;
            label443:
            if (i < 0) {
              break label569;
            }
            if (!String.valueOf(str1.charAt(i)).matches("[aeiouv]")) {
              break label615;
            }
            j = str1.charAt(i);
          }
        }
      }
      paramString = str1.replaceAll("v", "ü");
      break;
      label488:
      str1 = paramString;
      if (d.c == localb.a) {
        str1 = paramString.replaceAll("u:", "ü");
      }
    }
    for (;;)
    {
      paramString = str2 + paramString[0];
      break label630;
      label537:
      paramString = str2 + Character.toString(arrayOfChar[k]).toUpperCase();
      break label630;
      label569:
      i = -1;
      j = 36;
      break label310;
      label579:
      arrayOfString[m] = paramString;
      m += 1;
      break label91;
      label594:
      if (-1 == j) {
        break label414;
      }
      n = 101;
      i = j;
      j = n;
      break label310;
      label615:
      i -= 1;
      break label443;
      label624:
      paramString = arrayOfString;
      continue;
      label630:
      k += 1;
      str2 = paramString;
      break;
      label641:
      paramString = null;
    }
  }
  
  public static String b(String paramString)
  {
    String str = "";
    int i = 0;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      String[] arrayOfString = net.a.a.c.a(c);
      if (arrayOfString != null) {}
      for (str = str + arrayOfString[0].charAt(0);; str = str + c)
      {
        i += 1;
        break;
      }
    }
    return str.toUpperCase();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */