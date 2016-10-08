package org.apache.a.c;

public abstract class d
{
  public final int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = a(paramArrayOfByte, i + 0, paramInt - i);
      if (j <= 0) {
        throw new e("Cannot read. Remote side has closed. Tried to read " + paramInt + " bytes, but only got " + i + " bytes.", (byte)0);
      }
      i += j;
    }
    return i;
  }
  
  public abstract int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public void a(int paramInt) {}
  
  public byte[] a()
  {
    return null;
  }
  
  public int b()
  {
    return 0;
  }
  
  public abstract void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public int c()
  {
    return -1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\a\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */