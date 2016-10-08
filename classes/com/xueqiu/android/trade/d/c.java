package com.xueqiu.android.trade.d;

import com.xueqiu.android.trade.model.TradeAccount;
import java.util.Map;

final class c
{
  private double b;
  private double c;
  private String d;
  private Map<String, String> e;
  private int f;
  
  public c(a parama, double paramDouble1, double paramDouble2)
  {
    this.b = paramDouble1;
    this.c = paramDouble2;
    this.f = 1;
  }
  
  public c(String paramString, Map<String, String> paramMap)
  {
    this.d = paramMap;
    Map localMap;
    this.e = localMap;
    localMap.put("tid", paramString.i.getTid());
    this.f = 2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */