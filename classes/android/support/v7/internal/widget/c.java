package android.support.v7.internal.widget;

import android.util.SparseArray;
import android.view.View;

final class c
{
  final SparseArray<View> a = new SparseArray();
  
  c(b paramb) {}
  
  final View a(int paramInt)
  {
    View localView = (View)this.a.get(paramInt);
    if (localView != null) {
      this.a.delete(paramInt);
    }
    return localView;
  }
  
  public final void a(int paramInt, View paramView)
  {
    this.a.put(paramInt, paramView);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */