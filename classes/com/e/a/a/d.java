package com.e.a.a;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.List;

final class d
  extends a
{
  private final List<b> d;
  
  public d(String paramString1, Charset paramCharset, String paramString2, List<b> paramList)
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
    c localc = paramb.a;
    a(localc.a("Content-Disposition"), this.c, paramOutputStream);
    if (paramb.b.c() != null) {
      a(localc.a("Content-Type"), this.c, paramOutputStream);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */