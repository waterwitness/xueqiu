package com.xueqiu.android.community;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class i
{
  private static final String c = i.class.getSimpleName();
  private static i d;
  List<Map<String, String>> a = new ArrayList();
  Gson b = new Gson();
  private List<Map<String, String>> e = new ArrayList();
  
  private i()
  {
    b.a();
    String str = DefaultPrefs.getString("recently_mentioned_user", null, b.d());
    if (this.b.fromJson(str, new TypeToken() {}.getType()) != null) {}
    for (this.e = ((List)this.b.fromJson(str, new TypeToken() {}.getType()));; this.e = new ArrayList())
    {
      b();
      return;
    }
  }
  
  public static i a()
  {
    try
    {
      if (d == null) {
        d = new i();
      }
      i locali = d;
      return locali;
    }
    finally {}
  }
  
  public final void a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return;
    }
    if (this.e.contains(paramMap)) {
      this.e.remove(paramMap);
    }
    for (;;)
    {
      this.e.add(paramMap);
      paramMap = this.b.toJson(this.e);
      b.a();
      DefaultPrefs.putString("recently_mentioned_user", paramMap, b.d());
      return;
      if (this.e.size() >= 10) {
        this.e.remove(0);
      }
    }
  }
  
  public final List<Map<String, String>> b()
  {
    b.a();
    String str = DefaultPrefs.getString("recently_mentioned_stock", null, b.d());
    if (this.b.fromJson(str, new TypeToken() {}.getType()) != null) {}
    for (this.a = ((List)this.b.fromJson(str, new TypeToken() {}.getType()));; this.a = new ArrayList()) {
      return this.a;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */