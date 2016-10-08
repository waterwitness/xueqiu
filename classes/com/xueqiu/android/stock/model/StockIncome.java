package com.xueqiu.android.stock.model;

import com.google.gson.annotations.Expose;

public class StockIncome
{
  @Expose
  private float avgPrice;
  @Expose
  private float current;
  @Expose
  private float floatAmount;
  @Expose
  private float floatRate;
  @Expose
  private float marketValue;
  @Expose
  private String name;
  @Expose
  private int shares;
  @Expose
  private String symbol;
  
  public float getAvgPrice()
  {
    return this.avgPrice;
  }
  
  public float getCurrent()
  {
    return this.current;
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
  
  public int getShares()
  {
    return this.shares;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public void setAvgPrice(float paramFloat)
  {
    this.avgPrice = paramFloat;
  }
  
  public void setCurrent(float paramFloat)
  {
    this.current = paramFloat;
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
  
  public void setShares(int paramInt)
  {
    this.shares = paramInt;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\StockIncome.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */