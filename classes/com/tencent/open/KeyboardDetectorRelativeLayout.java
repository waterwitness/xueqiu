package com.tencent.open;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;

public class KeyboardDetectorRelativeLayout
  extends RelativeLayout
{
  private static final String a = KeyboardDetectorRelativeLayout.class.getName();
  private Rect b = null;
  private boolean c = false;
  private KeyboardDetectorRelativeLayout.IKeyboardChanged d = null;
  
  public KeyboardDetectorRelativeLayout(Context paramContext)
  {
    super(paramContext);
    if (this.b == null) {
      this.b = new Rect();
    }
  }
  
  public KeyboardDetectorRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (this.b == null) {
      this.b = new Rect();
    }
  }
  
  public void a(KeyboardDetectorRelativeLayout.IKeyboardChanged paramIKeyboardChanged)
  {
    this.d = paramIKeyboardChanged;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt2);
    Activity localActivity = (Activity)getContext();
    localActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.b);
    int j = this.b.top;
    int k = localActivity.getWindowManager().getDefaultDisplay().getHeight();
    if ((this.d != null) && (i != 0))
    {
      if (k - j - i <= 100) {
        break label112;
      }
      this.d.onKeyboardShown(Math.abs(this.b.height()) - getPaddingBottom() - getPaddingTop());
    }
    for (;;)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
      label112:
      this.d.onKeyboardHidden();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\KeyboardDetectorRelativeLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */