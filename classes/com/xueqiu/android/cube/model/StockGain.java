package com.xueqiu.android.cube.model;

import com.google.gson.annotations.Expose;

public class StockGain
{
  @Expose
  private double avgPosition;
  @Expose
  private int holdingDuration;
  @Expose
  private boolean isHolding;
  @Expose
  private double stockBenefit;
  @Expose
  private String stockName;
  @Expose
  private String stockSymbol;
  @Expose
  private int transactionTimes;
  
  public double getAvgPosition()
  {
    return this.avgPosition;
  }
  
  public int getHoldingDuration()
  {
    return this.holdingDuration;
  }
  
  public double getStockBenefit()
  {
    return this.stockBenefit;
  }
  
  public String getStockName()
  {
    return this.stockName;
  }
  
  public String getStockSymbol()
  {
    return this.stockSymbol;
  }
  
  public int getTransactionTimes()
  {
    return this.transactionTimes;
  }
  
  public boolean isHolding()
  {
    return this.isHolding;
  }
  
  public void setAvgPosition(double paramDouble)
  {
    this.avgPosition = paramDouble;
  }
  
  public void setHoldingDuration(int paramInt)
  {
    this.holdingDuration = paramInt;
  }
  
  public void setIsHolding(boolean paramBoolean)
  {
    this.isHolding = paramBoolean;
  }
  
  public void setStockBenefit(double paramDouble)
  {
    this.stockBenefit = paramDouble;
  }
  
  public void setStockName(String paramString)
  {
    this.stockName = paramString;
  }
  
  public void setStockSymbol(String paramString)
  {
    this.stockSymbol = paramString;
  }
  
  public void setTransactionTimes(int paramInt)
  {
    this.transactionTimes = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\StockGain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */