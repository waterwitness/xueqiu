package com.umeng.analytics.game;

import android.content.Context;
import com.umeng.analytics.Gender;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.d;
import com.umeng.analytics.e;
import com.umeng.analytics.f;
import java.util.HashMap;
import u.aly.es;

class c
  implements com.umeng.analytics.c
{
  private d a = MobclickAgent.getAgent();
  private b b = null;
  private final int c = 100;
  private final int d = 1;
  private final int e;
  private final int f;
  private final int g;
  private final String h;
  private final String i;
  private final String j;
  private final String k;
  private final String l;
  private final String m;
  private final String n;
  private final String o;
  private final String p;
  private final String q;
  private final String r;
  private final String s;
  private final String t;
  private final String u;
  private final String v;
  private final String w;
  private Context x;
  
  public c()
  {
    this.a.a(1);
    this.e = 0;
    this.f = -1;
    this.g = 1;
    this.h = "level";
    this.i = "pay";
    this.j = "buy";
    this.k = "use";
    this.l = "bonus";
    this.m = "item";
    this.n = "cash";
    this.o = "coin";
    this.p = "source";
    this.q = "amount";
    this.r = "user_level";
    this.s = "bonus_source";
    this.t = "level";
    this.u = "status";
    this.v = "duration";
    this.w = "UMGameAgent.init(Context) should be called before any game api";
    a.a = true;
  }
  
  private void a(final String paramString, final int paramInt)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    e.a(new f()
    {
      public void a()
      {
        Object localObject = c.a(c.this).b(paramString);
        if (localObject != null)
        {
          long l = ((b.a)localObject).e();
          if (l <= 0L)
          {
            es.c("MobclickAgent", "level duration is 0");
            return;
          }
          localObject = new HashMap();
          ((HashMap)localObject).put("level", paramString);
          ((HashMap)localObject).put("status", Integer.valueOf(paramInt));
          ((HashMap)localObject).put("duration", Long.valueOf(l));
          if (paramString != null) {
            ((HashMap)localObject).put("user_level", paramString);
          }
          c.b(c.this).a(c.c(c.this), "level", (HashMap)localObject);
          return;
        }
        es.d("MobclickAgent", String.format("finishLevel(or failLevel) called before startLevel", new Object[0]));
      }
    });
  }
  
  public void a()
  {
    es.c("MobclickAgent", "App resume from background");
    if (this.x == null) {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
    }
    while (!a.a) {
      return;
    }
    this.b.b();
  }
  
  void a(double paramDouble1, double paramDouble2, int paramInt)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("cash", Long.valueOf((paramDouble1 * 100.0D)));
    localHashMap.put("coin", Long.valueOf((paramDouble2 * 100.0D)));
    localHashMap.put("source", Integer.valueOf(paramInt));
    if (this.b.b != null) {
      localHashMap.put("user_level", this.b.b);
    }
    if (this.b.a != null) {
      localHashMap.put("level", this.b.a);
    }
    this.a.a(this.x, "pay", localHashMap);
  }
  
  void a(double paramDouble, int paramInt)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("coin", Long.valueOf((100.0D * paramDouble)));
    localHashMap.put("bonus_source", Integer.valueOf(paramInt));
    if (this.b.b != null) {
      localHashMap.put("user_level", this.b.b);
    }
    if (this.b.a != null) {
      localHashMap.put("level", this.b.a);
    }
    this.a.a(this.x, "bonus", localHashMap);
  }
  
  void a(double paramDouble1, String paramString, int paramInt1, double paramDouble2, int paramInt2)
  {
    a(paramDouble1, paramDouble2 * paramInt1, paramInt2);
    a(paramString, paramInt1, paramDouble2);
  }
  
  void a(Context paramContext)
  {
    if (paramContext == null)
    {
      es.b("MobclickAgent", "Context is null, can't init GameAgent");
      return;
    }
    this.x = paramContext.getApplicationContext();
    this.a.a(this);
    this.b = new b(this.x);
  }
  
  void a(String paramString)
  {
    this.b.b = paramString;
  }
  
  void a(String paramString, int paramInt, double paramDouble)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("item", paramString);
    localHashMap.put("amount", Integer.valueOf(paramInt));
    localHashMap.put("coin", Long.valueOf((paramInt * paramDouble * 100.0D)));
    if (this.b.b != null) {
      localHashMap.put("user_level", this.b.b);
    }
    if (this.b.a != null) {
      localHashMap.put("level", this.b.a);
    }
    this.a.a(this.x, "buy", localHashMap);
  }
  
  void a(String paramString, int paramInt1, double paramDouble, int paramInt2)
  {
    a(paramInt1 * paramDouble, paramInt2);
    a(paramString, paramInt1, paramDouble);
  }
  
  void a(String paramString1, int paramInt, Gender paramGender, String paramString2)
  {
    com.umeng.analytics.AnalyticsConfig.sId = paramString1;
    com.umeng.analytics.AnalyticsConfig.sAge = paramInt;
    com.umeng.analytics.AnalyticsConfig.sGender = paramGender;
    com.umeng.analytics.AnalyticsConfig.sSource = paramString2;
  }
  
  void a(boolean paramBoolean)
  {
    es.c("MobclickAgent", String.format("Trace sleep time : %b", new Object[] { Boolean.valueOf(paramBoolean) }));
    a.a = paramBoolean;
  }
  
  public void b()
  {
    if (this.x == null) {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
    }
    while (!a.a) {
      return;
    }
    this.b.a();
  }
  
  void b(final String paramString)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    this.b.a = paramString;
    e.a(new f()
    {
      public void a()
      {
        c.a(c.this).a(paramString);
        HashMap localHashMap = new HashMap();
        localHashMap.put("level", paramString);
        localHashMap.put("status", Integer.valueOf(0));
        if (paramString != null) {
          localHashMap.put("user_level", paramString);
        }
        c.b(c.this).a(c.c(c.this), "level", localHashMap);
      }
    });
  }
  
  void b(String paramString, int paramInt, double paramDouble)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("item", paramString);
    localHashMap.put("amount", Integer.valueOf(paramInt));
    localHashMap.put("coin", Long.valueOf((paramInt * paramDouble * 100.0D)));
    if (this.b.b != null) {
      localHashMap.put("user_level", this.b.b);
    }
    if (this.b.a != null) {
      localHashMap.put("level", this.b.a);
    }
    this.a.a(this.x, "use", localHashMap);
  }
  
  void c(String paramString)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    a(paramString, 1);
  }
  
  void d(String paramString)
  {
    if (this.x == null)
    {
      es.b("MobclickAgent", "UMGameAgent.init(Context) should be called before any game api");
      return;
    }
    a(paramString, -1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\game\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */