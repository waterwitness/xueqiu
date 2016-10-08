package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;

public class IndustryOfUser
{
  @Expose
  private int id;
  @Expose
  private String name = null;
  @Expose
  private int orderId;
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int getOrderId()
  {
    return this.orderId;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setOrderId(int paramInt)
  {
    this.orderId = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\IndustryOfUser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */