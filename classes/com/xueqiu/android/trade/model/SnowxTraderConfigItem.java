package com.xueqiu.android.trade.model;

import com.google.gson.annotations.Expose;

public class SnowxTraderConfigItem
{
  @Expose
  private String configMessage;
  @Expose
  private String configValue;
  @Expose
  private String tid;
  
  public String getConfigMessage()
  {
    return this.configMessage;
  }
  
  public String getConfigValue()
  {
    return this.configValue;
  }
  
  public String getTid()
  {
    return this.tid;
  }
  
  public void setConfigMessage(String paramString)
  {
    this.configMessage = paramString;
  }
  
  public void setConfigValue(String paramString)
  {
    this.configValue = paramString;
  }
  
  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\SnowxTraderConfigItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */