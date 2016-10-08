package org.apache.a.c;

import org.apache.a.e;

public final class b
  extends d
{
  public e a;
  private int b;
  
  public b(int paramInt)
  {
    this.a = new e(paramInt);
  }
  
  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = this.a.a();
    int i = paramInt2;
    if (paramInt2 > this.a.b() - this.b) {
      i = this.a.b() - this.b;
    }
    if (i > 0)
    {
      System.arraycopy(arrayOfByte, this.b, paramArrayOfByte, paramInt1, i);
      this.b += i;
    }
    return i;
  }
  
  public final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */