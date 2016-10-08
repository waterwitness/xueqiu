package se.emilsjolander.stickylistheaders;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

final class d<TKey, TItemValue>
{
  e<TKey, TItemValue> a;
  LinkedHashMap<Object, List<TItemValue>> b = new LinkedHashMap();
  LinkedHashMap<Object, TKey> c = new LinkedHashMap();
  
  d()
  {
    this(new e()
    {
      public final Object a(TKey paramAnonymousTKey)
      {
        return paramAnonymousTKey;
      }
      
      public final Object b(TItemValue paramAnonymousTItemValue)
      {
        return paramAnonymousTItemValue;
      }
    });
  }
  
  private d(e<TKey, TItemValue> parame)
  {
    this.a = parame;
  }
  
  final boolean a(List<TItemValue> paramList, TItemValue paramTItemValue)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = paramList.next();
      if (this.a.b(localObject).equals(this.a.b(paramTItemValue))) {
        return true;
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */