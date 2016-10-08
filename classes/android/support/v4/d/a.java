package android.support.v4.d;

import android.os.Build.VERSION;
import android.os.CancellationSignal;

public final class a
{
  public boolean a;
  public Object b;
  public boolean c;
  
  public final boolean a()
  {
    try
    {
      boolean bool = this.a;
      return bool;
    }
    finally {}
  }
  
  public final Object b()
  {
    if (Build.VERSION.SDK_INT < 16) {
      return null;
    }
    try
    {
      if (this.b == null)
      {
        this.b = new CancellationSignal();
        if (this.a) {
          ((CancellationSignal)this.b).cancel();
        }
      }
      Object localObject1 = this.b;
      return localObject1;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */