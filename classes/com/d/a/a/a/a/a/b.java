package com.d.a.a.a.a.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

public final class b
{
  final d a;
  final boolean[] b;
  boolean c;
  private boolean e;
  
  private b(a parama, d paramd)
  {
    this.a = paramd;
    if (paramd.c) {}
    for (parama = null;; parama = new boolean[a.g(parama)])
    {
      this.b = parama;
      return;
    }
  }
  
  public final OutputStream a()
  {
    synchronized (this.d)
    {
      if (this.a.d != this) {
        throw new IllegalStateException();
      }
    }
    if (!this.a.c) {
      this.b[0] = true;
    }
    File localFile = this.a.b(0);
    try
    {
      Object localObject2 = new FileOutputStream(localFile);
      localObject2 = new c(this, (OutputStream)localObject2, (byte)0);
      return (OutputStream)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      for (;;)
      {
        a.h(this.d).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          OutputStream localOutputStream = a.d();
          return localOutputStream;
        }
      }
    }
  }
  
  public final void b()
  {
    if (this.c)
    {
      a.a(this.d, this, false);
      this.d.c(this.a.a);
    }
    for (;;)
    {
      this.e = true;
      return;
      a.a(this.d, this, true);
    }
  }
  
  public final void c()
  {
    a.a(this.d, this, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\a\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */