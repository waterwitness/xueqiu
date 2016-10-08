package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v7.a.a;
import android.support.v7.b.c;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class ActionBarOverlayLayout
  extends FrameLayout
{
  static final int[] a = { c.actionBarSize };
  private int b;
  private a c;
  private final Rect d = new Rect(0, 0, 0, 0);
  
  public ActionBarOverlayLayout(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ActionBarOverlayLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    TypedArray localTypedArray = getContext().getTheme().obtainStyledAttributes(a);
    this.b = localTypedArray.getDimensionPixelSize(0, 0);
    localTypedArray.recycle();
  }
  
  public void setActionBar(a parama)
  {
    this.c = parama;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ActionBarOverlayLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */