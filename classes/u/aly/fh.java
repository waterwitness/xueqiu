package u.aly;

import java.io.ByteArrayOutputStream;

public final class fh
{
  private final ByteArrayOutputStream a = new ByteArrayOutputStream();
  private final gm b = new gm(this.a);
  private ga c;
  
  public fh()
  {
    this(new fw());
  }
  
  private fh(gd paramgd)
  {
    this.c = paramgd.a(this.b);
  }
  
  public final byte[] a(fa paramfa)
  {
    this.a.reset();
    paramfa.b(this.c);
    return this.a.toByteArray();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */