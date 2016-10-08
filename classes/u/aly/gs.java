package u.aly;

import android.content.Context;

public final class gs
  extends a
{
  private Context d;
  
  public gs(Context paramContext)
  {
    super("mac");
    this.d = paramContext;
  }
  
  public final String b()
  {
    try
    {
      String str = er.k(this.d);
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */