package com.pingan.b.c;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

public final class l
{
  final Map<String, String> a = new HashMap();
  final i b;
  final g c;
  
  public l(i parami, g paramg)
  {
    if (parami != null)
    {
      this.b = parami;
      if (paramg == null) {
        break label46;
      }
    }
    for (;;)
    {
      this.c = paramg;
      return;
      parami = new i()
      {
        public final void a(String paramAnonymousString, double paramAnonymousDouble)
        {
          Log.d("up progress", String.valueOf(paramAnonymousDouble));
        }
      };
      break;
      label46:
      paramg = new g()
      {
        public final boolean a()
        {
          return false;
        }
      };
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\c\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */