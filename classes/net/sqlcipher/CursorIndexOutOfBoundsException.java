package net.sqlcipher;

public class CursorIndexOutOfBoundsException
  extends IndexOutOfBoundsException
{
  public CursorIndexOutOfBoundsException(int paramInt1, int paramInt2)
  {
    super("Index " + paramInt1 + " requested, with a size of " + paramInt2);
  }
  
  public CursorIndexOutOfBoundsException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\CursorIndexOutOfBoundsException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */