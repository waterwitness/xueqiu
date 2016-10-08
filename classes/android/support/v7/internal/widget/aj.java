package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SpinnerAdapter;

final class aj
  extends ListPopupWindow
  implements ak
{
  private CharSequence j;
  private ListAdapter k;
  
  public aj(final ag paramag, Context paramContext, int paramInt)
  {
    super(paramContext, null, paramInt);
    this.g = paramag;
    a();
    this.f = 0;
    this.h = new r(paramag, new q()
    {
      public final void a(View paramAnonymousView, int paramAnonymousInt)
      {
        aj.this.i.a(paramAnonymousInt);
        if (aj.this.i.u != null)
        {
          ag localag = aj.this.i;
          aj.a(aj.this).getItemId(paramAnonymousInt);
          localag.a(paramAnonymousView, paramAnonymousInt);
        }
        aj.this.c();
      }
    });
  }
  
  public final void a(ListAdapter paramListAdapter)
  {
    super.a(paramListAdapter);
    this.k = paramListAdapter;
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    this.j = paramCharSequence;
  }
  
  public final void b()
  {
    int n = this.i.getPaddingLeft();
    Object localObject;
    if (this.i.F == -2)
    {
      m = this.i.getWidth();
      int i1 = this.i.getPaddingRight();
      b(Math.max(this.i.a((SpinnerAdapter)this.k, this.a.getBackground()), m - n - i1));
      localObject = this.a.getBackground();
      if (localObject == null) {
        break label231;
      }
      ((Drawable)localObject).getPadding(ag.a(this.i));
    }
    label231:
    for (int m = -ag.a(this.i).left;; m = 0)
    {
      this.d = (m + n);
      d();
      super.b();
      this.b.setChoiceMode(1);
      m = this.i.w;
      localObject = this.b;
      if ((this.a.isShowing()) && (localObject != null))
      {
        v.a((v)localObject, false);
        ((v)localObject).setSelection(m);
        if (((v)localObject).getChoiceMode() != 0) {
          ((v)localObject).setItemChecked(m, true);
        }
      }
      return;
      if (this.i.F == -1)
      {
        b(this.i.getWidth() - n - this.i.getPaddingRight());
        break;
      }
      b(this.i.F);
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */