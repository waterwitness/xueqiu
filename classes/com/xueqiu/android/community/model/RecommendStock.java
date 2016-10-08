package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class RecommendStock
{
  @Expose
  private double change;
  @Expose
  private String code;
  @Expose
  private double current;
  @Expose
  private String exchange;
  @Expose
  private boolean hasExist;
  @Expose
  private String name;
  @Expose
  private double percentage;
  @Expose
  private String recommendReason;
  @Expose
  @SerializedName("id")
  private String stockId;
  @Expose
  private String symbol;
  @Expose
  private int type;
  
  public double getChange()
  {
    return this.change;
  }
  
  public String getCode()
  {
    return this.code;
  }
  
  public double getCurrent()
  {
    return this.current;
  }
  
  public String getExchange()
  {
    return this.exchange;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public double getPercentage()
  {
    return this.percentage;
  }
  
  public String getRecommendReason()
  {
    return this.recommendReason;
  }
  
  public String getStockId()
  {
    return this.stockId;
  }
  
  public String getSymbol()
  {
    return this.symbol;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public boolean isHasExist()
  {
    return this.hasExist;
  }
  
  public void setChange(double paramDouble)
  {
    this.change = paramDouble;
  }
  
  public void setCode(String paramString)
  {
    this.code = paramString;
  }
  
  public void setCurrent(double paramDouble)
  {
    this.current = paramDouble;
  }
  
  public void setExchange(String paramString)
  {
    this.exchange = paramString;
  }
  
  public void setHasExist(boolean paramBoolean)
  {
    this.hasExist = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPercentage(double paramDouble)
  {
    this.percentage = paramDouble;
  }
  
  public void setRecommendReason(String paramString)
  {
    this.recommendReason = paramString;
  }
  
  public void setStockId(String paramString)
  {
    this.stockId = paramString;
  }
  
  public void setSymbol(String paramString)
  {
    this.symbol = paramString;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\RecommendStock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */