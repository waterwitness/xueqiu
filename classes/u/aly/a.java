package u.aly;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class a
{
  final String a;
  List<av> b;
  bb c;
  private final int d = 10;
  private final int e = 20;
  
  public a(String paramString)
  {
    this.a = paramString;
  }
  
  public final void a(bh parambh)
  {
    this.c = ((bb)parambh.a.get("mName"));
    parambh = parambh.b;
    if ((parambh != null) && (parambh.size() > 0))
    {
      if (this.b == null) {
        this.b = new ArrayList();
      }
      parambh = parambh.iterator();
    }
    for (;;)
    {
      if (!parambh.hasNext()) {
        return;
      }
      av localav = (av)parambh.next();
      if (this.a.equals(localav.a)) {
        this.b.add(localav);
      }
    }
  }
  
  public final boolean a()
  {
    return (this.c == null) || (this.c.c <= 20);
  }
  
  public abstract String b();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */