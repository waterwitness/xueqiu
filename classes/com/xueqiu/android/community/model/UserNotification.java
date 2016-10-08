package com.xueqiu.android.community.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.Date;

public class UserNotification
{
  @Expose
  private String desc;
  @Expose
  private long id;
  @Expose
  @SerializedName("screenName")
  private String screenName;
  @Expose
  private Date timestamp;
  @Expose
  private int unreadCount;
  
  public String getDesc()
  {
    return this.desc;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public String getScreenName()
  {
    return this.screenName;
  }
  
  public Date getTimestamp()
  {
    return this.timestamp;
  }
  
  public int getUnreadCount()
  {
    return this.unreadCount;
  }
  
  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setScreenName(String paramString)
  {
    this.screenName = paramString;
  }
  
  public void setTimestamp(Date paramDate)
  {
    this.timestamp = paramDate;
  }
  
  public void setUnreadCount(int paramInt)
  {
    this.unreadCount = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\UserNotification.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */