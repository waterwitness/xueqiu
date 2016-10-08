package u.aly;

public final class fe
{
  private final ga a;
  private final gn b = new gn();
  
  public fe()
  {
    this(new fw());
  }
  
  public fe(gd paramgd)
  {
    this.a = paramgd.a(this.b);
  }
  
  public final void a(fa paramfa, byte[] paramArrayOfByte)
  {
    try
    {
      gn localgn = this.b;
      int i = paramArrayOfByte.length;
      localgn.a = paramArrayOfByte;
      localgn.b = 0;
      localgn.c = (i + 0);
      paramfa.a(this.a);
      return;
    }
    finally
    {
      this.b.a = null;
      this.a.r();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */