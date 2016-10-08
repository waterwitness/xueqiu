package com.xueqiu.android.common.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.webkit.WebView;
import android.widget.CheckBox;
import android.widget.TextView;
import com.xueqiu.android.base.r;

public class z
  extends Dialog
{
  private static final String b = z.class.getSimpleName();
  public aa a;
  private TextView c;
  private TextView d;
  private CheckBox e;
  private WebView f;
  
  public z(Context paramContext)
  {
    super(paramContext);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    setContentView(2130903480);
    this.c = ((TextView)findViewById(2131625557));
    this.d = ((TextView)findViewById(2131624165));
    this.e = ((CheckBox)findViewById(2131624099));
    this.f = ((WebView)findViewById(2131625559));
    this.f.setWebViewClient(new ab(this, (byte)0));
    this.f.loadUrl("http://xueqiu.com/f/subscribe-confirm/app");
    this.c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (z.a(z.this) != null) {
          z.a(z.this).a();
        }
      }
    });
    this.d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (z.a(z.this) != null) {
          z.a(z.this).b();
        }
      }
    });
    this.e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (z.b(z.this).isChecked())
        {
          z.c(z.this).setTextColor(r.a(2131558594));
          z.c(z.this).setClickable(true);
          return;
        }
        z.c(z.this).setTextColor(r.a(2131558536));
        z.c(z.this).setClickable(false);
      }
    });
    setCanceledOnTouchOutside(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */