package org.apache.a.b;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.a.c.d;

public final class n
  extends a
{
  private static int f = 10000;
  private static int g = 10000;
  private static int h = 10000;
  private static int i = 10485760;
  private static int j = 104857600;
  
  public n(d paramd, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramd, paramBoolean1, paramBoolean2);
  }
  
  public final g g()
  {
    byte b1 = k();
    byte b2 = k();
    int k = m();
    if (k > f) {
      throw new i("Thrift map size " + k + " out of range!");
    }
    return new g(b1, b2, k);
  }
  
  public final f h()
  {
    byte b = k();
    int k = m();
    if (k > g) {
      throw new i("Thrift list size " + k + " out of range!");
    }
    return new f(b, k);
  }
  
  public final l i()
  {
    byte b = k();
    int k = m();
    if (k > h) {
      throw new i("Thrift set size " + k + " out of range!");
    }
    return new l(b, k);
  }
  
  public final String p()
  {
    int k = m();
    if (k > i) {
      throw new i("Thrift string size " + k + " out of range!");
    }
    if (this.e.c() >= k) {
      try
      {
        String str = new String(this.e.a(), this.e.b(), k, "UTF-8");
        this.e.a(k);
        return str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new org.apache.a.g("JVM DOES NOT SUPPORT UTF-8");
      }
    }
    return b(k);
  }
  
  public final ByteBuffer q()
  {
    int k = m();
    if (k > j) {
      throw new i("Thrift binary size " + k + " out of range!");
    }
    d(k);
    if (this.e.c() >= k)
    {
      localObject = ByteBuffer.wrap(this.e.a(), this.e.b(), k);
      this.e.a(k);
      return (ByteBuffer)localObject;
    }
    Object localObject = new byte[k];
    this.e.a((byte[])localObject, k);
    return ByteBuffer.wrap((byte[])localObject);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\b\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */