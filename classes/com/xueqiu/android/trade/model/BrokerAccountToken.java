package com.xueqiu.android.trade.model;

import com.google.gson.annotations.Expose;
import java.util.Date;

public class BrokerAccountToken
{
  @Expose
  private String aid;
  @Expose
  private Date createTime;
  @Expose
  private String tid;
  @Expose
  private String writeToken;
  
  public String getAid()
  {
    return this.aid;
  }
  
  public Date getCreateTime()
  {
    if (this.createTime == null) {
      this.createTime = new Date(0L);
    }
    return this.createTime;
  }
  
  public String getTid()
  {
    return this.tid;
  }
  
  public String getWriteToken()
  {
    return this.writeToken;
  }
  
  public void setAid(String paramString)
  {
    this.aid = paramString;
  }
  
  public void setCreateTime(Date paramDate)
  {
    this.createTime = paramDate;
  }
  
  public void setTid(String paramString)
  {
    this.tid = paramString;
  }
  
  public void setWriteToken(String paramString)
  {
    this.writeToken = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\model\BrokerAccountToken.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */