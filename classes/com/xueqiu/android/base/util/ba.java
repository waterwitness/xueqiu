package com.xueqiu.android.base.util;

import android.graphics.drawable.Drawable;
import android.widget.TextView;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.g;
import com.xueqiu.android.common.h;
import com.xueqiu.android.community.model.User;

public final class ba
{
  public static Drawable a(User paramUser)
  {
    paramUser = paramUser.getVerifyType();
    switch (2.a[paramUser.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return r.h(2130838152);
    case 2: 
      return r.h(2130838149);
    case 3: 
      return r.h(2130838148);
    case 4: 
      return r.h(2130838146);
    case 5: 
      return r.h(2130838147);
    }
    return r.h(2130838151);
  }
  
  public static void a(b paramb, final bb parambb)
  {
    paramb = new g(paramb);
    paramb.b.setText("向我提问需支付");
    paramb.c.setText("取消");
    paramb.d.setText("确认");
    paramb.a = new h()
    {
      public final void a()
      {
        ba.this.dismiss();
      }
      
      public final void a(String paramAnonymousString)
      {
        if (paramAnonymousString.matches("^[0-9]+(\\.[0-9]{0,2})?$"))
        {
          double d = Double.parseDouble(paramAnonymousString);
          parambb.a(Double.valueOf(d).doubleValue());
          ba.this.dismiss();
        }
      }
      
      public final boolean b(String paramAnonymousString)
      {
        boolean bool2 = false;
        boolean bool1 = bool2;
        if (paramAnonymousString.matches("^[0-9]+(\\.[0-9]{0,2})?$"))
        {
          double d = Double.parseDouble(paramAnonymousString);
          bool1 = bool2;
          if (d >= 1.0D)
          {
            bool1 = bool2;
            if (d <= 10000.0D) {
              bool1 = true;
            }
          }
        }
        return bool1;
      }
      
      public final boolean c(String paramAnonymousString)
      {
        if (paramAnonymousString.contains(".")) {
          paramAnonymousString = paramAnonymousString.split("\\.");
        }
        return (paramAnonymousString.length == 1) || ((paramAnonymousString.length == 2) && (paramAnonymousString[1].length() <= 2));
      }
    };
    paramb.show();
  }
  
  public static String b(User paramUser)
  {
    long l = paramUser.getUserId();
    u.a();
    if (l == UserLogonDataPrefs.getLogonUserId()) {}
    for (int i = 1; i != 0; i = 0) {
      return "我";
    }
    if (paramUser.isMale()) {
      return "他";
    }
    if (paramUser.isFemale()) {
      return "她";
    }
    return "ta";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */