package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.xueqiu.android.base.util.v;
import java.util.ArrayList;
import java.util.List;

public class CommonFlowLayout
  extends ViewGroup
{
  private static final String a = CommonFlowLayout.class.getSimpleName();
  private List<List<View>> b = new ArrayList();
  private List<Integer> c = new ArrayList();
  
  public CommonFlowLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CommonFlowLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CommonFlowLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.b.clear();
    this.c.clear();
    int j = getWidth();
    paramInt2 = 0;
    paramInt1 = 0;
    Object localObject1 = new ArrayList();
    int k = getChildCount();
    paramInt3 = 0;
    Object localObject3;
    int n;
    int m;
    Object localObject2;
    int i;
    while (paramInt3 < k)
    {
      localObject3 = getChildAt(paramInt3);
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)((View)localObject3).getLayoutParams();
      v.a(a, "onLayout lp.leftMargin = " + localMarginLayoutParams.leftMargin + " lp.rightMargin = " + localMarginLayoutParams.rightMargin);
      n = ((View)localObject3).getMeasuredWidth();
      m = ((View)localObject3).getMeasuredHeight();
      localObject2 = localObject1;
      paramInt4 = paramInt1;
      i = paramInt2;
      if (n + paramInt2 + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin > j)
      {
        this.c.add(Integer.valueOf(paramInt1));
        this.b.add(localObject1);
        i = 0;
        paramInt1 = localMarginLayoutParams.topMargin;
        paramInt4 = localMarginLayoutParams.bottomMargin + (paramInt1 + m);
        localObject2 = new ArrayList();
      }
      paramInt2 = i + (n + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin);
      paramInt1 = localMarginLayoutParams.topMargin;
      paramInt1 = Math.max(paramInt4, localMarginLayoutParams.bottomMargin + (paramInt1 + m));
      ((List)localObject2).add(localObject3);
      paramInt3 += 1;
      localObject1 = localObject2;
    }
    this.c.add(Integer.valueOf(paramInt1));
    this.b.add(localObject1);
    paramInt2 = this.b.size();
    if (paramInt2 >= 2) {
      paramInt2 = 2;
    }
    for (;;)
    {
      paramInt4 = 0;
      paramInt3 = 0;
      paramInt1 = 0;
      if (paramInt4 < paramInt2)
      {
        localObject1 = (List)this.b.get(paramInt4);
        j = ((Integer)this.c.get(paramInt4)).intValue();
        i = 0;
        label369:
        if (i < ((List)localObject1).size())
        {
          localObject2 = (View)((List)localObject1).get(i);
          if (((View)localObject2).getVisibility() == 8) {
            break label566;
          }
          localObject3 = (ViewGroup.MarginLayoutParams)((View)localObject2).getLayoutParams();
          k = ((ViewGroup.MarginLayoutParams)localObject3).leftMargin + paramInt1;
          m = ((ViewGroup.MarginLayoutParams)localObject3).topMargin + paramInt3;
          n = ((View)localObject2).getMeasuredWidth() + k;
          int i1 = ((View)localObject2).getMeasuredHeight() + m;
          ((View)localObject2).layout(k, m, n, i1);
          v.a(a, "onLayout cLeft = " + k + " cTop = " + m + " cRight = " + n + " cBottom = " + i1);
          paramInt1 = ((View)localObject2).getMeasuredWidth() + ((ViewGroup.MarginLayoutParams)localObject3).leftMargin + ((ViewGroup.MarginLayoutParams)localObject3).rightMargin + paramInt1;
        }
      }
      label566:
      for (;;)
      {
        i += 1;
        break label369;
        paramInt4 += 1;
        paramInt3 += j;
        break;
        return;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i5 = View.MeasureSpec.getSize(paramInt1);
    int i7 = View.MeasureSpec.getMode(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    int i8 = View.MeasureSpec.getMode(paramInt2);
    v.a(a, "onMeasure sizeHeight = " + i4 + "sizeWidth = " + i5);
    int i = 0;
    int i9 = getChildCount();
    if (i9 > 0) {
      i = 1;
    }
    int i3 = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int j = 0;
    int k = i;
    i = i1;
    int i2;
    int i6;
    if (i3 < i9)
    {
      View localView = getChildAt(i3);
      measureChild(localView, paramInt1, paramInt2);
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)localView.getLayoutParams();
      i1 = localView.getMeasuredWidth();
      i2 = localMarginLayoutParams.leftMargin;
      i2 = localMarginLayoutParams.rightMargin + (i1 + i2);
      i6 = localView.getMeasuredHeight() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin;
      v.a(a, "onMeasure childWidth = " + i2 + " childHeight = " + i6 + " lp.leftMargin = " + localMarginLayoutParams.leftMargin + " lp.rightMargin = " + localMarginLayoutParams.rightMargin + " lp.topMargin = " + localMarginLayoutParams.topMargin + " lp.bottomMargin = " + localMarginLayoutParams.bottomMargin + " child.getMeasuredWidth = " + localView.getMeasuredWidth() + " child.getMeasuredHeight = " + localView.getMeasuredHeight());
      if (n + i2 > i5)
      {
        i1 = k + 1;
        if (i1 > 2)
        {
          j = Math.max(j, n);
          k = i + m;
          i = j;
          j = k;
        }
      }
    }
    for (;;)
    {
      v.a(a, "onMeasure width = " + i + " height = " + j + " modeWidth = " + i7 + " modeHeight = " + i8);
      if (i7 == 1073741824)
      {
        v.a(a, "modeWidth = MeasureSpec.EXACTLY");
        label394:
        if (i8 != 1073741824) {
          break label644;
        }
        v.a(a, "modeHeight = MeasureSpec.EXACTLY");
        label409:
        if (i7 != 1073741824) {
          break label671;
        }
        k = i5;
        label420:
        if (i8 != 1073741824) {
          break label678;
        }
      }
      label644:
      label671:
      label678:
      for (m = i4;; m = j)
      {
        setMeasuredDimension(k, m);
        if (i8 != 1073741824) {
          paramInt2 = View.MeasureSpec.makeMeasureSpec(j, Integer.MIN_VALUE);
        }
        if (i7 != 1073741824) {
          paramInt1 = View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE);
        }
        super.onMeasure(paramInt1, paramInt2);
        return;
        n = Math.max(j, n);
        k = i6;
        j = i2;
        m = i + m;
        i2 = n;
        i = i1;
        for (;;)
        {
          n = m;
          i1 = i2;
          if (i3 == i9 - 1)
          {
            i1 = Math.max(i2, j);
            n = m + k;
          }
          i3 += 1;
          m = k;
          i2 = j;
          k = i;
          j = i1;
          i = n;
          n = i2;
          break;
          m = Math.max(m, i6);
          i1 = i2 + n;
          n = m;
          m = i;
          i2 = j;
          i = k;
          k = n;
          j = i1;
        }
        if (i7 == 0)
        {
          v.a(a, "modeWidth = MeasureSpec.UNSPECIFIED");
          break label394;
        }
        v.a(a, "modeWidth = MeasureSpec.AT_MOST");
        break label394;
        if (i8 == 0)
        {
          v.a(a, "modeHeight = MeasureSpec.UNSPECIFIED");
          break label409;
        }
        v.a(a, "modeHeight = MeasureSpec.AT_MOST");
        break label409;
        k = i;
        break label420;
      }
      k = j;
      j = i;
      i = k;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\CommonFlowLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */