package com.xueqiu.android.base;

import android.os.Bundle;
import com.xueqiu.android.common.b;

public abstract class j<T extends c>
  extends b
{
  public T j;
  public boolean k = false;
  private boolean p = false;
  
  public abstract T d();
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (this.j != null) {
      this.j.b();
    }
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  public void onRestart()
  {
    super.onRestart();
    this.k = true;
    if (this.p) {
      this.j.a();
    }
  }
  
  public void onResume()
  {
    super.onResume();
  }
  
  public void onStart()
  {
    super.onStart();
    if (!this.k)
    {
      this.j = d();
      this.j.a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */