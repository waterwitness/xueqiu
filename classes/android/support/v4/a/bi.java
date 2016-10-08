package android.support.v4.a;

import android.app.Notification.Action.Builder;
import android.app.Notification.Builder;
import android.app.RemoteInput;

final class bi
{
  public static void a(Notification.Builder paramBuilder, bn parambn)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(parambn.a(), parambn.b(), parambn.c());
    if (parambn.e() != null)
    {
      RemoteInput[] arrayOfRemoteInput = ca.a(parambn.e());
      int j = arrayOfRemoteInput.length;
      int i = 0;
      while (i < j)
      {
        localBuilder.addRemoteInput(arrayOfRemoteInput[i]);
        i += 1;
      }
    }
    if (parambn.d() != null) {
      localBuilder.addExtras(parambn.d());
    }
    paramBuilder.addAction(localBuilder.build());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\bi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */