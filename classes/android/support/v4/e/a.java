package android.support.v4.e;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a<K, V>
  extends n<K, V>
  implements Map<K, V>
{
  e<K, V> a;
  
  private e<K, V> a()
  {
    if (this.a == null) {
      this.a = new e()
      {
        protected final int a()
        {
          return a.this.h;
        }
        
        protected final int a(Object paramAnonymousObject)
        {
          return a.this.a(paramAnonymousObject);
        }
        
        protected final Object a(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          return a.this.g[((paramAnonymousInt1 << 1) + paramAnonymousInt2)];
        }
        
        protected final V a(int paramAnonymousInt, V paramAnonymousV)
        {
          return (V)a.this.a(paramAnonymousInt, paramAnonymousV);
        }
        
        protected final void a(int paramAnonymousInt)
        {
          a.this.d(paramAnonymousInt);
        }
        
        protected final void a(K paramAnonymousK, V paramAnonymousV)
        {
          a.this.put(paramAnonymousK, paramAnonymousV);
        }
        
        protected final int b(Object paramAnonymousObject)
        {
          return a.this.b(paramAnonymousObject);
        }
        
        protected final Map<K, V> b()
        {
          return a.this;
        }
        
        protected final void c()
        {
          a.this.clear();
        }
      };
    }
    return this.a;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    e locale = a();
    if (locale.b == null) {
      locale.b = new g(locale);
    }
    return locale.b;
  }
  
  public Set<K> keySet()
  {
    e locale = a();
    if (locale.c == null) {
      locale.c = new h(locale);
    }
    return locale.c;
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    int i = this.h + paramMap.size();
    Object localObject;
    if (this.f.length < i)
    {
      localObject = this.f;
      Object[] arrayOfObject = this.g;
      super.a(i);
      if (this.h > 0)
      {
        System.arraycopy(localObject, 0, this.f, 0, this.h);
        System.arraycopy(arrayOfObject, 0, this.g, 0, this.h << 1);
      }
      n.a((int[])localObject, arrayOfObject, this.h);
    }
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject = (Map.Entry)paramMap.next();
      put(((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
    }
  }
  
  public Collection<V> values()
  {
    e locale = a();
    if (locale.d == null) {
      locale.d = new j(locale);
    }
    return locale.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */