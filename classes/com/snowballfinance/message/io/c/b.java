package com.snowballfinance.message.io.c;

import java.util.Arrays;
import java.util.regex.Pattern;

public final class b
{
  int a;
  String[] b;
  Pattern c;
  
  public b(String[] paramArrayOfString)
  {
    this.b = paramArrayOfString;
    this.a = 0;
    this.c = Pattern.compile("^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$");
  }
  
  public final String toString()
  {
    return String.format("index: %d. ips: %s", new Object[] { Integer.valueOf(this.a), Arrays.toString(this.b) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */