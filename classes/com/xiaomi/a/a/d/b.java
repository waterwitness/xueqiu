package com.xiaomi.a.a.d;

import java.util.HashMap;
import java.util.Map;

public final class b
{
  public int a;
  public Map<String, String> b = new HashMap();
  public String c;
  
  public final String toString()
  {
    return String.format("resCode = %1$d, headers = %2$s, response = %3$s", new Object[] { Integer.valueOf(this.a), this.b.toString(), this.c });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */