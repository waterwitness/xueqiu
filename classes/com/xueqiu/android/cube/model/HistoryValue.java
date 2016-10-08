package com.xueqiu.android.cube.model;

import com.google.gson.annotations.Expose;
import java.util.Date;

public class HistoryValue
{
  @Expose
  private String date;
  @Expose
  private String label;
  @Expose
  private double percent;
  @Expose
  private Date time;
  @Expose
  private double value;
  
  public String getDate()
  {
    return this.date;
  }
  
  public String getLabel()
  {
    return this.label;
  }
  
  public double getPercent()
  {
    return this.percent;
  }
  
  public Date getTime()
  {
    return this.time;
  }
  
  public double getValue()
  {
    return this.value;
  }
  
  public void setDate(String paramString)
  {
    this.date = paramString;
  }
  
  public void setLabel(String paramString)
  {
    this.label = paramString;
  }
  
  public void setPercent(double paramDouble)
  {
    this.percent = paramDouble;
  }
  
  public void setTime(Date paramDate)
  {
    this.time = paramDate;
  }
  
  public void setValue(double paramDouble)
  {
    this.value = paramDouble;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\HistoryValue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */