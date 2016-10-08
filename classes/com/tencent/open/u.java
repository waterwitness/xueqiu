package com.tencent.open;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.tauth.IUiListener;
import java.lang.ref.WeakReference;

final class u
{
  public IUiListener a;
  public Bundle b;
  public String c;
  public WeakReference d;
  
  public u(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    this.d = new WeakReference(paramActivity);
    this.c = paramString;
    this.b = paramBundle;
    this.a = paramIUiListener;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */