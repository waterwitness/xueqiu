package com.tencent.bugly.crashreport.biz;

import com.tencent.bugly.proguard.w;

final class c
  implements Runnable
{
  private boolean a;
  private UserInfoBean b;
  
  public c(a parama, UserInfoBean paramUserInfoBean, boolean paramBoolean)
  {
    this.b = paramUserInfoBean;
    this.a = paramBoolean;
  }
  
  public final void run()
  {
    try
    {
      if (this.b != null)
      {
        UserInfoBean localUserInfoBean = this.b;
        if (localUserInfoBean != null)
        {
          com.tencent.bugly.crashreport.common.info.a locala = com.tencent.bugly.crashreport.common.info.a.a();
          if (locala != null) {
            localUserInfoBean.j = locala.d();
          }
        }
        w.c("record userinfo", new Object[0]);
        a.a(this.c, this.b);
      }
      if (this.a) {
        this.c.b();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      while (w.a(localThrowable)) {}
      localThrowable.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\biz\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */