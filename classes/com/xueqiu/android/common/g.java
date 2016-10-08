package com.xueqiu.android.common;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.xueqiu.android.base.r;

public final class g
  extends Dialog
{
  public h a;
  public TextView b;
  public TextView c;
  public TextView d;
  private EditText e;
  private TextWatcher f = new TextWatcher()
  {
    public final void afterTextChanged(Editable paramAnonymousEditable)
    {
      if (TextUtils.isEmpty(paramAnonymousEditable)) {}
      for (;;)
      {
        return;
        if ((g.a(g.this) != null) && (g.a(g.this).b(paramAnonymousEditable.toString().trim())))
        {
          g.b(g.this).setClickable(true);
          g.b(g.this).setTextColor(r.a(2131558418));
        }
        while ((g.a(g.this) != null) && (!g.a(g.this).c(paramAnonymousEditable.toString())))
        {
          g.c(g.this).getText().delete(paramAnonymousEditable.length() - 2, paramAnonymousEditable.length() - 1);
          return;
          g.b(g.this).setClickable(false);
          g.b(g.this).setTextColor(r.a(2131558536));
        }
      }
    }
    
    public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  public g(Context paramContext)
  {
    super(paramContext);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    setContentView(2130903421);
    this.b = ((TextView)findViewById(2131624382));
    this.c = ((TextView)findViewById(2131624386));
    this.d = ((TextView)findViewById(2131624387));
    this.e = ((EditText)findViewById(2131625355));
    this.c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (g.a(g.this) != null) {
          g.a(g.this).a();
        }
      }
    });
    this.d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (g.a(g.this) != null)
        {
          paramAnonymousView = g.c(g.this).getText().toString().trim();
          g.a(g.this).a(paramAnonymousView);
        }
      }
    });
    this.e.addTextChangedListener(this.f);
    setCanceledOnTouchOutside(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */