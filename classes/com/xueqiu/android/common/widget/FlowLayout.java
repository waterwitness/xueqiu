package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;
import java.util.List;

public class FlowLayout
  extends ViewGroup
{
  private List<List<View>> a = new ArrayList();
  private List<Integer> b = new ArrayList();
  private List<Integer> c = new ArrayList();
  
  public FlowLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FlowLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a.clear();
    this.b.clear();
    this.c.clear();
    int m = getWidth();
    paramInt3 = 0;
    paramInt2 = 0;
    paramInt1 = 0;
    Object localObject1 = new ArrayList();
    int n = getChildCount();
    paramInt4 = 0;
    Object localObject3;
    Object localObject2;
    int j;
    int k;
    while (paramInt4 < n)
    {
      localObject3 = getChildAt(paramInt4);
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)((View)localObject3).getLayoutParams();
      int i2 = ((View)localObject3).getMeasuredWidth();
      int i1 = ((View)localObject3).getMeasuredHeight();
      if (i2 + paramInt3 + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin <= m)
      {
        localObject2 = localObject1;
        i = paramInt1;
        j = paramInt2;
        k = paramInt3;
        if (paramInt1 < 2) {}
      }
      else
      {
        this.b.add(Integer.valueOf(paramInt2));
        this.c.add(Integer.valueOf(paramInt3));
        this.a.add(localObject1);
        k = 0;
        j = localMarginLayoutParams.topMargin + i1 + localMarginLayoutParams.bottomMargin;
        localObject2 = new ArrayList();
        i = 0;
      }
      paramInt3 = k + (i2 + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin);
      paramInt1 = localMarginLayoutParams.topMargin;
      paramInt2 = Math.max(j, localMarginLayoutParams.bottomMargin + (paramInt1 + i1));
      ((List)localObject2).add(localObject3);
      paramInt1 = i + 1;
      paramInt4 += 1;
      localObject1 = localObject2;
    }
    this.b.add(Integer.valueOf(paramInt2));
    this.c.add(Integer.valueOf(paramInt3));
    this.a.add(localObject1);
    int i = this.a.size();
    paramInt3 = 0;
    paramInt2 = 0;
    if (paramInt3 < i)
    {
      localObject1 = (List)this.a.get(paramInt3);
      j = ((Integer)this.b.get(paramInt3)).intValue();
      paramInt1 = (m - ((Integer)this.c.get(paramInt3)).intValue()) / 2;
      paramInt4 = 0;
      label404:
      if (paramInt4 < ((List)localObject1).size())
      {
        localObject2 = (View)((List)localObject1).get(paramInt4);
        if (((View)localObject2).getVisibility() == 8) {
          break label537;
        }
        localObject3 = (ViewGroup.MarginLayoutParams)((View)localObject2).getLayoutParams();
        k = ((ViewGroup.MarginLayoutParams)localObject3).leftMargin + paramInt1;
        n = ((ViewGroup.MarginLayoutParams)localObject3).topMargin + paramInt2;
        ((View)localObject2).layout(k, n, ((View)localObject2).getMeasuredWidth() + k, ((View)localObject2).getMeasuredHeight() + n);
        paramInt1 = ((View)localObject2).getMeasuredWidth() + ((ViewGroup.MarginLayoutParams)localObject3).leftMargin + ((ViewGroup.MarginLayoutParams)localObject3).rightMargin + paramInt1;
      }
    }
    label537:
    for (;;)
    {
      paramInt4 += 1;
      break label404;
      paramInt3 += 1;
      paramInt2 += j;
      break;
      return;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i5 = View.MeasureSpec.getSize(paramInt1);
    int i8 = View.MeasureSpec.getMode(paramInt1);
    int i4 = View.MeasureSpec.getSize(paramInt2);
    int i7 = View.MeasureSpec.getMode(paramInt2);
    int i = 0;
    int i9 = getChildCount();
    int k = 0;
    int m = 0;
    int n = 0;
    int j = 0;
    int i3 = 0;
    if (i3 < i9)
    {
      View localView = getChildAt(i3);
      measureChild(localView, paramInt1, paramInt2);
      ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)getLayoutParams();
      int i6 = localView.getMeasuredWidth() + localMarginLayoutParams.leftMargin + localMarginLayoutParams.rightMargin;
      int i1 = localView.getMeasuredHeight() + localMarginLayoutParams.topMargin + localMarginLayoutParams.bottomMargin;
      int i2;
      if ((n + i6 > i5) || (k >= 2))
      {
        i2 = Math.max(j, n);
        m = i + m;
        k = 0;
        i = i6;
        j = i1;
      }
      for (;;)
      {
        n = m;
        i1 = i2;
        if (i3 == i9 - 1)
        {
          i1 = Math.max(i2, i);
          n = m + j;
        }
        i3 += 1;
        m = j;
        i2 = i;
        j = i1;
        i = n;
        n = i2;
        break;
        n = i6 + n;
        i1 = Math.max(m, i1);
        k += 1;
        m = i;
        i2 = j;
        j = i1;
        i = n;
      }
    }
    if (i8 == 1073741824)
    {
      j = i5;
      if (i7 != 1073741824) {
        break label300;
      }
      i = i4;
    }
    label300:
    for (;;)
    {
      setMeasuredDimension(j, i);
      super.onMeasure(paramInt1, paramInt2);
      return;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\FlowLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */