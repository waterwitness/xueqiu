package com.xiaomi.e.e;

import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class b
  extends Writer
{
  Writer a = null;
  public List b = new ArrayList();
  
  public b(Writer paramWriter)
  {
    this.a = paramWriter;
  }
  
  private void a(String paramString)
  {
    synchronized (this.b)
    {
      n[] arrayOfn = new n[this.b.size()];
      this.b.toArray(arrayOfn);
      int i = 0;
      if (i < arrayOfn.length)
      {
        arrayOfn[i].a(paramString);
        i += 1;
      }
    }
  }
  
  public final void a(n paramn)
  {
    if (paramn == null) {
      return;
    }
    synchronized (this.b)
    {
      if (!this.b.contains(paramn)) {
        this.b.add(paramn);
      }
      return;
    }
  }
  
  public final void close()
  {
    this.a.close();
  }
  
  public final void flush()
  {
    this.a.flush();
  }
  
  public final void write(int paramInt)
  {
    this.a.write(paramInt);
  }
  
  public final void write(String paramString)
  {
    this.a.write(paramString);
    a(paramString);
  }
  
  public final void write(String paramString, int paramInt1, int paramInt2)
  {
    this.a.write(paramString, paramInt1, paramInt2);
    a(paramString.substring(paramInt1, paramInt1 + paramInt2));
  }
  
  public final void write(char[] paramArrayOfChar)
  {
    this.a.write(paramArrayOfChar);
    a(new String(paramArrayOfChar));
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.a.write(paramArrayOfChar, paramInt1, paramInt2);
    a(new String(paramArrayOfChar, paramInt1, paramInt2));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\e\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */