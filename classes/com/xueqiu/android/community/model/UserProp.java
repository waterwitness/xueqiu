package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class UserProp
{
  @Expose
  private String type;
  @Expose
  @SerializedName("uid")
  private long userId;
  @Expose
  private String value;
  
  public String getType()
  {
    return this.type;
  }
  
  public long getUserId()
  {
    return this.userId;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public void setUserId(long paramLong)
  {
    this.userId = paramLong;
  }
  
  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\UserProp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */