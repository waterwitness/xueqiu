package se.emilsjolander.stickylistheaders;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;

public class t
  extends ViewGroup
{
  View a;
  Drawable b;
  int c;
  View d;
  int e;
  
  t(Context paramContext)
  {
    super(paramContext);
  }
  
  public final boolean a()
  {
    return this.d != null;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if ((this.d == null) && (this.b != null) && (this.a.getVisibility() != 8))
    {
      if (Build.VERSION.SDK_INT < 11) {
        paramCanvas.clipRect(0, 0, getWidth(), this.c);
      }
      this.b.draw(paramCanvas);
    }
  }
  
  public View getHeader()
  {
    return this.d;
  }
  
  public View getItem()
  {
    return this.a;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = getWidth();
    paramInt2 = getHeight();
    if (this.d != null)
    {
      paramInt3 = this.d.getMeasuredHeight();
      this.d.layout(0, 0, paramInt1, paramInt3);
      this.e = paramInt3;
      this.a.layout(0, paramInt3, paramInt1, paramInt2);
      return;
    }
    if (this.b != null)
    {
      this.b.setBounds(0, 0, paramInt1, this.c);
      this.e = this.c;
      this.a.layout(0, this.c, paramInt1, paramInt2);
      return;
    }
    this.e = 0;
    this.a.layout(0, 0, paramInt1, paramInt2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = View.MeasureSpec.getSize(paramInt1);
    int i = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
    ViewGroup.LayoutParams localLayoutParams;
    if (this.d != null)
    {
      localLayoutParams = this.d.getLayoutParams();
      if ((localLayoutParams != null) && (localLayoutParams.height > 0))
      {
        this.d.measure(i, View.MeasureSpec.makeMeasureSpec(localLayoutParams.height, 1073741824));
        paramInt1 = this.d.getMeasuredHeight() + 0;
      }
    }
    for (;;)
    {
      label67:
      localLayoutParams = this.a.getLayoutParams();
      if (this.a.getVisibility() == 8) {
        this.a.measure(i, View.MeasureSpec.makeMeasureSpec(0, 1073741824));
      }
      for (;;)
      {
        setMeasuredDimension(paramInt2, paramInt1);
        return;
        this.d.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
        break;
        if ((this.b == null) || (this.a.getVisibility() == 8)) {
          break label224;
        }
        paramInt1 = this.c + 0;
        break label67;
        if ((localLayoutParams != null) && (localLayoutParams.height >= 0))
        {
          this.a.measure(i, View.MeasureSpec.makeMeasureSpec(localLayoutParams.height, 1073741824));
          paramInt1 += this.a.getMeasuredHeight();
        }
        else
        {
          this.a.measure(i, View.MeasureSpec.makeMeasureSpec(0, 0));
          paramInt1 += this.a.getMeasuredHeight();
        }
      }
      label224:
      paramInt1 = 0;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */