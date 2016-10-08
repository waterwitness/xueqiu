package com.xueqiu.android.cube;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.content.r;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public final class j
  extends i
{
  private BroadcastReceiver a = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      int i = paramAnonymousIntent.getIntExtra("extra_arena_rank_new_count", 0);
      paramAnonymousContext = (TextView)j.this.T.findViewById(2131625058);
      if (i > 0)
      {
        paramAnonymousContext.setText(String.format("%d个组合新入榜", new Object[] { Integer.valueOf(i) }));
        paramAnonymousContext.setVisibility(0);
        j.this.T.findViewById(2131625057).setVisibility(0);
        return;
      }
      paramAnonymousContext.setVisibility(8);
      j.this.T.findViewById(2131625057).setVisibility(8);
    }
  };
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903322, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    ((TextView)this.T.findViewById(2131625055)).setText(a(2131166323));
    ((TextView)this.T.findViewById(2131625056)).setText("组合综合实力秀");
    ((TextView)this.T.findViewById(2131625058)).setText(String.format("%d个组合新入榜", new Object[] { Integer.valueOf(5) }));
  }
  
  public final void o()
  {
    super.o();
    IntentFilter localIntentFilter = new IntentFilter("com.xueqiu.android.cube.toplist");
    r.a(g()).a(this.a, localIntentFilter);
  }
  
  public final void p()
  {
    super.p();
    r.a(g()).a(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */