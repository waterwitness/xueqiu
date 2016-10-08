package com.umeng.analytics.onlineconfig;

import android.content.Context;
import com.umeng.analytics.AnalyticsConfig;
import org.json.JSONObject;
import u.aly.es;
import u.aly.et;

public class a$b
  extends et
  implements Runnable
{
  Context a;
  
  public a$b(a parama, Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }
  
  private void b()
  {
    Object localObject = a.a(this.b, this.a);
    a.a locala = new a.a(this.b, (JSONObject)localObject);
    String[] arrayOfString = com.umeng.analytics.a.g;
    int i = 0;
    b localb;
    for (localObject = null;; localObject = localb)
    {
      if (i >= arrayOfString.length) {}
      do
      {
        if (localObject != null) {
          break;
        }
        a.a(this.b, null);
        return;
        locala.a(arrayOfString[i]);
        localb = (b)a(locala, b.class);
        localObject = localb;
      } while (localb != null);
      i += 1;
    }
    if (((b)localObject).b)
    {
      if (a.a(this.b) != null) {
        a.a(this.b).a(((b)localObject).c, ((b)localObject).d);
      }
      a.a(this.b, this.a, (b)localObject);
      a.b(this.b, this.a, (b)localObject);
      a.a(this.b, ((b)localObject).a);
      return;
    }
    a.a(this.b, null);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void run()
  {
    if ((!AnalyticsConfig.UPDATE_IN_MAIN_PROCESS) || (com.umeng.analytics.b.a(this.a))) {}
    try
    {
      b();
      return;
    }
    catch (Exception localException)
    {
      a.a(this.b, null);
      es.c("MobclickAgent", "reques update error", localException);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\onlineconfig\a$b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */