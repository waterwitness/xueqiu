package com.xiaomi.e.e;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public final class a
  extends Reader
{
  Reader a = null;
  public List b = new ArrayList();
  
  public a(Reader paramReader)
  {
    this.a = paramReader;
  }
  
  public final void a(f paramf)
  {
    if (paramf == null) {
      return;
    }
    synchronized (this.b)
    {
      if (!this.b.contains(paramf)) {
        this.b.add(paramf);
      }
      return;
    }
  }
  
  public final void close()
  {
    this.a.close();
  }
  
  public final void mark(int paramInt)
  {
    this.a.mark(paramInt);
  }
  
  public final boolean markSupported()
  {
    return this.a.markSupported();
  }
  
  public final int read()
  {
    return this.a.read();
  }
  
  public final int read(char[] paramArrayOfChar)
  {
    return this.a.read(paramArrayOfChar);
  }
  
  public final int read(char[] arg1, int paramInt1, int paramInt2)
  {
    paramInt2 = this.a.read(???, paramInt1, paramInt2);
    if (paramInt2 > 0)
    {
      String str = new String(???, paramInt1, paramInt2);
      synchronized (this.b)
      {
        f[] arrayOff = new f[this.b.size()];
        this.b.toArray(arrayOff);
        paramInt1 = 0;
        if (paramInt1 < arrayOff.length)
        {
          arrayOff[paramInt1].a(str);
          paramInt1 += 1;
        }
      }
    }
    return paramInt2;
  }
  
  public final boolean ready()
  {
    return this.a.ready();
  }
  
  public final void reset()
  {
    this.a.reset();
  }
  
  public final long skip(long paramLong)
  {
    return this.a.skip(paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */