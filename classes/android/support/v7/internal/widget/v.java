package android.support.v7.internal.widget;

import android.content.Context;
import android.support.v7.b.c;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;

final class v
  extends ListView
{
  private boolean a;
  private boolean b;
  
  public v(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, c.dropDownListViewStyle);
    this.b = paramBoolean;
    setCacheColorHint(0);
  }
  
  final int a(int paramInt1, int paramInt2)
  {
    int i = getListPaddingTop();
    int k = getListPaddingBottom();
    getListPaddingLeft();
    getListPaddingRight();
    int j = getDividerHeight();
    Object localObject = getDivider();
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter == null)
    {
      i += k;
      return i;
    }
    i = k + i;
    label70:
    label87:
    int n;
    if ((j > 0) && (localObject != null))
    {
      int i1 = localListAdapter.getCount();
      k = 0;
      int m = 0;
      localObject = null;
      if (k >= i1) {
        break label227;
      }
      n = localListAdapter.getItemViewType(k);
      if (n == m) {
        break label230;
      }
      m = n;
      localObject = null;
      label118:
      localObject = localListAdapter.getView(k, (View)localObject, this);
      ViewGroup.LayoutParams localLayoutParams = ((View)localObject).getLayoutParams();
      if ((localLayoutParams == null) || (localLayoutParams.height <= 0)) {
        break label217;
      }
      n = View.MeasureSpec.makeMeasureSpec(localLayoutParams.height, 1073741824);
      label161:
      ((View)localObject).measure(paramInt1, n);
      if (k <= 0) {
        break label233;
      }
      i += j;
    }
    label217:
    label227:
    label230:
    label233:
    for (;;)
    {
      n = ((View)localObject).getMeasuredHeight() + i;
      i = paramInt2;
      if (n >= paramInt2) {
        break;
      }
      k += 1;
      i = n;
      break label87;
      j = 0;
      break label70;
      n = View.MeasureSpec.makeMeasureSpec(0, 0);
      break label161;
      return i;
      break label118;
    }
  }
  
  public final boolean hasFocus()
  {
    return (this.b) || (super.hasFocus());
  }
  
  public final boolean hasWindowFocus()
  {
    return (this.b) || (super.hasWindowFocus());
  }
  
  public final boolean isFocused()
  {
    return (this.b) || (super.isFocused());
  }
  
  public final boolean isInTouchMode()
  {
    return ((this.b) && (this.a)) || (super.isInTouchMode());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */