package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.umeng.analytics.onlineconfig.UmengOnlineConfigureListener;
import com.umeng.analytics.onlineconfig.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import u.aly.b;
import u.aly.cf;
import u.aly.dn;
import u.aly.er;
import u.aly.es;
import u.aly.ex;
import u.aly.g;
import u.aly.gv;
import u.aly.gw;
import u.aly.gx;
import u.aly.gy;
import u.aly.he;
import u.aly.hf;
import u.aly.hh;
import u.aly.hi;
import u.aly.hj;

public class d
  implements he
{
  private final a a = new a();
  private Context b = null;
  private c c;
  private gx d = new gx();
  private hj e = new hj();
  private hf f = new hf();
  private gy g;
  private gv h;
  private boolean i = false;
  
  d()
  {
    this.d.a = this;
  }
  
  private void f(Context paramContext)
  {
    if (!this.i)
    {
      this.b = paramContext.getApplicationContext();
      this.g = new gy(this.b);
      this.h = gv.a(this.b);
      this.i = true;
    }
  }
  
  private void g(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("umeng_general_config", 0);
    long l1;
    long l2;
    long l3;
    gv localgv;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (localSharedPreferences != null)
    {
      l1 = localSharedPreferences.getLong("a_start_time", 0L);
      l2 = localSharedPreferences.getLong("a_end_time", 0L);
      l3 = System.currentTimeMillis();
      int j;
      if ((l1 != 0L) && (l3 - l1 < AnalyticsConfig.kContinueSessionMillis))
      {
        es.b("MobclickAgent", "onResume called before onPause");
        j = 0;
      }
      for (;;)
      {
        if (j != 0)
        {
          localgv = gv.a(paramContext);
          localObject1 = er.c(paramContext);
          String str = AnalyticsConfig.getAppkey(paramContext);
          l1 = System.currentTimeMillis();
          if (str == null)
          {
            throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
            if (l3 - l2 <= AnalyticsConfig.kContinueSessionMillis) {
              break;
            }
            j = 1;
            continue;
          }
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(l1).append(str).append((String)localObject1);
          str = ex.a(((StringBuilder)localObject2).toString());
          localObject2 = paramContext.getSharedPreferences("umeng_general_config", 0);
          localObject3 = ((SharedPreferences)localObject2).getString("session_id", null);
          if (localObject3 == null)
          {
            paramContext = null;
            localObject1 = localSharedPreferences.edit();
            ((SharedPreferences.Editor)localObject1).putString("session_id", str);
            ((SharedPreferences.Editor)localObject1).putLong("session_start_time", System.currentTimeMillis());
            ((SharedPreferences.Editor)localObject1).putLong("session_end_time", 0L);
            ((SharedPreferences.Editor)localObject1).commit();
            if (paramContext == null) {
              break label630;
            }
            localgv.a(paramContext);
            label249:
            es.a("MobclickAgent", "Start new session: " + str);
          }
        }
      }
    }
    for (;;)
    {
      paramContext = localSharedPreferences.edit();
      paramContext.putLong("a_start_time", System.currentTimeMillis());
      paramContext.putLong("a_end_time", 0L);
      paramContext.commit();
      if (this.c != null) {
        this.c.a();
      }
      return;
      l3 = ((SharedPreferences)localObject2).getLong("session_start_time", 0L);
      long l4 = ((SharedPreferences)localObject2).getLong("session_end_time", 0L);
      l1 = 0L;
      if (l4 != 0L)
      {
        l2 = l4 - l3;
        l1 = l2;
        if (Math.abs(l2) > 86400000L) {
          l1 = 0L;
        }
      }
      localObject1 = new g();
      ((dn)localObject1).a = ((String)localObject3);
      ((dn)localObject1).b = l3;
      ((dn)localObject1).a();
      ((dn)localObject1).c = l4;
      ((dn)localObject1).b();
      ((dn)localObject1).d = l1;
      ((dn)localObject1).c();
      localObject3 = AnalyticsConfig.getLocation();
      if (localObject3 != null)
      {
        localObject3 = new cf(localObject3[0], localObject3[1], System.currentTimeMillis());
        if (!((g)localObject1).e()) {
          break label611;
        }
        if (((dn)localObject1).f == null) {
          ((dn)localObject1).f = new ArrayList();
        }
        ((dn)localObject1).f.add(localObject3);
      }
      for (;;)
      {
        paramContext = hi.a(paramContext);
        if (paramContext != null) {
          ((dn)localObject1).g = paramContext;
        }
        paramContext = hj.a((SharedPreferences)localObject2);
        if ((paramContext != null) && (paramContext.size() > 0)) {
          ((dn)localObject1).e = paramContext;
        }
        paramContext = ((SharedPreferences)localObject2).edit();
        paramContext.remove("session_start_time");
        paramContext.remove("session_end_time");
        paramContext.remove("session_id");
        paramContext.remove("a_start_time");
        paramContext.remove("a_end_time");
        paramContext.putString("activities", "");
        paramContext.commit();
        paramContext = (Context)localObject1;
        break;
        label611:
        ((dn)localObject1).f = Arrays.asList(new cf[] { localObject3 });
      }
      label630:
      localgv.a(null);
      break label249;
      paramContext = localSharedPreferences.getString("session_id", null);
      es.a("MobclickAgent", "Extend current session: " + paramContext);
    }
  }
  
  private void h(Context paramContext)
  {
    Object localObject1 = paramContext.getSharedPreferences("umeng_general_config", 0);
    if (localObject1 != null)
    {
      if ((((SharedPreferences)localObject1).getLong("a_start_time", 0L) != 0L) || (!AnalyticsConfig.ACTIVITY_DURATION_OPEN)) {
        break label219;
      }
      es.b("MobclickAgent", "onPause called before onResume");
    }
    for (;;)
    {
      localObject1 = this.e;
      Object localObject2 = paramContext.getSharedPreferences("umeng_general_config", 0);
      paramContext = ((SharedPreferences)localObject2).edit();
      if (((hj)localObject1).a.size() > 0)
      {
        ??? = ((SharedPreferences)localObject2).getString("activities", "");
        localObject2 = new StringBuilder();
        if (!TextUtils.isEmpty((CharSequence)???))
        {
          ((StringBuilder)localObject2).append((String)???);
          ((StringBuilder)localObject2).append(";");
        }
      }
      synchronized (((hj)localObject1).a)
      {
        Iterator localIterator = ((hj)localObject1).a.iterator();
        if (!localIterator.hasNext())
        {
          ((hj)localObject1).a.clear();
          ((StringBuilder)localObject2).deleteCharAt(((StringBuilder)localObject2).length() - 1);
          paramContext.remove("activities");
          paramContext.putString("activities", ((StringBuilder)localObject2).toString());
          paramContext.commit();
          if (this.c != null) {
            this.c.b();
          }
          this.h.b();
          return;
          label219:
          long l = System.currentTimeMillis();
          localObject1 = ((SharedPreferences)localObject1).edit();
          ((SharedPreferences.Editor)localObject1).putLong("a_start_time", 0L);
          ((SharedPreferences.Editor)localObject1).putLong("a_end_time", l);
          ((SharedPreferences.Editor)localObject1).putLong("session_end_time", l);
          ((SharedPreferences.Editor)localObject1).commit();
          continue;
        }
        hh localhh = (hh)localIterator.next();
        ((StringBuilder)localObject2).append(String.format("[\"%s\",%d]", new Object[] { localhh.a, Long.valueOf(localhh.b) }));
        ((StringBuilder)localObject2).append(";");
      }
    }
  }
  
  public void a(int paramInt)
  {
    AnalyticsConfig.mVerticalType = paramInt;
  }
  
  void a(Context paramContext)
  {
    if (paramContext == null) {
      es.b("MobclickAgent", "unexpected null context in onResume");
    }
    for (;;)
    {
      return;
      this.a.a(paramContext);
      try
      {
        paramContext = gv.a(paramContext);
        a locala = this.a;
        if ((locala != null) && (paramContext.a != null))
        {
          locala.a((com.umeng.analytics.onlineconfig.c)paramContext.a);
          return;
        }
      }
      catch (Exception paramContext) {}
    }
  }
  
  void a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    if (paramContext == null)
    {
      es.b("MobclickAgent", "unexpected null context in reportError");
      return;
    }
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      this.h.a(new u.aly.d(paramString).a());
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  void a(Context paramContext, final String paramString1, final String paramString2)
  {
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      e.a(new f()
      {
        public void a()
        {
          gy localgy = d.a(d.this);
          String str1 = paramString1;
          String str2 = paramString2;
          if ((!gy.a(str1)) || (!gy.b(str2))) {
            return;
          }
          localgy.a.a(u.aly.c.a(str1, str2), u.aly.c.a(str1, str2, null));
        }
      });
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, long paramLong, int paramInt)
  {
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      this.g.a(paramString1, paramString2, paramLong, paramInt);
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  public void a(Context paramContext, String paramString, HashMap<String, Object> paramHashMap)
  {
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      paramContext = this.g;
      try
      {
        if (!gy.a(paramString)) {
          return;
        }
        paramContext.b.a(new u.aly.e(paramString, paramHashMap));
        return;
      }
      catch (Exception paramContext)
      {
        es.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", paramContext);
        return;
      }
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  void a(Context paramContext, final String paramString1, final HashMap<String, Object> paramHashMap, final String paramString2)
  {
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      e.a(new f()
      {
        public void a()
        {
          gy localgy = d.a(d.this);
          String str1 = paramString1;
          HashMap localHashMap = paramHashMap;
          String str2 = paramString2;
          if ((gy.a(str1)) && (gy.a(localHashMap))) {
            localgy.a.a(u.aly.c.a(str1, str2), u.aly.c.a(str1, str2, localHashMap));
          }
        }
      });
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  void a(Context paramContext, String paramString, Map<String, Object> paramMap, long paramLong)
  {
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      this.g.a(paramString, paramMap, paramLong);
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  void a(Context paramContext, Throwable paramThrowable)
  {
    if ((paramContext == null) || (paramThrowable == null)) {
      return;
    }
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      this.h.a(new u.aly.d(paramThrowable).a());
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  public void a(c paramc)
  {
    this.c = paramc;
  }
  
  void a(UmengOnlineConfigureListener paramUmengOnlineConfigureListener)
  {
    this.a.a(paramUmengOnlineConfigureListener);
  }
  
  void a(String paramString)
  {
    if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {}
    try
    {
      this.e.a(paramString);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    AnalyticsConfig.mWrapperType = paramString1;
    AnalyticsConfig.mWrapperVersion = paramString2;
  }
  
  public void a(Throwable paramThrowable)
  {
    try
    {
      this.e.a();
      if (this.b != null)
      {
        if ((paramThrowable != null) && (this.h != null)) {
          this.h.b(new u.aly.d(paramThrowable));
        }
        h(this.b);
        this.b.getSharedPreferences("umeng_general_config", 0).edit().commit();
      }
      e.a();
      return;
    }
    catch (Exception paramThrowable)
    {
      es.a("MobclickAgent", "Exception in onAppCrash", paramThrowable);
    }
  }
  
  void b(final Context paramContext)
  {
    if (paramContext == null)
    {
      es.b("MobclickAgent", "unexpected null context in onResume");
      return;
    }
    if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
      this.e.a(paramContext.getClass().getName());
    }
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      e.a(new f()
      {
        public void a()
        {
          d.a(d.this, paramContext.getApplicationContext());
        }
      });
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "Exception occurred in Mobclick.onResume(). ", paramContext);
    }
  }
  
  void b(Context paramContext, final String paramString1, final String paramString2)
  {
    try
    {
      e.a(new f()
      {
        public void a()
        {
          gy localgy = d.a(d.this);
          String str1 = paramString1;
          String str2 = paramString2;
          if ((!gy.a(str1)) || (!gy.b(str2))) {}
          b localb;
          do
          {
            return;
            localb = localgy.a.a(u.aly.c.a(str1, str2));
          } while (localb == null);
          localgy.a(str1, str2, (int)(System.currentTimeMillis() - localb.a), 0);
        }
      });
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  void b(String paramString)
  {
    if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {}
    try
    {
      this.e.b(paramString);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  void c(final Context paramContext)
  {
    if (paramContext == null)
    {
      es.b("MobclickAgent", "unexpected null context in onPause");
      return;
    }
    if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
      this.e.b(paramContext.getClass().getName());
    }
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      e.a(new f()
      {
        public void a()
        {
          d.b(d.this, paramContext.getApplicationContext());
        }
      });
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "Exception occurred in Mobclick.onRause(). ", paramContext);
    }
  }
  
  void c(Context paramContext, final String paramString1, final String paramString2)
  {
    try
    {
      e.a(new f()
      {
        public void a()
        {
          gy localgy = d.a(d.this);
          String str = paramString1;
          Object localObject = paramString2;
          if (gy.a(str))
          {
            localObject = localgy.a.a(u.aly.c.a(str, (String)localObject));
            if (localObject != null)
            {
              int i = (int)(System.currentTimeMillis() - ((b)localObject).a);
              localgy.a(str, ((b)localObject).d, i);
            }
          }
        }
      });
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  void d(Context paramContext)
  {
    try
    {
      if (!this.i) {
        f(paramContext);
      }
      this.h.a();
      return;
    }
    catch (Exception paramContext)
    {
      es.b("MobclickAgent", "", paramContext);
    }
  }
  
  void e(Context paramContext)
  {
    try
    {
      this.e.a();
      h(paramContext);
      paramContext.getSharedPreferences("umeng_general_config", 0).edit().commit();
      e.a();
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */