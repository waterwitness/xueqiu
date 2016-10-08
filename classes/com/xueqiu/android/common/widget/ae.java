package com.xueqiu.android.common.widget;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;

public final class ae
  extends Dialog
{
  public ae(Context paramContext)
  {
    this(paramContext, paramContext.getString(2131165947));
  }
  
  public ae(Context paramContext, String paramString)
  {
    super(paramContext);
    requestWindowFeature(1);
    aa.a();
    setContentView(2130903586);
    paramContext = getWindow();
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    localLayoutParams.copyFrom(paramContext.getAttributes());
    localLayoutParams.height = -1;
    localLayoutParams.width = -1;
    localLayoutParams.gravity = 17;
    paramContext.setAttributes(localLayoutParams);
    paramContext.addFlags(2);
    paramContext.setBackgroundDrawable(new ColorDrawable(Color.argb(0, 0, 0, 0)));
    ((TextView)findViewById(2131625835)).setText(paramString);
    paramContext = findViewById(2131625843);
    paramString = (LinearLayout.LayoutParams)paramContext.getLayoutParams();
    paramString.bottomMargin = ((int)(ay.e(getContext()) * 0.1F));
    paramContext.setLayoutParams(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */