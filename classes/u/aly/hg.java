package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class hg
{
  public int a;
  public int b;
  int c;
  public long d;
  long e = 0L;
  long f = 0L;
  Context g;
  private final int h = 3600000;
  
  public hg(Context paramContext)
  {
    this.g = paramContext.getApplicationContext();
    paramContext = paramContext.getSharedPreferences("umeng_general_config", 0);
    this.a = paramContext.getInt("successful_request", 0);
    this.b = paramContext.getInt("failed_requests ", 0);
    this.c = paramContext.getInt("last_request_spent_ms", 0);
    this.d = paramContext.getLong("last_request_time", 0L);
  }
  
  public final boolean a()
  {
    return this.d == 0L;
  }
  
  public final void b()
  {
    this.g.getSharedPreferences("umeng_general_config", 0).edit().putInt("successful_request", this.a).putInt("failed_requests ", this.b).putInt("last_request_spent_ms", this.c).putLong("last_request_time", this.d).commit();
  }
  
  public final boolean c()
  {
    boolean bool = false;
    if (this.f == 0L) {
      this.f = this.g.getSharedPreferences("umeng_general_config", 0).getLong("first_activate_time", 0L);
    }
    if (this.f == 0L) {
      bool = true;
    }
    return bool;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\hg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */