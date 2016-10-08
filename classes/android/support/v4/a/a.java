package android.support.v4.a;

import android.app.Activity;
import android.os.Build.VERSION;
import android.support.v4.content.g;

public final class a
  extends g
{
  public static void a(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramActivity.finishAffinity();
      return;
    }
    paramActivity.finish();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */