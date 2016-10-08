package com.xueqiu.android.trade.patternlock;

import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class a
  extends i
{
  protected TextView a;
  protected PatternView b;
  private View c;
  private final Runnable d = new Runnable()
  {
    public final void run()
    {
      a.this.b.a();
    }
  };
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.c = paramLayoutInflater.inflate(2130903381, paramViewGroup, false);
    this.a = ((TextView)this.c.findViewById(2131625257));
    this.b = ((PatternView)this.c.findViewById(2131625258));
    return this.c;
  }
  
  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
  
  protected final void b()
  {
    this.b.removeCallbacks(this.d);
  }
  
  protected final void u()
  {
    b();
    this.b.postDelayed(this.d, 1500L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */