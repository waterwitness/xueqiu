package u.aly;

public abstract class go
{
  public final int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        return i;
      }
      int j = a(paramArrayOfByte, i + 0, paramInt - i);
      if (j <= 0) {
        throw new gp("Cannot read. Remote side has closed. Tried to read " + paramInt + " bytes, but only got " + i + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)", (byte)0);
      }
      i += j;
    }
  }
  
  public abstract int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public void a(int paramInt) {}
  
  public final void a(byte[] paramArrayOfByte)
  {
    b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\go.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */