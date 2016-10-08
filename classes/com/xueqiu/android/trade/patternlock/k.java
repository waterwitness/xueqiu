package com.xueqiu.android.trade.patternlock;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.TextView;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.aa;
import java.util.ArrayList;
import java.util.List;

public final class k
  extends a
  implements i
{
  private Handler c;
  private Runnable d;
  private int e;
  private List<f> f;
  private n g;
  
  private void a(n paramn)
  {
    this.g = paramn;
    if ((this.c != null) && (this.d != null))
    {
      this.c.removeCallbacks(this.d);
      this.c = null;
      a(n.a);
    }
    if (this.g == n.b)
    {
      this.a.setText(a(this.g.f, new Object[] { Integer.valueOf(this.e) }));
      label84:
      if ((this.g != n.b) && (this.g != n.d)) {
        break label230;
      }
      this.a.setTextColor(h().getColor(2131558626));
    }
    for (;;)
    {
      this.b.setInputEnabled(this.g.i);
      switch (2.a[this.g.ordinal()])
      {
      default: 
        return;
        if ((this.g == n.a) && (d.b(g())))
        {
          this.a.setText(2131165829);
          break label84;
        }
        this.a.setText(this.g.f);
        break label84;
        label230:
        this.a.setTextColor(h().getColor(2131558524));
      }
    }
    this.b.a();
    return;
    this.b.setDisplayMode(h.c);
    u();
    return;
    this.b.a();
    return;
    this.b.setDisplayMode(h.c);
    u();
    this.c = new Handler();
    this.d = new Runnable()
    {
      public final void run()
      {
        k.a(k.this, n.a);
      }
    };
    this.c.postDelayed(this.d, 1500L);
    return;
    paramn = this.f;
    android.support.v4.a.k localk = g();
    DefaultPrefs.putString("pref_key_pattern_sha1", e.b(paramn), localk);
    aa.a("设置成功");
    g().setResult(-1);
    g().finish();
  }
  
  public static k v()
  {
    return new k();
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.e = 4;
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.b.setOnPatternListener(this);
    paramView.findViewById(2131624127).setVisibility(4);
    if (paramBundle == null)
    {
      a(n.a);
      return;
    }
    paramView = paramBundle.getString("pattern");
    if (paramView != null) {
      this.f = e.a(paramView);
    }
    a(n.values()[paramBundle.getInt("stage")]);
  }
  
  public final void a(List<f> paramList)
  {
    switch (2.a[this.g.ordinal()])
    {
    default: 
      throw new IllegalStateException("Unexpected stage " + this.g + " when entering the pattern.");
    case 1: 
    case 2: 
      if (paramList.size() < this.e)
      {
        a(n.b);
        return;
      }
      this.f = new ArrayList(paramList);
      a(n.c);
      return;
    }
    if (paramList.equals(this.f))
    {
      a(n.e);
      return;
    }
    a(n.d);
  }
  
  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    paramBundle.putInt("stage", this.g.ordinal());
    if (this.f != null) {
      paramBundle.putString("pattern", e.a(this.f));
    }
  }
  
  public final void w()
  {
    b();
    this.a.setText(2131165832);
    this.b.setDisplayMode(h.a);
  }
  
  public final void x()
  {
    b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */