package com.xueqiu.android.base.util;

import android.content.Context;
import com.xueqiu.android.base.b.s;
import com.xueqiu.android.cube.model.Cube;
import rx.h.p;

public final class f
{
  public static void a(Cube paramCube, final com.xueqiu.android.common.b paramb, final g paramg, final boolean paramBoolean)
  {
    final Context localContext = paramb.getBaseContext();
    rx.a locala;
    boolean bool;
    if (paramCube.isFollowing())
    {
      locala = s.b(com.xueqiu.android.common.b.g(), paramCube.getSymbol());
      if (paramCube.isFollowing()) {
        break label124;
      }
      bool = true;
      label35:
      paramCube.setFollowing(bool);
      if (!paramCube.isFollowing()) {
        break label130;
      }
      paramCube.setFollowerCount(paramCube.getFollowerCount() + 1);
    }
    for (;;)
    {
      paramb.a(locala.a(rx.a.d.a.a()).b(p.c()).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {}));
      paramg.a(paramCube);
      return;
      locala = s.a(com.xueqiu.android.common.b.g(), paramCube.getSymbol());
      break;
      label124:
      bool = false;
      break label35;
      label130:
      paramCube.setFollowerCount(Math.max(0, paramCube.getFollowerCount() - 1));
    }
  }
  
  public static boolean a(String paramString)
  {
    return (paramString != null) && (paramString.toLowerCase().startsWith("sp"));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */