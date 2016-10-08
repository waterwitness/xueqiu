package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;

public class SimpleFund
{
  private String manager;
  @Expose
  private String name;
  @Expose
  private double rate;
  @Expose
  private String strategy;
  @Expose
  private String strutType;
  @Expose
  private String symbol;
  @Expose
  private String typical;
  
  public String getManager()
  {
    return this.manager;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public double getRate()
  {
    return this.rate;
  }
  
  public String getStrategy()
  {
    return this.strategy;
  }
  
  public String getStrutType()
  {
    return this.strutType;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public String getTypical()
  {
    return this.typical;
  }
  
  public void setManager(String paramString)
  {
    this.manager = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setRate(double paramDouble)
  {
    this.rate = paramDouble;
  }
  
  public void setStrategy(String paramString)
  {
    this.strategy = paramString;
  }
  
  public void setStrutType(String paramString)
  {
    this.strutType = paramString;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void setTypical(String paramString)
  {
    this.typical = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\SimpleFund.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */