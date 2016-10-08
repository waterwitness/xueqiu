package com.xueqiu.android.community.model;

import java.util.Comparator;
import java.util.Date;

public class Comment$SortCommentOrderByTime
  implements Comparator<Comment>
{
  private boolean mIsreverse = false;
  
  public Comment$SortCommentOrderByTime(boolean paramBoolean)
  {
    this.mIsreverse = paramBoolean;
  }
  
  public int compare(Comment paramComment1, Comment paramComment2)
  {
    if (this.mIsreverse) {
      return paramComment2.getCreatedAt().compareTo(paramComment1.getCreatedAt());
    }
    return paramComment1.getCreatedAt().compareTo(paramComment2.getCreatedAt());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Comment$SortCommentOrderByTime.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */