package com.xueqiu.android.common.search;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import java.util.ArrayList;
import java.util.List;

public class a
{
  public static final String a = a.class.getSimpleName();
  private static a c;
  public List<String> b = new ArrayList();
  private Gson d = new Gson();
  
  private a()
  {
    c();
  }
  
  public static a a()
  {
    try
    {
      if (c == null) {
        c = new a();
      }
      a locala = c;
      return locala;
    }
    finally {}
  }
  
  public final void b()
  {
    String str = this.d.toJson(this.b);
    b.a();
    DefaultPrefs.putString("search_history", str, b.d());
  }
  
  public final List<String> c()
  {
    b.a();
    String str = DefaultPrefs.getString("search_history", null, b.d());
    if (this.d.fromJson(str, new TypeToken() {}.getType()) != null) {}
    for (this.b = ((List)this.d.fromJson(str, new TypeToken() {}.getType()));; this.b = new ArrayList()) {
      return this.b;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */