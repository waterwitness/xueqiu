package com.xiaomi.d;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

final class q
  extends b
{
  b n = this.o;
  
  q(f paramf, String paramString, b paramb)
  {
    super(paramString);
    if (this.o != null) {
      this.h = this.o.h;
    }
  }
  
  public final ArrayList<String> a(boolean paramBoolean)
  {
    ArrayList localArrayList3;
    for (;;)
    {
      try
      {
        localArrayList3 = new ArrayList();
        if (this.n != null) {
          localArrayList3.addAll(this.n.a(true));
        }
        synchronized (f.b)
        {
          Object localObject3 = (ArrayList)f.b.get(this.d);
          if (localObject3 == null) {
            break label159;
          }
          if (this.n != null)
          {
            ArrayList localArrayList1 = this.n.a(false);
            localObject3 = ((ArrayList)localObject3).iterator();
            if (!((Iterator)localObject3).hasNext()) {
              break;
            }
            String str = (String)((Iterator)localObject3).next();
            if (localArrayList1.indexOf(str) != -1) {
              continue;
            }
            localArrayList3.add(str);
          }
        }
        ArrayList localArrayList2 = localArrayList3;
      }
      finally {}
    }
    localArrayList3.remove(this.d);
    localArrayList3.add(this.d);
    label159:
    return localArrayList3;
  }
  
  public final void a(String paramString, a parama)
  {
    try
    {
      if (this.n != null) {
        this.n.a(paramString, parama);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final boolean a()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */