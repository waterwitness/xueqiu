package com.xueqiu.android.cube.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.cube.model.Industry;
import java.util.List;

public final class a
  extends com.xueqiu.android.common.c
{
  private ListView a;
  private b b;
  
  public static a u()
  {
    return new a();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903352, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    e_(true);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    d(2131165644);
    this.a = ((ListView)paramView.findViewById(2131625170));
    this.b = new b(this);
    this.a.setAdapter(this.b);
    y();
    paramView = x();
    paramBundle = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        a.this.z();
      }
    };
    paramView.l.a(paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */