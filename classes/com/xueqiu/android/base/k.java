package com.xueqiu.android.base;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;

public abstract class k<T extends c>
  extends com.xueqiu.android.common.c
{
  public T a;
  
  public void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.a = b();
    this.a.a();
  }
  
  public abstract T b();
  
  public final void e()
  {
    super.e();
    if (this.a != null) {
      this.a.b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */