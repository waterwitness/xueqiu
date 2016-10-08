package com.xiaomi.push.service;

import android.text.TextUtils;

final class c
  extends f
{
  private final bd a;
  
  public c(bd parambd)
  {
    super(12);
    this.a = parambd;
  }
  
  public final void a()
  {
    this.a.a(bf.a, 1, 21, null, null);
  }
  
  public final String b()
  {
    return "bind time out. chid=" + this.a.h;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c)) {
      return false;
    }
    return TextUtils.equals(((c)paramObject).a.h, this.a.h);
  }
  
  public final int hashCode()
  {
    return this.a.h.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */