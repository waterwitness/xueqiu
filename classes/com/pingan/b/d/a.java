package com.pingan.b.d;

import android.os.Handler;
import android.os.Looper;

public final class a
{
  public static void a(Runnable paramRunnable)
  {
    new Handler(Looper.getMainLooper()).post(paramRunnable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */