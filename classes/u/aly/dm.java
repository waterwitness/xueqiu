package u.aly;

public enum dm
{
  final int e;
  
  private dm(int paramInt1)
  {
    this.e = paramInt1;
  }
  
  public static dm a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return a;
    case 1: 
      return b;
    case 2: 
      return c;
    }
    return d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\dm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */