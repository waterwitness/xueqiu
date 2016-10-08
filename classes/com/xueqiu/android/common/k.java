package com.xueqiu.android.common;

import android.app.Activity;
import android.view.View;
import java.util.HashMap;

public final class k
{
  HashMap<String, l> a = new HashMap();
  HashMap<String, View> b = new HashMap();
  Activity c;
  
  public k(Activity paramActivity)
  {
    this.c = paramActivity;
  }
  
  public final l a(String paramString)
  {
    return (l)this.a.get(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */