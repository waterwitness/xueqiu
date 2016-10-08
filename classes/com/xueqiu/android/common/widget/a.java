package com.xueqiu.android.common.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public final class a
  extends Dialog
{
  public b a;
  private EditText b;
  private EditText c;
  private TextView d;
  private TextView e;
  
  public a(Context paramContext)
  {
    super(paramContext);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    setContentView(2130903130);
    this.d = ((TextView)findViewById(2131624386));
    this.e = ((TextView)findViewById(2131624387));
    this.b = ((EditText)findViewById(2131624383));
    this.c = ((EditText)findViewById(2131624384));
    this.d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.this.dismiss();
      }
    });
    this.e.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = a.a(a.this).getText().toString().trim();
        String str = a.b(a.this).getText().toString().trim();
        if ((TextUtils.isEmpty(paramAnonymousView)) || (TextUtils.isEmpty(str)) || (!paramAnonymousView.matches("((?:ftp://|https://|http://|www\\.)[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*\\.[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*?(?=(\\/\\/[@＠][\\u4E00-\\u9FFFa-zA-Z0-9_-]+( )?)|[^a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;]|(&nbsp;)|$))"))) {
          Toast.makeText(a.this.getContext(), "格式不正确", 0).show();
        }
        while (a.c(a.this) == null) {
          return;
        }
        a.c(a.this).a(paramAnonymousView, str);
      }
    });
    setCanceledOnTouchOutside(false);
    this.b.requestFocus();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */