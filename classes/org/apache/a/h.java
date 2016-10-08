package org.apache.a;

import java.io.ByteArrayOutputStream;
import org.apache.a.b.j;
import org.apache.a.c.a;

public final class h
{
  private final ByteArrayOutputStream a = new ByteArrayOutputStream();
  private final a b = new a(this.a);
  private org.apache.a.b.h c;
  
  public h()
  {
    this(new org.apache.a.b.b());
  }
  
  public h(j paramj)
  {
    this.c = paramj.a(this.b);
  }
  
  public final byte[] a(b paramb)
  {
    this.a.reset();
    paramb.b(this.c);
    return this.a.toByteArray();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */