package u.aly;

import android.content.Context;
import android.telephony.TelephonyManager;

public final class gq
  extends a
{
  private Context d;
  
  public gq(Context paramContext)
  {
    super("imei");
    this.d = paramContext;
  }
  
  public final String b()
  {
    Object localObject = (TelephonyManager)this.d.getSystemService("phone");
    try
    {
      if (er.a(this.d, "android.permission.READ_PHONE_STATE"))
      {
        localObject = ((TelephonyManager)localObject).getDeviceId();
        return (String)localObject;
      }
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */