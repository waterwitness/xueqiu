package com.xueqiu.android.cube.b;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.aw;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import java.util.regex.Pattern;

public final class d
  extends com.xueqiu.android.common.c
{
  private String a;
  private e b;
  private EditText c;
  private TextView d;
  private TextView e;
  
  public static d b(String paramString)
  {
    d locald = new d();
    Bundle localBundle = new Bundle();
    localBundle.putString("name", paramString);
    locald.e(localBundle);
    return locald;
  }
  
  public final void F_()
  {
    super.F_();
    this.b = null;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e_(true);
    return paramLayoutInflater.inflate(2130903346, paramViewGroup, false);
  }
  
  public final void a(Activity paramActivity)
  {
    super.a(paramActivity);
    try
    {
      this.b = ((e)paramActivity);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramActivity.toString() + " must implement OnFragmentInteractionListener");
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null) {
      this.a = this.r.getString("name");
    }
  }
  
  public final void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131689475, paramMenu);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    this.c = ((EditText)paramView.findViewById(2131625164));
    this.d = ((TextView)paramView.findViewById(2131624097));
    this.e = ((TextView)paramView.findViewById(2131624534));
    this.e.setText(2131165533);
    this.d.setText(2131165755);
  }
  
  public final boolean a(MenuItem paramMenuItem)
  {
    int j = 0;
    if (paramMenuItem.getItemId() == 2131625863)
    {
      paramMenuItem = this.c.getText().toString();
      int i;
      if ((paramMenuItem == null) || (paramMenuItem.length() == 0))
      {
        aa.a(2131166233);
        i = j;
      }
      for (;;)
      {
        if (i != 0)
        {
          y();
          paramMenuItem = x();
          String str = this.c.getText().toString();
          p local1 = new p(this)
          {
            public final void a(y paramAnonymousy)
            {
              aa.a(paramAnonymousy, true);
              d.this.z();
            }
          };
          paramMenuItem.l.f(str, local1);
        }
        com.xueqiu.android.base.i.a().a(new SNBEvent(1409, 1));
        return true;
        if (aw.a(paramMenuItem) > 16) {}
        for (i = 2131166235;; i = 2131166236)
        {
          aa.a(i);
          i = j;
          break;
          if (aw.a(paramMenuItem) >= 4) {
            break label150;
          }
        }
        label150:
        if ((paramMenuItem != null) && (Pattern.matches("[a-zA-Z0-9一-龥_-]*", paramMenuItem))) {}
        for (i = 1;; i = 0)
        {
          if (i != 0) {
            break label184;
          }
          i = 2131166234;
          break;
        }
        label184:
        i = 1;
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */