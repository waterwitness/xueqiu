package u.aly;

import android.content.Context;
import android.provider.Settings.Secure;

public final class cz
  extends a
{
  private Context d;
  
  public cz(Context paramContext)
  {
    super("android_id");
    this.d = paramContext;
  }
  
  public final String b()
  {
    try
    {
      String str = Settings.Secure.getString(this.d.getContentResolver(), "android_id");
      return str;
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */