package u.aly;

import java.io.Serializable;

public class fp
  implements Serializable
{
  private final boolean a;
  public final byte b;
  private final String c;
  private final boolean d;
  
  public fp(byte paramByte)
  {
    this(paramByte, false);
  }
  
  public fp(byte paramByte, boolean paramBoolean)
  {
    this.b = paramByte;
    this.a = false;
    this.c = null;
    this.d = paramBoolean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */