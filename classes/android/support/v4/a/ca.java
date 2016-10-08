package android.support.v4.a;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;

final class ca
{
  static RemoteInput[] a(cc[] paramArrayOfcc)
  {
    if (paramArrayOfcc == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfcc.length];
    int i = 0;
    while (i < paramArrayOfcc.length)
    {
      cc localcc = paramArrayOfcc[i];
      arrayOfRemoteInput[i] = new RemoteInput.Builder(localcc.a()).setLabel(localcc.b()).setChoices(localcc.c()).setAllowFreeFormInput(localcc.d()).addExtras(localcc.e()).build();
      i += 1;
    }
    return arrayOfRemoteInput;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\ca.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */