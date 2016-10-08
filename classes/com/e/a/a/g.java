package com.e.a.a;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;

final class g
  extends a
{
  private final List<b> d;
  
  public g(String paramString1, Charset paramCharset, String paramString2, List<b> paramList)
  {
    super(paramString1, paramCharset, paramString2);
    this.d = paramList;
  }
  
  public final List<b> a()
  {
    return this.d;
  }
  
  protected final void a(b paramb, OutputStream paramOutputStream)
  {
    paramb = paramb.a.iterator();
    while (paramb.hasNext())
    {
      i locali = (i)paramb.next();
      a.a(locali.a, paramOutputStream);
      a.a(a.a, paramOutputStream);
      a.a(locali.b, paramOutputStream);
      a.a(a.b, paramOutputStream);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */