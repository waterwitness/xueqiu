package com.xiaomi.d;

import com.xiaomi.b.a.a.a.c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;

final class o
  implements n
{
  o(f paramf) {}
  
  public final List<c> a()
  {
    try
    {
      ArrayList localArrayList = this.a.j();
      return localArrayList;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public final double b()
  {
    b localb = this.a.b("f3.mi-stat.gslb.mi-idc.com");
    if ((localb == null) || (localb.k < 1.0E-5D)) {
      return 0.1D;
    }
    return localb.k;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */