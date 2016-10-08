package rx.a.c;

import android.os.Looper;

public final class a
{
  public static void a()
  {
    if (Looper.getMainLooper() != Looper.myLooper()) {
      throw new IllegalStateException("Observers must subscribe from the main UI thread, but was " + Thread.currentThread());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\a\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */