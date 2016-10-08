package com.xueqiu.android.common.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.TextView;

public final class ap
  extends Dialog
{
  public aq a;
  private TextView b;
  
  public ap(Context paramContext)
  {
    super(paramContext);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    setContentView(2130903500);
    this.b = ((TextView)findViewById(2131625557));
    this.b.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (ap.a(ap.this) != null) {
          ap.a(ap.this).a();
        }
      }
    });
    setCanceledOnTouchOutside(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */