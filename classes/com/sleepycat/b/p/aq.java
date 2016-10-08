package com.sleepycat.b.p;

import java.util.Date;

public final class aq
  extends Date
{
  private int a;
  
  public aq(long paramLong)
  {
    super(paramLong / 1000L * 1000L);
    this.a = ((int)(paramLong % 1000L * 1000000L));
    if (this.a < 0)
    {
      this.a = (1000000000 + this.a);
      super.setTime((paramLong / 1000L - 1L) * 1000L);
    }
  }
  
  public final boolean a(aq paramaq)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (super.equals(paramaq))
    {
      bool1 = bool2;
      if (this.a == paramaq.a) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof aq)) {
      return a((aq)paramObject);
    }
    return false;
  }
  
  public final long getTime()
  {
    return super.getTime() + this.a / 1000000;
  }
  
  public final String toString()
  {
    int i = super.getYear() + 1900;
    int j = super.getMonth() + 1;
    int k = super.getDate();
    int m = super.getHours();
    int n = super.getMinutes();
    int i1 = super.getSeconds();
    String str1;
    String str2;
    label111:
    String str3;
    label136:
    String str4;
    label162:
    String str5;
    label188:
    String str6;
    if (i < 1000)
    {
      str1 = String.valueOf(i);
      str1 = "0000".substring(0, 4 - str1.length()) + str1;
      if (j >= 10) {
        break label358;
      }
      str2 = "0" + j;
      if (k >= 10) {
        break label367;
      }
      str3 = "0" + k;
      if (m >= 10) {
        break label376;
      }
      str4 = "0" + m;
      if (n >= 10) {
        break label386;
      }
      str5 = "0" + n;
      if (i1 >= 10) {
        break label396;
      }
      str6 = "0" + i1;
      label214:
      if (this.a != 0) {
        break label406;
      }
    }
    Object localObject;
    for (String str7 = "0";; str7 = new String((char[])localObject, 0, i + 1))
    {
      localObject = new StringBuffer(str7.length() + 20);
      ((StringBuffer)localObject).append(str1);
      ((StringBuffer)localObject).append("-");
      ((StringBuffer)localObject).append(str2);
      ((StringBuffer)localObject).append("-");
      ((StringBuffer)localObject).append(str3);
      ((StringBuffer)localObject).append(" ");
      ((StringBuffer)localObject).append(str4);
      ((StringBuffer)localObject).append(":");
      ((StringBuffer)localObject).append(str5);
      ((StringBuffer)localObject).append(":");
      ((StringBuffer)localObject).append(str6);
      ((StringBuffer)localObject).append(".");
      ((StringBuffer)localObject).append(str7);
      return ((StringBuffer)localObject).toString();
      str1 = String.valueOf(i);
      break;
      label358:
      str2 = Integer.toString(j);
      break label111;
      label367:
      str3 = Integer.toString(k);
      break label136;
      label376:
      str4 = Integer.toString(m);
      break label162;
      label386:
      str5 = Integer.toString(n);
      break label188;
      label396:
      str6 = Integer.toString(i1);
      break label214;
      label406:
      str7 = Integer.toString(this.a);
      str7 = "000000000".substring(0, 9 - str7.length()) + str7;
      localObject = new char[str7.length()];
      str7.getChars(0, str7.length(), (char[])localObject, 0);
      i = 8;
      while (localObject[i] == '0') {
        i -= 1;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */