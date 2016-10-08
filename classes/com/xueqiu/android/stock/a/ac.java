package com.xueqiu.android.stock.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public abstract class ac
  extends a
{
  private final LayoutInflater a;
  public final Context b;
  
  public ac(Context paramContext)
  {
    this.b = paramContext;
    this.a = LayoutInflater.from(paramContext);
  }
  
  public final View a(int paramInt1, int paramInt2, ViewGroup paramViewGroup)
  {
    paramViewGroup = this.a.inflate(b(paramInt1, paramInt2), paramViewGroup, false);
    b(paramViewGroup, paramInt1, paramInt2);
    a(paramViewGroup, paramInt1, paramInt2);
    return paramViewGroup;
  }
  
  public abstract String a(int paramInt1, int paramInt2);
  
  public final void a(int paramInt1, int paramInt2, View paramView)
  {
    a(paramView, paramInt1, paramInt2);
    b(paramView, paramInt1, paramInt2);
  }
  
  public abstract void a(View paramView, int paramInt1, int paramInt2);
  
  public abstract int b(int paramInt1, int paramInt2);
  
  public void b(View paramView, int paramInt1, int paramInt2)
  {
    ((TextView)paramView.findViewById(16908308)).setText(a(paramInt1, paramInt2));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */