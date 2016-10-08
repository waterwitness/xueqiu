package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v7.b.k;
import android.support.v7.internal.widget.LinearLayoutICS;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView
  extends LinearLayoutICS
  implements af, r
{
  public p a;
  private boolean b;
  private c c;
  private boolean d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  
  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f1 = paramContext.getResources().getDisplayMetrics().density;
    this.f = ((int)(56.0F * f1));
    this.g = ((int)(f1 * 4.0F));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, k.ActionBar, android.support.v7.b.c.actionBarStyle, 0);
    this.i = paramContext.getDimensionPixelSize(0, 0);
    paramContext.recycle();
  }
  
  static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool2 = false;
    j localj = (j)paramView.getLayoutParams();
    int j = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.b())) {
        break label184;
      }
      paramInt4 = 1;
      label57:
      if ((paramInt2 <= 0) || ((paramInt4 != 0) && (paramInt2 < 2))) {
        break label190;
      }
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, Integer.MIN_VALUE), j);
      int k = paramView.getMeasuredWidth();
      paramInt3 = k / paramInt1;
      paramInt2 = paramInt3;
      if (k % paramInt1 != 0) {
        paramInt2 = paramInt3 + 1;
      }
      paramInt3 = paramInt2;
      if (paramInt4 != 0)
      {
        paramInt3 = paramInt2;
        if (paramInt2 >= 2) {}
      }
    }
    label184:
    label190:
    for (paramInt3 = 2;; paramInt3 = 0)
    {
      boolean bool1 = bool2;
      if (!localj.a)
      {
        bool1 = bool2;
        if (paramInt4 != 0) {
          bool1 = true;
        }
      }
      localj.d = bool1;
      localj.b = paramInt3;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt3 * paramInt1, 1073741824), j);
      return paramInt3;
      localActionMenuItemView = null;
      break;
      paramInt4 = 0;
      break label57;
    }
  }
  
  public static j a()
  {
    j localj = b();
    localj.a = true;
    return localj;
  }
  
  private j a(AttributeSet paramAttributeSet)
  {
    return new j(getContext(), paramAttributeSet);
  }
  
  protected static j a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof j))
    {
      paramLayoutParams = new j((j)paramLayoutParams);
      if (paramLayoutParams.gravity <= 0) {
        paramLayoutParams.gravity = 16;
      }
      return paramLayoutParams;
    }
    return b();
  }
  
  private static j b()
  {
    j localj = new j();
    localj.gravity = 16;
    return localj;
  }
  
  public final void a(p paramp)
  {
    this.a = paramp;
  }
  
  protected final boolean a(int paramInt)
  {
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt < getChildCount())
    {
      bool1 = bool2;
      if ((localView1 instanceof i)) {
        bool1 = ((i)localView1).d() | false;
      }
    }
    if ((paramInt > 0) && ((localView2 instanceof i))) {
      return ((i)localView2).c() | bool1;
    }
    return bool1;
  }
  
  public final boolean a(t paramt)
  {
    return this.a.a(paramt, 0);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof j));
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }
  
  public int getWindowAnimations()
  {
    return 0;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    this.c.b(false);
    if ((this.c != null) && (this.c.g()))
    {
      this.c.d();
      this.c.c();
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.c.e();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.d)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int i2 = getChildCount();
    int i1 = (paramInt2 + paramInt4) / 2;
    int i3 = getSupportDividerWidth();
    paramInt2 = 0;
    int j = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    paramInt4 = 0;
    int k = 0;
    label63:
    View localView;
    j localj;
    int m;
    int n;
    if (k < i2)
    {
      localView = getChildAt(k);
      if (localView.getVisibility() == 8) {
        break label509;
      }
      localj = (j)localView.getLayoutParams();
      if (localj.a)
      {
        m = localView.getMeasuredWidth();
        paramInt4 = m;
        if (a(k)) {
          paramInt4 = m + i3;
        }
        m = localView.getMeasuredHeight();
        n = getWidth() - getPaddingRight() - localj.rightMargin;
        int i4 = i1 - m / 2;
        localView.layout(n - paramInt4, i4, n, m + i4);
        m = j - paramInt4;
        j = 1;
        paramInt4 = paramInt2;
        paramInt2 = m;
      }
    }
    for (;;)
    {
      m = k + 1;
      k = j;
      j = paramInt2;
      paramInt2 = paramInt4;
      paramInt4 = k;
      k = m;
      break label63;
      m = localView.getMeasuredWidth();
      n = localj.leftMargin;
      m = j - (localj.rightMargin + (m + n));
      a(k);
      n = paramInt2 + 1;
      j = paramInt4;
      paramInt2 = m;
      paramInt4 = n;
      continue;
      if ((i2 == 1) && (paramInt4 == 0))
      {
        localView = getChildAt(0);
        paramInt2 = localView.getMeasuredWidth();
        paramInt4 = localView.getMeasuredHeight();
        paramInt1 = (paramInt3 - paramInt1) / 2 - paramInt2 / 2;
        paramInt3 = i1 - paramInt4 / 2;
        localView.layout(paramInt1, paramInt3, paramInt2 + paramInt1, paramInt4 + paramInt3);
        return;
      }
      if (paramInt4 != 0)
      {
        paramInt1 = 0;
        label359:
        paramInt1 = paramInt2 - paramInt1;
        if (paramInt1 <= 0) {
          break label501;
        }
        paramInt1 = j / paramInt1;
        label372:
        paramInt3 = Math.max(0, paramInt1);
        paramInt1 = getPaddingLeft();
        paramInt2 = 0;
        label386:
        if (paramInt2 < i2)
        {
          localView = getChildAt(paramInt2);
          localj = (j)localView.getLayoutParams();
          if ((localView.getVisibility() == 8) || (localj.a)) {
            break label506;
          }
          paramInt1 += localj.leftMargin;
          paramInt4 = localView.getMeasuredWidth();
          j = localView.getMeasuredHeight();
          k = i1 - j / 2;
          localView.layout(paramInt1, k, paramInt1 + paramInt4, j + k);
          paramInt1 = localj.rightMargin + paramInt4 + paramInt3 + paramInt1;
        }
      }
      label501:
      label506:
      for (;;)
      {
        paramInt2 += 1;
        break label386;
        break;
        paramInt1 = 1;
        break label359;
        paramInt1 = 0;
        break label372;
      }
      label509:
      m = paramInt2;
      n = paramInt4;
      paramInt2 = j;
      paramInt4 = m;
      j = n;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool2 = this.d;
    boolean bool1;
    int j;
    int i9;
    int i8;
    int i6;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824)
    {
      bool1 = true;
      this.d = bool1;
      if (bool2 != this.d) {
        this.e = 0;
      }
      j = View.MeasureSpec.getMode(paramInt1);
      if ((this.d) && (this.a != null) && (j != this.e))
      {
        this.e = j;
        this.a.b(true);
      }
      if (!this.d) {
        break label1331;
      }
      i9 = View.MeasureSpec.getMode(paramInt2);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      i8 = View.MeasureSpec.getSize(paramInt2);
      paramInt2 = getPaddingLeft();
      j = getPaddingRight();
      i6 = getPaddingTop() + getPaddingBottom();
      if (i9 != 1073741824) {
        break label185;
      }
    }
    int i10;
    label185:
    for (int i4 = View.MeasureSpec.makeMeasureSpec(i8 - i6, 1073741824);; i4 = View.MeasureSpec.makeMeasureSpec(Math.min(this.i, i8 - i6), Integer.MIN_VALUE))
    {
      i10 = paramInt1 - (j + paramInt2);
      paramInt1 = i10 / this.f;
      paramInt2 = this.f;
      if (paramInt1 != 0) {
        break label207;
      }
      setMeasuredDimension(i10, 0);
      return;
      bool1 = false;
      break;
    }
    label207:
    int i11 = this.f + i10 % paramInt2 / paramInt1;
    paramInt2 = 0;
    int i2 = 0;
    int i1 = 0;
    int i3 = 0;
    int n = 0;
    long l1 = 0L;
    int i12 = getChildCount();
    int m = 0;
    Object localObject;
    j localj;
    label369:
    label387:
    int i5;
    label425:
    int k;
    label436:
    long l2;
    if (m < i12)
    {
      localObject = getChildAt(m);
      if (((View)localObject).getVisibility() == 8) {
        break label1473;
      }
      bool1 = localObject instanceof ActionMenuItemView;
      i3 += 1;
      if (bool1) {
        ((View)localObject).setPadding(this.g, 0, this.g, 0);
      }
      localj = (j)((View)localObject).getLayoutParams();
      localj.f = false;
      localj.c = 0;
      localj.b = 0;
      localj.d = false;
      localj.leftMargin = 0;
      localj.rightMargin = 0;
      if ((bool1) && (((ActionMenuItemView)localObject).b()))
      {
        bool1 = true;
        localj.e = bool1;
        if (!localj.a) {
          break label530;
        }
        j = 1;
        i5 = a((View)localObject, i11, j, i4, i6);
        i2 = Math.max(i2, i5);
        if (!localj.d) {
          break label1466;
        }
        j = i1 + 1;
        if (!localj.a) {
          break label1459;
        }
        k = 1;
        paramInt1 -= i5;
        paramInt2 = Math.max(paramInt2, ((View)localObject).getMeasuredHeight());
        if (i5 != 1) {
          break label1422;
        }
        l2 = 1 << m;
        i1 = paramInt1;
        n = k;
        i5 = paramInt2;
        paramInt1 = i3;
        l1 = l2 | l1;
        paramInt2 = i2;
        i2 = j;
        k = i1;
        j = i5;
        i1 = i2;
      }
    }
    for (;;)
    {
      m += 1;
      i3 = paramInt1;
      paramInt1 = k;
      i2 = paramInt2;
      paramInt2 = j;
      break;
      bool1 = false;
      break label369;
      label530:
      j = paramInt1;
      break label387;
      long l3;
      if ((n != 0) && (i3 == 2))
      {
        i5 = 1;
        k = 0;
        j = paramInt1;
        paramInt1 = k;
        l3 = l1;
        if (i1 <= 0) {
          break label885;
        }
        l3 = l1;
        if (j <= 0) {
          break label885;
        }
        k = Integer.MAX_VALUE;
        l2 = 0L;
        m = 0;
        i6 = 0;
        label591:
        if (i6 >= i12) {
          break label715;
        }
        localObject = (j)getChildAt(i6).getLayoutParams();
        if (!((j)localObject).d) {
          break label1407;
        }
        if (((j)localObject).b >= k) {
          break label678;
        }
        m = ((j)localObject).b;
        l2 = 1 << i6;
        k = 1;
      }
      for (;;)
      {
        int i7 = i6 + 1;
        i6 = m;
        m = k;
        k = i6;
        i6 = i7;
        break label591;
        i5 = 0;
        break;
        label678:
        if (((j)localObject).b == k)
        {
          l2 |= 1 << i6;
          i7 = m + 1;
          m = k;
          k = i7;
          continue;
          label715:
          l1 |= l2;
          l3 = l1;
          if (m <= j)
          {
            m = 0;
            paramInt1 = j;
            j = m;
            label743:
            if (j < i12)
            {
              localObject = getChildAt(j);
              localj = (j)((View)localObject).getLayoutParams();
              if ((1 << j & l2) == 0L)
              {
                if (localj.b != k + 1) {
                  break label1404;
                }
                l1 |= 1 << j;
              }
            }
          }
          label885:
          label1051:
          label1054:
          label1153:
          label1159:
          label1227:
          label1230:
          label1331:
          label1395:
          label1401:
          label1404:
          for (;;)
          {
            j += 1;
            break label743;
            if ((i5 != 0) && (localj.e) && (paramInt1 == 1)) {
              ((View)localObject).setPadding(this.g + i11, 0, this.g, 0);
            }
            localj.b += 1;
            localj.f = true;
            paramInt1 -= 1;
            continue;
            k = 1;
            j = paramInt1;
            paramInt1 = k;
            break;
            float f2;
            float f1;
            if ((n == 0) && (i3 == 1))
            {
              k = 1;
              if ((j <= 0) || (l3 == 0L) || ((j >= i3 - 1) && (k == 0) && (i2 <= 1))) {
                break label1401;
              }
              float f3 = Long.bitCount(l3);
              f2 = f3;
              if (k != 0) {
                break label1395;
              }
              f1 = f3;
              if ((1L & l3) != 0L)
              {
                f1 = f3;
                if (!((j)getChildAt(0).getLayoutParams()).e) {
                  f1 = f3 - 0.5F;
                }
              }
              f2 = f1;
              if ((1 << i12 - 1 & l3) == 0L) {
                break label1395;
              }
              f2 = f1;
              if (((j)getChildAt(i12 - 1).getLayoutParams()).e) {
                break label1395;
              }
              f1 -= 0.5F;
              if (f1 <= 0.0F) {
                break label1153;
              }
              j = (int)(j * i11 / f1);
              k = 0;
              if (k >= i12) {
                break label1230;
              }
              if ((1 << k & l3) == 0L) {
                break label1227;
              }
              localObject = getChildAt(k);
              localj = (j)((View)localObject).getLayoutParams();
              if (!(localObject instanceof ActionMenuItemView)) {
                break label1159;
              }
              localj.c = j;
              localj.f = true;
              if ((k == 0) && (!localj.e)) {
                localj.leftMargin = (-j / 2);
              }
              paramInt1 = 1;
            }
            for (;;)
            {
              k += 1;
              break label1054;
              k = 0;
              break;
              j = 0;
              break label1051;
              if (localj.a)
              {
                localj.c = j;
                localj.f = true;
                localj.rightMargin = (-j / 2);
                paramInt1 = 1;
              }
              else
              {
                if (k != 0) {
                  localj.leftMargin = (j / 2);
                }
                if (k != i12 - 1) {
                  localj.rightMargin = (j / 2);
                }
              }
            }
            j = 0;
            for (;;)
            {
              if (paramInt1 != 0)
              {
                paramInt1 = 0;
                while (paramInt1 < i12)
                {
                  localObject = getChildAt(paramInt1);
                  localj = (j)((View)localObject).getLayoutParams();
                  if (localj.f)
                  {
                    k = localj.b;
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(localj.c + k * i11, 1073741824), i4);
                  }
                  paramInt1 += 1;
                }
              }
              if (i9 != 1073741824) {}
              for (;;)
              {
                setMeasuredDimension(i10, paramInt2);
                this.h = (j * i11);
                return;
                k = getChildCount();
                j = 0;
                while (j < k)
                {
                  localObject = (j)getChildAt(j).getLayoutParams();
                  ((j)localObject).rightMargin = 0;
                  ((j)localObject).leftMargin = 0;
                  j += 1;
                }
                super.onMeasure(paramInt1, paramInt2);
                return;
                paramInt2 = i8;
              }
              f1 = f2;
              break;
            }
          }
        }
        else
        {
          label1407:
          i7 = k;
          k = m;
          m = i7;
        }
      }
      label1422:
      n = i2;
      i2 = paramInt2;
      paramInt2 = i3;
      i3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = n;
      i1 = j;
      n = k;
      j = i2;
      k = i3;
      continue;
      label1459:
      k = n;
      break label436;
      label1466:
      j = i1;
      break label425;
      label1473:
      j = paramInt2;
      k = paramInt1;
      paramInt2 = i2;
      paramInt1 = i3;
    }
  }
  
  public void setOverflowReserved(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void setPresenter(c paramc)
  {
    this.c = paramc;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\ActionMenuView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */