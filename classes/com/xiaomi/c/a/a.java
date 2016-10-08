package com.xiaomi.c.a;

import com.xiaomi.e.e.f;
import com.xiaomi.e.e.n;
import com.xiaomi.e.g;
import java.io.Reader;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.List;

public final class a
  implements com.xiaomi.e.a.a
{
  public static boolean a = false;
  private SimpleDateFormat b = new SimpleDateFormat("hh:mm:ss aaa");
  private com.xiaomi.e.a c = null;
  private g d = null;
  private com.xiaomi.e.e e = null;
  private Writer f;
  private Reader g;
  private f h;
  private n i;
  
  public a(com.xiaomi.e.a parama, Writer paramWriter, Reader paramReader)
  {
    this.c = parama;
    this.f = paramWriter;
    this.g = paramReader;
    parama = new com.xiaomi.e.e.a(this.g);
    this.h = new b(this);
    parama.a(this.h);
    paramWriter = new com.xiaomi.e.e.b(this.f);
    this.i = new c(this);
    paramWriter.a(this.i);
    this.g = parama;
    this.f = paramWriter;
    this.d = new d(this);
    this.e = new e(this);
  }
  
  public final Reader a()
  {
    return this.g;
  }
  
  public final Reader a(Reader paramReader)
  {
    com.xiaomi.e.e.a locala = (com.xiaomi.e.e.a)this.g;
    f localf = this.h;
    synchronized (locala.b)
    {
      locala.b.remove(localf);
      paramReader = new com.xiaomi.e.e.a(paramReader);
      paramReader.a(this.h);
      this.g = paramReader;
      return this.g;
    }
  }
  
  public final Writer a(Writer paramWriter)
  {
    com.xiaomi.e.e.b localb = (com.xiaomi.e.e.b)this.f;
    n localn = this.i;
    synchronized (localb.b)
    {
      localb.b.remove(localn);
      paramWriter = new com.xiaomi.e.e.b(paramWriter);
      paramWriter.a(this.i);
      this.f = paramWriter;
      return this.f;
    }
  }
  
  public final Writer b()
  {
    return this.f;
  }
  
  public final g c()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\c\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */