package android.support.v4.a;

import android.os.Bundle;

final class ce
{
  static Bundle[] a(cc[] paramArrayOfcc)
  {
    if (paramArrayOfcc == null) {
      return null;
    }
    Bundle[] arrayOfBundle = new Bundle[paramArrayOfcc.length];
    int i = 0;
    while (i < paramArrayOfcc.length)
    {
      cc localcc = paramArrayOfcc[i];
      Bundle localBundle = new Bundle();
      localBundle.putString("resultKey", localcc.a());
      localBundle.putCharSequence("label", localcc.b());
      localBundle.putCharSequenceArray("choices", localcc.c());
      localBundle.putBoolean("allowFreeFormInput", localcc.d());
      localBundle.putBundle("extras", localcc.e());
      arrayOfBundle[i] = localBundle;
      i += 1;
    }
    return arrayOfBundle;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\ce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */