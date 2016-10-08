package com.snowballfinance.messageplatform.a;

import com.snowballfinance.messageplatform.b.d;
import java.util.HashMap;
import java.util.Map;

public final class z
  extends a
{
  public Integer c;
  public String d;
  public Integer e;
  public byte[] f;
  public byte[] g;
  
  public z() {}
  
  private z(y paramy)
  {
    this.c = paramy.c;
    this.d = paramy.d;
  }
  
  public static z a(int paramInt1, int paramInt2, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("error", paramString);
    paramString = new z();
    paramString.a = Integer.valueOf(paramInt1);
    paramString.e = Integer.valueOf(paramInt2);
    paramString.f = com.snowballfinance.messageplatform.b.a.a(d.a(localHashMap));
    return paramString;
  }
  
  public static z a(y paramy, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("error", paramString);
    paramString = new z(paramy);
    paramString.a = paramy.a;
    paramString.e = Integer.valueOf(400);
    paramString.f = com.snowballfinance.messageplatform.b.a.a(d.a(localHashMap));
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\messageplatform\a\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */