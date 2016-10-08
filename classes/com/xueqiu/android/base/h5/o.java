package com.xueqiu.android.base.h5;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

public final class o
{
  private static int a = 1;
  private boolean b = false;
  private boolean c = false;
  private Handler d = null;
  private View e = null;
  private WebView f = null;
  
  public o(WebView paramWebView, View paramView)
  {
    this.f = paramWebView;
    this.d = new Handler()
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        if (paramAnonymousMessage.what == o.d()) {
          o.f(o.this).setVisibility(8);
        }
      }
    };
    this.e = paramView;
    this.e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (!o.a(o.this)) {
          return;
        }
        o.b(o.this);
        o.c(o.this).reload();
        o.d(o.this);
        o.e(o.this);
      }
    });
  }
  
  public final boolean a()
  {
    return (!this.b) && (this.c);
  }
  
  public final void b()
  {
    this.d.sendEmptyMessageDelayed(a, 200L);
    this.c = false;
  }
  
  public final void c()
  {
    this.b = true;
    this.e.setVisibility(0);
    this.e.findViewById(2131624096).setVisibility(0);
    this.e.findViewById(2131624232).setVisibility(0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */