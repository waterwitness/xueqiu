package u.aly;

public enum au
{
  final int d;
  
  private au(int paramInt1)
  {
    this.d = paramInt1;
  }
  
  public static au a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return a;
    case 1: 
      return b;
    }
    return c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */