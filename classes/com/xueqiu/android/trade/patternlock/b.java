package com.xueqiu.android.trade.patternlock;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.k;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.common.account.LoginActivity;
import java.util.List;

public final class b
  extends a
  implements i
{
  protected int c;
  public c d = null;
  
  public static b v()
  {
    return new b();
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (paramBundle == null)
    {
      this.c = 0;
      return;
    }
    this.c = paramBundle.getInt("num_failed_attempts");
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (this.r != null)
    {
      paramBundle = this.r.getString("arg_desc");
      this.a.setText(paramBundle);
    }
    for (;;)
    {
      this.b.setInStealthMode(false);
      this.b.setOnPatternListener(this);
      paramView.findViewById(2131624127).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          b.a(b.this);
        }
      });
      return;
      this.a.setText(2131165828);
    }
  }
  
  public final void a(List<f> paramList)
  {
    boolean bool = true;
    k localk = g();
    if (TextUtils.equals(e.b(paramList), d.a(localk))) {
      if (this.d != null) {
        this.d.a();
      }
    }
    do
    {
      return;
      this.b.setDisplayMode(h.c);
      u();
      this.c += 1;
      this.a.setText(a(2131165823, new Object[] { Integer.valueOf(5 - this.c) }));
      this.a.setTextColor(h().getColor(2131558684));
    } while (this.d == null);
    paramList = this.d;
    if (this.c < 5) {}
    for (;;)
    {
      paramList.a(bool);
      return;
      bool = false;
    }
  }
  
  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    paramBundle.putInt("num_failed_attempts", this.c);
  }
  
  public final void w()
  {
    b();
    this.b.setDisplayMode(h.a);
  }
  
  public final void x()
  {
    b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */