package com.tencent.bugly.crashreport.biz;

import com.tencent.bugly.proguard.v;

final class d
  implements Runnable
{
  d(a parama) {}
  
  public final void run()
  {
    long l = System.currentTimeMillis();
    if (l < a.a(this.a))
    {
      v.a().a(new d(this.a), a.a(this.a) - l + 5000L);
      return;
    }
    a.b(this.a);
    this.a.a(3, false, 0L);
    this.a.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\biz\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */