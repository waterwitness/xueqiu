package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import com.xueqiu.android.base.b;

public final class ar
{
  public int a;
  private int b;
  private int c;
  
  public static ar a()
  {
    ar localar = new ar();
    b.a();
    Context localContext = b.d();
    if (PreferenceManager.getDefaultSharedPreferences(localContext).getString(localContext.getString(2131165678), localContext.getString(2131166576)).equals(localContext.getString(2131166576))) {
      localar.b = localContext.getResources().getColor(2131558624);
    }
    for (localar.c = localContext.getResources().getColor(2131558626);; localar.c = localContext.getResources().getColor(2131558624))
    {
      localar.a = localContext.getResources().getColor(2131558495);
      return localar;
      localar.b = localContext.getResources().getColor(2131558626);
    }
  }
  
  public final int a(double paramDouble)
  {
    if (paramDouble > 0.0D) {
      return this.b;
    }
    if (paramDouble < 0.0D) {
      return this.c;
    }
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */