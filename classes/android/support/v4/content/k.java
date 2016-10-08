package android.support.v4.content;

import android.content.ComponentName;
import android.content.Intent;

class k
  implements j
{
  public Intent a(ComponentName paramComponentName)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setComponent(paramComponentName);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    return localIntent;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */