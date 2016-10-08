package com.umeng.analytics.game;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import u.aly.hd;

public class b
{
  public String a;
  public String b;
  private Context c;
  private final String d = "um_g_cache";
  private final String e = "single_level";
  private final String f = "stat_player_level";
  private final String g = "stat_game_level";
  private b.a h = null;
  
  public b(Context paramContext)
  {
    this.c = paramContext;
  }
  
  public b.a a(String paramString)
  {
    this.h = new b.a(paramString);
    this.h.a();
    return this.h;
  }
  
  public void a()
  {
    if (this.h != null)
    {
      this.h.b();
      SharedPreferences.Editor localEditor = this.c.getSharedPreferences("um_g_cache", 0).edit();
      localEditor.putString("single_level", hd.a(this.h));
      localEditor.putString("stat_player_level", this.b);
      localEditor.putString("stat_game_level", this.a);
      localEditor.commit();
    }
  }
  
  public b.a b(String paramString)
  {
    if (this.h != null)
    {
      this.h.d();
      if (this.h.a(paramString))
      {
        paramString = this.h;
        this.h = null;
        return paramString;
      }
    }
    return null;
  }
  
  public void b()
  {
    SharedPreferences localSharedPreferences = this.c.getSharedPreferences("um_g_cache", 0);
    String str = localSharedPreferences.getString("single_level", null);
    if (str != null)
    {
      this.h = ((b.a)hd.a(str));
      if (this.h != null) {
        this.h.c();
      }
    }
    if (this.b == null) {
      this.b = localSharedPreferences.getString("stat_player_level", null);
    }
    if (this.a == null) {
      this.a = localSharedPreferences.getString("stat_game_level", null);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\game\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */