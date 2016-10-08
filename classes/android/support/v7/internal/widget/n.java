package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;
import java.util.List;

final class n
  implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private n(ActivityChooserView paramActivityChooserView) {}
  
  public final void onClick(View paramView)
  {
    if (paramView == ActivityChooserView.e(this.a))
    {
      this.a.a();
      paramView = ActivityChooserView.a(this.a).a.b();
      int i = ActivityChooserView.a(this.a).a.a(paramView);
      paramView = ActivityChooserView.a(this.a).a.b(i);
      if (paramView != null)
      {
        paramView.addFlags(524288);
        this.a.getContext().startActivity(paramView);
      }
      return;
    }
    if (paramView == ActivityChooserView.f(this.a))
    {
      ActivityChooserView.a(this.a, false);
      ActivityChooserView.a(this.a, ActivityChooserView.g(this.a));
      return;
    }
    throw new IllegalArgumentException();
  }
  
  public final void onDismiss()
  {
    if (ActivityChooserView.h(this.a) != null) {
      ActivityChooserView.h(this.a).onDismiss();
    }
    if (this.a.a != null) {
      this.a.a.a(false);
    }
  }
  
  public final void onItemClick(AdapterView<?> arg1, View paramView, int paramInt, long paramLong)
  {
    switch (((m)???.getAdapter()).getItemViewType(paramInt))
    {
    default: 
      throw new IllegalArgumentException();
    case 1: 
      ActivityChooserView.a(this.a, Integer.MAX_VALUE);
    }
    do
    {
      return;
      this.a.a();
      if (!ActivityChooserView.d(this.a)) {
        break;
      }
    } while (paramInt <= 0);
    paramView = ActivityChooserView.a(this.a).a;
    for (;;)
    {
      synchronized (paramView.a)
      {
        paramView.d();
        h localh1 = (h)paramView.b.get(paramInt);
        h localh2 = (h)paramView.b.get(0);
        if (localh2 != null)
        {
          f = localh2.b - localh1.b + 5.0F;
          paramView.a(new j(new ComponentName(localh1.a.activityInfo.packageName, localh1.a.activityInfo.name), System.currentTimeMillis(), f));
          return;
        }
      }
      float f = 1.0F;
    }
    if (ActivityChooserView.a(this.a).b) {}
    for (;;)
    {
      ??? = ActivityChooserView.a(this.a).a.b(paramInt);
      if (??? == null) {
        break;
      }
      ???.addFlags(524288);
      this.a.getContext().startActivity(???);
      return;
      paramInt += 1;
    }
  }
  
  public final boolean onLongClick(View paramView)
  {
    if (paramView == ActivityChooserView.e(this.a))
    {
      if (ActivityChooserView.a(this.a).getCount() > 0)
      {
        ActivityChooserView.a(this.a, true);
        ActivityChooserView.a(this.a, ActivityChooserView.g(this.a));
      }
      return true;
    }
    throw new IllegalArgumentException();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */