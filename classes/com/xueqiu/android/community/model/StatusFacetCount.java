package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;

public class StatusFacetCount
{
  @Expose
  private String source;
  @Expose
  private Integer statusCount;
  
  public String getSource()
  {
    return this.source;
  }
  
  public Integer getStatusCount()
  {
    return this.statusCount;
  }
  
  public void setSource(String paramString)
  {
    this.source = paramString;
  }
  
  public void setStatusCount(Integer paramInteger)
  {
    this.statusCount = paramInteger;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\StatusFacetCount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */