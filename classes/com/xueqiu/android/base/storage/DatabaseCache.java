package com.xueqiu.android.base.storage;

import com.xueqiu.android.base.util.t;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class DatabaseCache
{
  private static final int DEFAULT_CACHE_SIZE = 50;
  public static final String TAG = "DatabaseCache";
  private static DatabaseCache instance = null;
  private t<Long, IMGroup> groupLRUCache = new t();
  private t<Long, User> userLRUCache = new t();
  
  public static DatabaseCache getInstance()
  {
    if (instance == null) {
      instance = new DatabaseCache();
    }
    return instance;
  }
  
  public IMGroup cacheIMGroup(IMGroup paramIMGroup)
  {
    if (paramIMGroup == null) {
      return null;
    }
    this.groupLRUCache.a(Long.valueOf(paramIMGroup.getId()), paramIMGroup);
    return paramIMGroup;
  }
  
  public Set<IMGroup> cacheIMGroups(Set<IMGroup> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      IMGroup localIMGroup = (IMGroup)localIterator.next();
      this.groupLRUCache.a(Long.valueOf(localIMGroup.getId()), localIMGroup);
    }
    return paramSet;
  }
  
  public User cacheUser(User paramUser)
  {
    if (paramUser == null) {
      return null;
    }
    this.userLRUCache.a(Long.valueOf(paramUser.getUserId()), paramUser);
    return paramUser;
  }
  
  public Set<User> cacheUsers(Set<User> paramSet)
  {
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      User localUser = (User)localIterator.next();
      this.userLRUCache.a(Long.valueOf(localUser.getUserId()), localUser);
    }
    return paramSet;
  }
  
  public void clear()
  {
    this.userLRUCache.a();
    this.groupLRUCache.a();
  }
  
  public IMGroup getIMGroup(Long paramLong)
  {
    return (IMGroup)this.groupLRUCache.a(paramLong);
  }
  
  public ResultSet<IMGroup, Long> getIMGroups(Set<Long> paramSet)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Long localLong = (Long)paramSet.next();
      if (this.groupLRUCache.c(localLong)) {
        localHashSet2.add(this.groupLRUCache.b(localLong, this.groupLRUCache.a(localLong)));
      } else {
        localHashSet1.add(localLong);
      }
    }
    return new ResultSet(localHashSet2, localHashSet1);
  }
  
  public User getUser(Long paramLong)
  {
    return (User)this.userLRUCache.a(paramLong);
  }
  
  public ResultSet<User, Long> getUsers(Set<Long> paramSet)
  {
    HashSet localHashSet = new HashSet();
    paramSet = new HashSet(paramSet);
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      if (this.userLRUCache.a(localLong) != null)
      {
        localHashSet.add(this.userLRUCache.b(localLong, this.userLRUCache.a(localLong)));
        localIterator.remove();
      }
    }
    return new ResultSet(localHashSet, paramSet);
  }
  
  public IMGroup invalidIMGroup(Long paramLong)
  {
    return (IMGroup)this.groupLRUCache.b(paramLong);
  }
  
  public void invalidIMGroups(Set<Long> paramSet)
  {
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Long localLong = (Long)paramSet.next();
      this.groupLRUCache.b(localLong);
    }
  }
  
  public User invalidUser(Long paramLong)
  {
    return (User)this.userLRUCache.b(paramLong);
  }
  
  public void invalidUsers(Set<Long> paramSet)
  {
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Long localLong = (Long)paramSet.next();
      this.userLRUCache.b(localLong);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\DatabaseCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */