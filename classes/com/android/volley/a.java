package com.android.volley;

import android.content.Intent;

public final class a
  extends y
{
  private Intent b;
  
  public a() {}
  
  public a(k paramk)
  {
    super(paramk);
  }
  
  public final String getMessage()
  {
    if (this.b != null) {
      return "User needs to (re)enter credentials.";
    }
    return super.getMessage();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */