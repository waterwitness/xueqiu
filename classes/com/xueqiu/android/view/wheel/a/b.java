package com.xueqiu.android.view.wheel.a;

import android.content.Context;
import android.graphics.Typeface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public abstract class b
  extends a
{
  private int a = -15724528;
  private int b = 24;
  protected Context c;
  protected LayoutInflater d;
  protected int e;
  protected int f;
  protected int g;
  
  public b(Context paramContext)
  {
    this.c = paramContext;
    this.e = 2130903256;
    this.f = 0;
    this.d = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  private View a(int paramInt, ViewGroup paramViewGroup)
  {
    switch (paramInt)
    {
    default: 
      return this.d.inflate(paramInt, paramViewGroup, false);
    case 0: 
      return null;
    }
    return new TextView(this.c);
  }
  
  private static TextView a(View paramView, int paramInt)
  {
    if (paramInt == 0) {}
    try
    {
      if ((paramView instanceof TextView)) {
        return (TextView)paramView;
      }
      if (paramInt != 0)
      {
        paramView = (TextView)paramView.findViewById(paramInt);
        return paramView;
      }
    }
    catch (ClassCastException paramView)
    {
      Log.e("AbstractWheelAdapter", "You must supply a resource ID for a TextView");
      throw new IllegalStateException("AbstractWheelAdapter requires the resource ID to be a TextView", paramView);
    }
    return null;
  }
  
  private void a(TextView paramTextView)
  {
    paramTextView.setTextColor(this.a);
    paramTextView.setGravity(17);
    paramTextView.setTextSize(this.b);
    paramTextView.setLines(1);
    paramTextView.setTypeface(Typeface.SANS_SERIF, 1);
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramInt >= 0) && (paramInt < a()))
    {
      View localView = paramView;
      if (paramView == null) {
        localView = a(this.e, paramViewGroup);
      }
      TextView localTextView = a(localView, this.f);
      if (localTextView != null)
      {
        paramViewGroup = a(paramInt);
        paramView = paramViewGroup;
        if (paramViewGroup == null) {
          paramView = "";
        }
        localTextView.setText(paramView);
        if (this.e == -1) {
          a(localTextView);
        }
      }
      return localView;
    }
    return null;
  }
  
  public final View a(View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a(this.g, paramViewGroup);
    }
    for (;;)
    {
      if ((this.g == -1) && ((paramView instanceof TextView))) {
        a((TextView)paramView);
      }
      return paramView;
    }
  }
  
  public abstract CharSequence a(int paramInt);
  
  public final void b()
  {
    this.f = 2131624793;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\view\wheel\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */