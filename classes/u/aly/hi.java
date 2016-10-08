package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import java.lang.reflect.Method;

public final class hi
{
  public static dt a(Context paramContext)
  {
    Object localObject1;
    try
    {
      localdt = new dt();
      Object localObject2 = Class.forName("android.net.TrafficStats");
      localObject1 = ((Class)localObject2).getMethod("getUidRxBytes", new Class[] { Integer.TYPE });
      localObject2 = ((Class)localObject2).getMethod("getUidTxBytes", new Class[] { Integer.TYPE });
      int i = paramContext.getApplicationInfo().uid;
      if (i == -1) {
        localObject1 = null;
      } else {
        localObject1 = new long[] { ((Long)((Method)localObject1).invoke(null, new Object[] { Integer.valueOf(i) })).longValue(), ((Long)((Method)localObject2).invoke(null, new Object[] { Integer.valueOf(i) })).longValue() };
      }
    }
    catch (Exception paramContext)
    {
      dt localdt;
      es.d("MobclickAgent", "sdk less than 2.2 has get no traffic");
      return null;
    }
    paramContext = paramContext.getSharedPreferences("umeng_general_config", 0);
    long l1 = paramContext.getLong("uptr", -1L);
    long l2 = paramContext.getLong("dntr", -1L);
    paramContext.edit().putLong("uptr", localObject1[1]).putLong("dntr", localObject1[0]).commit();
    if (l1 > 0L) {
      if (l2 > 0L) {
        break label266;
      }
    }
    label266:
    do
    {
      localdt.b = ((int)localObject1[0]);
      localdt.b();
      localdt.a = ((int)localObject1[1]);
      localdt.a();
      return localdt;
      if ((localObject1[0] > 0L) && (localObject1[1] > 0L)) {
        break;
      }
      return null;
      return null;
      localObject1[0] -= l2;
      localObject1[1] -= l1;
    } while ((localObject1[0] > 0L) && (localObject1[1] > 0L));
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\hi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */