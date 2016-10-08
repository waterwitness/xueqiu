package android.support.v4.view;

import android.view.KeyEvent;

final class y
  extends x
{
  public final int a(int paramInt)
  {
    return KeyEvent.normalizeMetaState(paramInt);
  }
  
  public final boolean b(int paramInt)
  {
    return KeyEvent.metaStateHasModifiers(paramInt, 1);
  }
  
  public final boolean c(int paramInt)
  {
    return KeyEvent.metaStateHasNoModifiers(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */