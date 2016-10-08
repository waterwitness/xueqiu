package com.xiaomi.e;

import android.text.TextUtils;
import com.xiaomi.e.c.e;
import com.xiaomi.e.e.k;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

final class j
{
  Writer a;
  p b;
  
  protected j(p paramp)
  {
    this.b = paramp;
    this.a = paramp.k;
  }
  
  final void a()
  {
    this.b.h.clear();
  }
  
  public final void a(e parame)
  {
    synchronized (this.a)
    {
      try
      {
        String str1 = parame.a();
        this.a.write(str1 + "\r\n");
        this.a.flush();
        String str2 = parame.u;
        if (!TextUtils.isEmpty(str2)) {
          k.a(this.b.p, str2, k.a(str1), false, System.currentTimeMillis());
        }
        this.b.b(parame);
        return;
      }
      catch (IOException parame)
      {
        throw new t(parame);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */