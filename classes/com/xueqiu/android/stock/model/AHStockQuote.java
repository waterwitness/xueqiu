package com.xueqiu.android.stock.model;

import com.google.gson.annotations.Expose;

public class AHStockQuote
{
  @Expose
  private Double currentCn;
  @Expose
  private Double currentHkCny;
  @Expose
  private Double currentHkHkd;
  @Expose
  private String nameCn;
  @Expose
  private String nameHk;
  @Expose
  private Double peTtmCn;
  @Expose
  private Double percentCn;
  @Expose
  private Double percentHk;
  @Expose
  private Double priceRatio;
  @Expose
  private String symbolCn;
  @Expose
  private String symbolHk;
  @Expose
  private long timeCn;
  
  public Double getCurrentCn()
  {
    return this.currentCn;
  }
  
  public Double getCurrentHkCny()
  {
    return this.currentHkCny;
  }
  
  public Double getCurrentHkHkd()
  {
    return this.currentHkHkd;
  }
  
  public String getNameCn()
  {
    return this.nameCn;
  }
  
  public String getNameHk()
  {
    return this.nameHk;
  }
  
  public Double getPeTtmCn()
  {
    return this.peTtmCn;
  }
  
  public Double getPercentCn()
  {
    return this.percentCn;
  }
  
  public Double getPercentHk()
  {
    return this.percentHk;
  }
  
  public Double getPriceRatio()
  {
    return this.priceRatio;
  }
  
  public String getSymbolCn()
  {
    return this.symbolCn;
  }
  
  public String getSymbolHk()
  {
    return this.symbolHk;
  }
  
  public long getTimeCn()
  {
    return this.timeCn;
  }
  
  public void setCurrentCn(Double paramDouble)
  {
    this.currentCn = paramDouble;
  }
  
  public void setCurrentHkCny(Double paramDouble)
  {
    this.currentHkCny = paramDouble;
  }
  
  public void setCurrentHkHkd(Double paramDouble)
  {
    this.currentHkHkd = paramDouble;
  }
  
  public void setNameCn(String paramString)
  {
    this.nameCn = paramString;
  }
  
  public void setNameHk(String paramString)
  {
    this.nameHk = paramString;
  }
  
  public void setPeTtmCn(Double paramDouble)
  {
    this.peTtmCn = paramDouble;
  }
  
  public void setPercentCn(Double paramDouble)
  {
    this.percentCn = paramDouble;
  }
  
  public void setPercentHk(Double paramDouble)
  {
    this.percentHk = paramDouble;
  }
  
  public void setPriceRatio(Double paramDouble)
  {
    this.priceRatio = paramDouble;
  }
  
  public void setSymbolCn(String paramString)
  {
    this.symbolCn = paramString;
  }
  
  public void setSymbolHk(String paramString)
  {
    this.symbolHk = paramString;
  }
  
  public void setTimeCn(long paramLong)
  {
    this.timeCn = paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\AHStockQuote.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */