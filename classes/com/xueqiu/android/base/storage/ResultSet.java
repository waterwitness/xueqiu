package com.xueqiu.android.base.storage;

import java.util.Set;

public class ResultSet<T, M>
{
  private Set<T> founded;
  private Set<M> missed;
  
  public ResultSet(Set<T> paramSet, Set<M> paramSet1)
  {
    this.founded = paramSet;
    this.missed = paramSet1;
  }
  
  public Set<T> founded()
  {
    return this.founded;
  }
  
  public Set<M> missed()
  {
    return this.missed;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\storage\ResultSet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */