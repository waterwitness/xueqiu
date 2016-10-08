package com.xueqiu.android.common;

import android.database.DataSetObserver;
import java.lang.ref.WeakReference;

public final class s
  extends DataSetObserver
{
  private WeakReference<r> a = null;
  
  s(WeakReference<r> paramWeakReference)
  {
    this.a = paramWeakReference;
  }
  
  public final void onChanged() {}
  
  public final void onInvalidated()
  {
    if (this.a.get() != null) {
      ((r)this.a.get()).b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */