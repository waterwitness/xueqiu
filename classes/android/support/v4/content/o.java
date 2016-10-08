package android.support.v4.content;

import android.database.ContentObserver;
import android.os.Handler;

public final class o
  extends ContentObserver
{
  public o(n paramn)
  {
    super(new Handler());
  }
  
  public final boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public final void onChange(boolean paramBoolean)
  {
    this.a.n();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */