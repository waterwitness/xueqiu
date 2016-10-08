package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

public final class t
  extends Observable<u>
{
  public final void a()
  {
    int i = this.mObservers.size() - 1;
    while (i >= 0)
    {
      ((u)this.mObservers.get(i)).a();
      i -= 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */