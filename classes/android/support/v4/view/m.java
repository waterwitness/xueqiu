package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.GestureDetector.OnGestureListener;

public final class m
{
  public final n a;
  
  public m(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this(paramContext, paramOnGestureListener, (byte)0);
  }
  
  private m(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, byte paramByte)
  {
    if (Build.VERSION.SDK_INT > 17)
    {
      this.a = new q(paramContext, paramOnGestureListener);
      return;
    }
    this.a = new o(paramContext, paramOnGestureListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */