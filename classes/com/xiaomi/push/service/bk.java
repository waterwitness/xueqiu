package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.a.a.d.d;
import com.xiaomi.d.i;
import com.xiaomi.f.g;
import com.xiaomi.f.j;
import com.xiaomi.push.d.a;
import java.io.IOException;
import java.util.ArrayList;

final class bk
  extends i
{
  protected bk(Context paramContext, com.xiaomi.d.h paramh, String paramString)
  {
    super(paramContext, paramh, paramString);
  }
  
  protected final String a(ArrayList<String> paramArrayList, String paramString1, String paramString2)
  {
    try
    {
      if (com.xiaomi.f.h.a.a) {
        paramString2 = com.xiaomi.e.e.h.a();
      }
      paramArrayList = super.a(paramArrayList, paramString1, paramString2);
      return paramArrayList;
    }
    catch (IOException paramArrayList)
    {
      if (!d.a(this.c)) {}
    }
    for (int i = 1;; i = 0)
    {
      j.b(a.q.ac, null, i);
      throw paramArrayList;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\bk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */