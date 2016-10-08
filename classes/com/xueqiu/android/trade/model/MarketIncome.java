package com.xueqiu.android.trade.model;

import com.google.gson.annotations.Expose;

public class MarketIncome
{
  @Expose
  private float dayFloatAmount;
  @Expose
  private float floatAmount;
  @Expose
  private float floatRate;
  @Expose
  private float marketValue;
  @Expose
  private String name;
  @Expose
  private String sign;
  @Expose
  private float totalAmount;
  @Expose
  private float totalRate;
  
  public float getDayFloatAmount()
  {
    return this.dayFloatAmount;
  }
  
  public float getFloatAmount()
  {
    return this.floatAmount;
  }
  
  public float getFloatRate()
  {
    return this.floatRate;
  }
  
  public float getMarketValue()
  {
    return this.marketValue;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getSign()
  {
    if (this.sign == null) {
      return "";
    }
    return this.sign;
  }
  
  public float getTotalAmount()
  {
    return this.totalAmount;
  }
  
  public float getTotalRate()
  {
    return this.totalRate;
  }
  
  public void setDayFloatAmount(float paramFloat)
  {
    this.dayFloatAmount = paramFloat;
  }
  
  public void setFloatAmount(float paramFloat)
  {
    this.floatAmount = paramFloat;
  }
  
  public void setFloatRate(float paramFloat)
  {
    this.floatRate = paramFloat;
  }
  
  public void setMarketValue(float paramFloat)
  {
    this.marketValue = paramFloat;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setSign(String paramString)
  {
    this.sign = paramString;
  }
  
  public void setTotalAmount(float paramFloat)
  {
    this.totalAmount = paramFloat;
  }
  
  public void setTotalRate(float paramFloat)
  {
    this.totalRate = paramFloat;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\MarketIncome.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */