package com.xueqiu.android.base.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.xueqiu.android.base.b;

public final class an
{
  static Toast a;
  private ImageView b;
  private TextView c;
  
  public an()
  {
    b.a();
    Object localObject = b.d();
    a();
    Toast localToast = new Toast((Context)localObject);
    a = localToast;
    localToast.setGravity(17, 0, (int)(-ay.e((Context)localObject) * 0.05F));
    localObject = LayoutInflater.from((Context)localObject).inflate(2130903593, null);
    this.b = ((ImageView)((View)localObject).findViewById(2131625854));
    this.c = ((TextView)((View)localObject).findViewById(2131625855));
    a.setView((View)localObject);
  }
  
  public static void a()
  {
    if ((a != null) && (a.getView().getWindowVisibility() == 0))
    {
      a.cancel();
      a = null;
    }
  }
  
  public final an a(int paramInt)
  {
    a.setDuration(paramInt);
    return this;
  }
  
  public final an a(CharSequence paramCharSequence)
  {
    this.c.setText(paramCharSequence);
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */