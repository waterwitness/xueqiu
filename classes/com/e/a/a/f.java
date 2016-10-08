package com.e.a.a;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;

final class f
  extends a
{
  private final List<b> d;
  
  public f(String paramString1, Charset paramCharset, String paramString2, List<b> paramList)
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
    while (paramb.hasNext()) {
      a((i)paramb.next(), h.b, paramOutputStream);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */