package se.emilsjolander.stickylistheaders;

import java.util.HashMap;

final class f<TKey, TValue>
{
  HashMap<TKey, TValue> a = new HashMap();
  HashMap<TValue, TKey> b = new HashMap();
  
  public final TKey a(TValue paramTValue)
  {
    return (TKey)this.b.get(paramTValue);
  }
  
  public final TValue b(TKey paramTKey)
  {
    return (TValue)this.a.get(paramTKey);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */