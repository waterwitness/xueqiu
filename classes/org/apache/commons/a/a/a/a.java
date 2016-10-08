package org.apache.commons.a.a.a;

import java.io.File;
import java.util.Locale;
import org.apache.commons.a.a.b.b;

public final class a
  implements org.apache.commons.a.a.a
{
  String a = "";
  int b = 0;
  int c = 0;
  long d = 0L;
  long e;
  byte f;
  String g = "";
  String h;
  String i = "";
  int j = 0;
  int k = 0;
  boolean l;
  private int m;
  private boolean n;
  private String o = "ustar\000";
  private String p = "00";
  private long q;
  private final File r;
  
  private a()
  {
    String str2 = System.getProperty("user.name", "");
    String str1 = str2;
    if (str2.length() > 31) {
      str1 = str2.substring(0, 31);
    }
    this.h = str1;
    this.r = null;
  }
  
  public a(byte[] paramArrayOfByte, b paramb)
  {
    this();
    this.m = ((int)e.b(paramArrayOfByte, 100, 8));
    this.e = e.b(paramArrayOfByte, 136, 12);
    this.n = e.a(paramArrayOfByte);
    this.f = paramArrayOfByte[''];
    this.h = e.a(paramArrayOfByte, 265, 32, paramb);
    if (org.apache.commons.a.c.a.a("ustar ", paramArrayOfByte)) {}
    for (;;)
    {
      switch (i1)
      {
      default: 
        paramArrayOfByte = e.a(paramArrayOfByte, 345, 155, paramb);
        if ((c()) && (!this.a.endsWith("/"))) {
          this.a += "/";
        }
        if (paramArrayOfByte.length() > 0) {
          this.a = (paramArrayOfByte + "/" + this.a);
        }
        return;
        if (org.apache.commons.a.c.a.a("ustar\000", paramArrayOfByte)) {
          i1 = 3;
        } else {
          i1 = 0;
        }
        break;
      }
    }
    this.l = e.a(paramArrayOfByte, 482);
    this.q = e.a(paramArrayOfByte, 483, 12);
  }
  
  public final String a()
  {
    return this.a.toString();
  }
  
  public final void a(String paramString)
  {
    String str2 = System.getProperty("os.name").toLowerCase(Locale.ENGLISH);
    String str1 = paramString;
    int i1;
    if (str2 != null)
    {
      if (!str2.startsWith("windows")) {
        break label122;
      }
      str1 = paramString;
      if (paramString.length() > 2)
      {
        i1 = paramString.charAt(0);
        str1 = paramString;
        if (paramString.charAt(1) == ':') {
          if ((i1 < 97) || (i1 > 122))
          {
            str1 = paramString;
            if (i1 >= 65)
            {
              str1 = paramString;
              if (i1 > 90) {}
            }
          }
          else
          {
            str1 = paramString.substring(2);
          }
        }
      }
    }
    for (;;)
    {
      for (paramString = str1.replace(File.separatorChar, '/'); paramString.startsWith("/"); paramString = paramString.substring(1)) {}
      label122:
      str1 = paramString;
      if (str2.indexOf("netware") >= 0)
      {
        i1 = paramString.indexOf(':');
        str1 = paramString;
        if (i1 != -1) {
          str1 = paramString.substring(i1 + 1);
        }
      }
    }
    this.a = paramString;
  }
  
  public final long b()
  {
    return this.d;
  }
  
  public final boolean c()
  {
    boolean bool2 = true;
    boolean bool1;
    if (this.r != null) {
      bool1 = this.r.isDirectory();
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (this.f == 53);
      bool1 = bool2;
    } while (this.a.toString().endsWith("/"));
    return false;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (a)paramObject;
    return this.a.toString().equals(((a)paramObject).a.toString());
  }
  
  public final int hashCode()
  {
    return this.a.toString().hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */