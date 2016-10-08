package android.support.v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.View;
import android.widget.LinearLayout;

public class NativeActionModeAwareLayout
  extends LinearLayout
{
  private ab a;
  
  public NativeActionModeAwareLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void setActionModeForChildListener(ab paramab)
  {
    this.a = paramab;
  }
  
  public ActionMode startActionModeForChild(View paramView, ActionMode.Callback paramCallback)
  {
    ActionMode.Callback localCallback = paramCallback;
    if (this.a != null) {
      localCallback = this.a.a(paramCallback);
    }
    return super.startActionModeForChild(paramView, localCallback);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\NativeActionModeAwareLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */