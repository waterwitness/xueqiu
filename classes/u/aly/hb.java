package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.Gender;
import java.util.ArrayList;
import java.util.List;

public final class hb
{
  List<ha> a = new ArrayList();
  i b = null;
  Context c = null;
  private p d = null;
  private ab e = null;
  private cl f = null;
  
  public hb(Context paramContext)
  {
    this.c = paramContext;
  }
  
  public final int a()
  {
    try
    {
      int j = this.a.size();
      i locali = this.b;
      int i = j;
      if (locali != null) {
        i = j + 1;
      }
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(ha paramha)
  {
    try
    {
      this.a.add(paramha);
      return;
    }
    finally
    {
      paramha = finally;
      throw paramha;
    }
  }
  
  public final void a(i parami)
  {
    try
    {
      this.b = parami;
      return;
    }
    finally
    {
      parami = finally;
      throw parami;
    }
  }
  
  public final p b()
  {
    try
    {
      if (this.d == null)
      {
        this.d = new p();
        localObject1 = this.c;
      }
      try
      {
        this.d.a = AnalyticsConfig.getAppkey((Context)localObject1);
        this.d.g = AnalyticsConfig.getChannel((Context)localObject1);
        if ((AnalyticsConfig.mWrapperType != null) && (AnalyticsConfig.mWrapperVersion != null))
        {
          this.d.h = AnalyticsConfig.mWrapperType;
          this.d.i = AnalyticsConfig.mWrapperVersion;
        }
        this.d.d = er.o((Context)localObject1);
        this.d.e = dm.a;
        this.d.f = "5.2.4";
        this.d.b = er.b((Context)localObject1);
        p localp = this.d;
        localp.c = Integer.parseInt(er.a((Context)localObject1));
        localp.c();
        if (AnalyticsConfig.mVerticalType == 1)
        {
          localObject1 = this.d;
          ((p)localObject1).j = AnalyticsConfig.mVerticalType;
          ((p)localObject1).h();
          this.d.f = "5.2.4.1";
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
      Object localObject1 = this.d;
      return (p)localObject1;
    }
    finally {}
  }
  
  public final ab c()
  {
    try
    {
      if (this.e == null)
      {
        this.e = new ab();
        localObject1 = this.c;
      }
      try
      {
        this.e.f = er.a();
        this.e.a = er.c((Context)localObject1);
        this.e.b = er.d((Context)localObject1);
        this.e.c = er.k((Context)localObject1);
        this.e.e = Build.MODEL;
        this.e.g = "Android";
        this.e.h = Build.VERSION.RELEASE;
        localObject1 = er.l((Context)localObject1);
        if (localObject1 != null) {
          this.e.i = new da(localObject1[1], localObject1[0]);
        }
        if (AnalyticsConfig.GPU_RENDERER != null) {
          localObject1 = AnalyticsConfig.GPU_VENDER;
        }
        this.e.l = Build.BOARD;
        this.e.m = Build.BRAND;
        localObject1 = this.e;
        ((ab)localObject1).n = Build.TIME;
        ((ab)localObject1).q();
        this.e.o = Build.MANUFACTURER;
        this.e.p = Build.ID;
        this.e.q = Build.DEVICE;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
      Object localObject1 = this.e;
      return (ab)localObject1;
    }
    finally {}
  }
  
  public final cl d()
  {
    for (;;)
    {
      try
      {
        if (this.f == null)
        {
          this.f = new cl();
          localObject1 = this.c;
        }
        try
        {
          localObject3 = er.e((Context)localObject1);
          if (!"Wi-Fi".equals(localObject3[0])) {
            continue;
          }
          this.f.i = h.c;
          if (!"".equals(localObject3[1])) {
            this.f.j = localObject3[1];
          }
          this.f.f = er.m((Context)localObject1);
          localObject3 = er.i((Context)localObject1);
          this.f.c = localObject3[0];
          this.f.b = localObject3[1];
          localObject3 = this.f;
          ((cl)localObject3).a = er.h((Context)localObject1);
          ((cl)localObject3).b();
          if ((AnalyticsConfig.sAge != 0) || (AnalyticsConfig.sGender != null) || (AnalyticsConfig.sId != null) || (AnalyticsConfig.sSource != null))
          {
            localObject1 = new ef();
            ((ef)localObject1).b = AnalyticsConfig.sAge;
            ((ef)localObject1).c();
            ((ef)localObject1).a = Gender.transGender(AnalyticsConfig.sGender);
            ((ef)localObject1).c = AnalyticsConfig.sId;
            ((ef)localObject1).d = AnalyticsConfig.sSource;
            this.f.k = ((ef)localObject1);
          }
        }
        catch (Exception localException)
        {
          Object localObject3;
          localException.printStackTrace();
          continue;
        }
        Object localObject1 = this.f;
        return (cl)localObject1;
      }
      finally {}
      if ("2G/3G".equals(localObject3[0])) {
        this.f.i = h.b;
      } else {
        this.f.i = h.a;
      }
    }
  }
  
  public final bn e()
  {
    try
    {
      bn localbn = gt.b(this.c).a();
      return localbn;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public final bh f()
  {
    try
    {
      bh localbh = gt.a(this.c).a;
      return localbh;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public final v g()
  {
    try
    {
      SharedPreferences localSharedPreferences = this.c.getSharedPreferences("umeng_general_config", 0);
      v localv = new v();
      localv.b = localSharedPreferences.getInt("failed_requests ", 0);
      localv.b();
      localv.c = localSharedPreferences.getInt("last_request_spent_ms", 0);
      localv.d();
      localv.a = localSharedPreferences.getInt("successful_request", 0);
      localv.a();
      return localv;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return new v();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\hb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */