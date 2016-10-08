package b.a.a;

import java.util.ArrayList;
import java.util.List;

final class h
{
  private static final List<h> d = new ArrayList();
  Object a;
  m b;
  h c;
  
  private h(Object paramObject, m paramm)
  {
    this.a = paramObject;
    this.b = paramm;
  }
  
  static h a(m paramm, Object paramObject)
  {
    synchronized (d)
    {
      int i = d.size();
      if (i > 0)
      {
        h localh = (h)d.remove(i - 1);
        localh.a = paramObject;
        localh.b = paramm;
        localh.c = null;
        return localh;
      }
      return new h(paramObject, paramm);
    }
  }
  
  static void a(h paramh)
  {
    paramh.a = null;
    paramh.b = null;
    paramh.c = null;
    synchronized (d)
    {
      if (d.size() < 10000) {
        d.add(paramh);
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */