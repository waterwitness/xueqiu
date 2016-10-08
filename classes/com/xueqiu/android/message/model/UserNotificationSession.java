package com.xueqiu.android.message.model;

import com.google.gson.annotations.Expose;
import com.xueqiu.android.community.model.UserNotification;

public class UserNotificationSession
{
  @Expose
  private UserNotification notification;
  @Expose
  private int type;
  @Expose
  private int unreadCount;
  
  public UserNotification getNotification()
  {
    return this.notification;
  }
  
  public int getType()
  {
    return this.type;
  }
  
  public int getUnreadCount()
  {
    return this.unreadCount;
  }
  
  public void setNotification(UserNotification paramUserNotification)
  {
    this.notification = paramUserNotification;
  }
  
  public void setType(int paramInt)
  {
    this.type = paramInt;
  }
  
  public void setUnreadCount(int paramInt)
  {
    this.unreadCount = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\UserNotificationSession.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */