package com.xueqiu.android.community.model;

import com.xueqiu.android.common.model.PagedGroup;

public class FollowerUserGroup
  extends PagedGroup<User>
{
  private int anonymousCount = 0;
  
  public int getAnonymousCount()
  {
    return this.anonymousCount;
  }
  
  public void setAnonymousCount(int paramInt)
  {
    this.anonymousCount = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\FollowerUserGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */