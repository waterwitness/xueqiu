package com.pingan.b.a;

import org.apache.http.Header;
import org.apache.http.message.BasicHeader;

public final class n
  implements g
{
  private m a = null;
  private m b = null;
  
  public final void a(m paramm)
  {
    try
    {
      this.a = paramm;
      return;
    }
    finally
    {
      paramm = finally;
      throw paramm;
    }
  }
  
  public final Header[] a(Header[] paramArrayOfHeader)
  {
    for (;;)
    {
      Header[] arrayOfHeader;
      try
      {
        if (this.a == null)
        {
          localObject = this.b;
          if (localObject == null) {
            return paramArrayOfHeader;
          }
        }
        if ((this.a != null) && (this.b != null))
        {
          i = 2;
          arrayOfHeader = new Header[paramArrayOfHeader.length + i];
          System.arraycopy(paramArrayOfHeader, 0, arrayOfHeader, 0, paramArrayOfHeader.length);
          if (this.a != null)
          {
            m localm = this.a;
            if (localm.b == null) {
              break label270;
            }
            localObject = localm.b;
            if (localm.d != null)
            {
              str = localm.d;
              arrayOfHeader[paramArrayOfHeader.length] = new BasicHeader("X-Estat", String.format("e1;%d;%s;%s;%s;%f", new Object[] { Integer.valueOf(localm.a), localObject, str, localm.h, Double.valueOf(localm.f) }));
              this.a = null;
            }
          }
          else
          {
            if (this.b == null) {
              break label264;
            }
            arrayOfHeader[(paramArrayOfHeader.length + i - 1)] = new BasicHeader("X-Stat", String.format("v1;%s;%f;%s;%s", new Object[] { this.b.b, Double.valueOf(this.b.f), this.b.d, this.b.h }));
            break label264;
          }
          String str = "";
          continue;
        }
        int i = 1;
      }
      finally {}
      continue;
      label264:
      paramArrayOfHeader = arrayOfHeader;
      continue;
      label270:
      Object localObject = "";
    }
  }
  
  public final void b(m paramm)
  {
    try
    {
      this.b = paramm;
      return;
    }
    finally
    {
      paramm = finally;
      throw paramm;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */