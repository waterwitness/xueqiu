package com.alipay.a.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class b
{
  public static Map<String, String> a = null;
  private final Context b;
  
  public b(Context paramContext)
  {
    this.b = paramContext;
    f.a(paramContext);
  }
  
  private void a(final Context paramContext, final Map<String, String> paramMap)
  {
    try
    {
      new Thread(new Runnable()
      {
        public final void run()
        {
          c localc;
          Context localContext;
          int i;
          label652:
          label683:
          String str1;
          label823:
          boolean bool;
          try
          {
            localc = new c();
            localObject1 = paramContext;
            localObject2 = paramMap;
            a.a();
            f.a((Context)localObject1);
            if (localObject2 != null) {}
            try
            {
              if (((Map)localObject2).size() > 0)
              {
                if (!com.alipay.a.c.a.a((String)((Map)localObject2).get("tid"))) {
                  localc.a.p = ((String)((Map)localObject2).get("tid"));
                }
                if (!com.alipay.a.c.a.a((String)((Map)localObject2).get("utdid"))) {
                  localc.a.q = ((String)((Map)localObject2).get("utdid"));
                }
              }
              if (!com.alipay.a.c.a.a(a.b((Context)localObject1))) {
                localc.a.a = a.b((Context)localObject1);
              }
              if (!com.alipay.a.c.a.a(a.c((Context)localObject1))) {
                localc.a.b = a.c((Context)localObject1);
              }
              if (!com.alipay.a.c.a.a(a.a((Context)localObject1))) {
                localc.a.c = a.a((Context)localObject1);
              }
              if (!com.alipay.a.c.a.a(a.f())) {
                localc.a.d = a.f();
              }
              if (!com.alipay.a.c.a.a(a.b())) {
                localc.a.e = a.b();
              }
              if (!com.alipay.a.c.a.a(a.j())) {
                localc.a.f = a.j();
              }
              if (!com.alipay.a.c.a.a(Long.toString(a.g()))) {
                localc.a.g = Long.toString(a.g());
              }
              if (!com.alipay.a.c.a.a(Long.toString(a.h()))) {
                localc.a.h = Long.toString(a.h());
              }
              if (!com.alipay.a.c.a.a(a.d((Context)localObject1))) {
                localc.a.i = a.d((Context)localObject1);
              }
              if (!com.alipay.a.c.a.a(a.e())) {
                localc.a.j = a.e();
              }
              if (!com.alipay.a.c.a.a(a.i())) {
                localc.a.k = a.i();
              }
              if (!com.alipay.a.c.a.a(a.c())) {
                localc.a.l = a.c();
              }
              if (!com.alipay.a.c.a.a(a.k())) {
                localc.a.m = a.k();
              }
              if (!com.alipay.a.c.a.a(a.d())) {
                localc.a.n = a.d();
              }
              if (!com.alipay.a.c.a.a(a.e((Context)localObject1))) {
                localc.a.r = a.e((Context)localObject1);
              }
              localObject1 = c.a((Context)localObject1);
              if ((localObject1 != null) && (((Map)localObject1).size() > 0))
              {
                if (!com.alipay.a.c.a.a((String)((Map)localObject1).get("apdtk"))) {
                  localc.a.u = ((String)((Map)localObject1).get("apdtk"));
                }
                if (!com.alipay.a.c.a.a((String)((Map)localObject1).get("deviceId"))) {
                  localc.a.t = ((String)((Map)localObject1).get("deviceId"));
                }
                if (!com.alipay.a.c.a.a((String)((Map)localObject1).get("time"))) {
                  localc.a.o = ((String)((Map)localObject1).get("time"));
                }
                if (!com.alipay.a.c.a.a((String)((Map)localObject1).get("rule"))) {
                  localc.a.v = ((String)((Map)localObject1).get("rule"));
                }
              }
              if ((com.alipay.a.c.a.a(localc.a())) || (localc.a().length() <= 32)) {
                break label879;
              }
              localc.a.s = localc.a().substring(0, 32);
            }
            catch (Exception localException)
            {
              for (;;)
              {
                Map localMap;
                localc.c(f.a(localException));
              }
            }
            localContext = paramContext;
            localMap = b.a;
            if (localMap == null) {
              break label1147;
            }
            if ((com.alipay.a.c.a.a(localc.a())) || (localc.a().length() <= 0)) {
              break label1084;
            }
            i = 1;
            if (i == 0) {
              break label1096;
            }
            if ((com.alipay.a.c.a.a(localc.b())) || (localc.b().length() <= 0)) {
              break label1090;
            }
            i = 1;
          }
          catch (Throwable localThrowable)
          {
            Object localObject1;
            label879:
            Object localObject2 = new ArrayList();
            if ((paramMap.get("tid") == null) || (((String)paramMap.get("tid")).length() <= 20)) {
              break label1005;
            }
            ((List)localObject2).add(((String)paramMap.get("tid")).substring(0, 20));
            label1005:
            if ((paramMap.get("utdid") == null) || (((String)paramMap.get("utdid")).length() <= 20)) {
              break label1068;
            }
            ((List)localObject2).add(((String)paramMap.get("utdid")).substring(0, 20));
            label1068:
            ((List)localObject2).add(f.a(localThrowable));
            f.a((List)localObject2);
            return;
          }
          if (c.a(localMap))
          {
            if ((i == 0) && (!com.alipay.a.c.a.a((String)localMap.get("priDeviceId"))) && (!com.alipay.a.c.a.a((String)localMap.get("time"))))
            {
              localObject1 = (String)localMap.get("priDeviceId") + (String)localMap.get("time");
              localc.a((String)localObject1);
              localc.b((String)localObject1);
            }
            str1 = (String)localMap.get("checkcode");
            localObject2 = localc.c();
            localObject1 = localObject2;
            if (localObject2 == null) {
              localObject1 = "";
            }
            localObject1 = com.alipay.a.c.a.b((String)localObject1);
            String str2;
            if (localObject1 == null)
            {
              localObject1 = "";
              localObject2 = localc.a();
              str2 = localc.b();
              if (com.alipay.a.c.a.a((String)localObject2)) {
                break label1105;
              }
              bool = localc.a.t.equals(((String)localObject2).substring(0, 32));
              break label1166;
            }
            for (;;)
            {
              if (!bool) {
                break label1147;
              }
              localMap.get("apdid");
              return;
              if ((com.alipay.a.c.a.a(localc.b())) || (localc.b().length() <= 32)) {
                break;
              }
              localc.a.s = localc.b().substring(0, 32);
              break;
              label1084:
              i = 0;
              break label652;
              label1090:
              i = 0;
              break label1155;
              label1096:
              i = 0;
              break label683;
              break label823;
              label1105:
              if (com.alipay.a.c.a.a(str2)) {
                break label1186;
              }
              bool = localc.a.t.equals(str2.subSequence(0, 32));
              break label1166;
              label1136:
              bool = str1.equals(localThrowable);
            }
          }
          label1147:
          label1155:
          label1166:
          label1186:
          label1190:
          for (;;)
          {
            localc.b(localContext);
            return;
            if (i == 0) {
              break label1096;
            }
            i = 1;
            break;
            for (;;)
            {
              if (!bool) {
                break label1190;
              }
              if ((str1 != null) && (localThrowable != null)) {
                break label1136;
              }
              bool = false;
              break;
              bool = false;
            }
          }
        }
      }).start();
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public final String a(Map<String, String> paramMap)
  {
    Object localObject1 = null;
    new Thread(new Runnable()
    {
      public final void run()
      {
        try
        {
          f.a();
          return;
        }
        catch (Throwable localThrowable)
        {
          ArrayList localArrayList = new ArrayList();
          localArrayList.add("");
          localArrayList.add("");
          localArrayList.add("");
          localArrayList.add(f.a(localThrowable));
          f.a(localArrayList);
        }
      }
    }).start();
    for (;;)
    {
      try
      {
        new c();
        localObject2 = c.a(this.b);
        a = (Map)localObject2;
        if (localObject2 == null)
        {
          localObject2 = new ArrayList();
          if ((paramMap.get("tid") != null) && (((String)paramMap.get("tid")).length() > 20)) {
            ((List)localObject2).add(((String)paramMap.get("tid")).substring(0, 20));
          }
          if ((paramMap.get("utdid") != null) && (((String)paramMap.get("utdid")).length() > 20)) {
            ((List)localObject2).add(((String)paramMap.get("utdid")).substring(0, 20));
          }
          ((List)localObject2).add("model.GetPrivateData(mcontext)  strMap is null");
          f.a((List)localObject2);
          a(this.b, paramMap);
          return null;
        }
        if (!c.a(a)) {
          continue;
        }
        localObject2 = (String)a.get("deviceId");
        localObject1 = localObject2;
      }
      catch (Exception localException2)
      {
        Object localObject2;
        ArrayList localArrayList;
        continue;
        Object localObject3 = null;
        continue;
      }
      try
      {
        localArrayList = new ArrayList();
        localObject1 = localObject2;
        if (paramMap.get("tid") != null)
        {
          localObject1 = localObject2;
          if (((String)paramMap.get("tid")).length() > 20)
          {
            localObject1 = localObject2;
            localArrayList.add(((String)paramMap.get("tid")).substring(0, 20));
          }
        }
        localObject1 = localObject2;
        if (paramMap.get("utdid") != null)
        {
          localObject1 = localObject2;
          if (((String)paramMap.get("utdid")).length() > 20)
          {
            localObject1 = localObject2;
            localArrayList.add(((String)paramMap.get("utdid")).substring(0, 20));
          }
        }
        localObject1 = localObject2;
        localArrayList.add("GetApDid  deviceID is " + (String)localObject2);
        localObject1 = localObject2;
        f.a(localArrayList);
        localObject1 = localObject2;
        a(this.b, paramMap);
        return (String)localObject2;
      }
      catch (Exception localException1) {}
    }
    localArrayList = new ArrayList();
    if ((paramMap.get("tid") != null) && (((String)paramMap.get("tid")).length() > 20)) {
      localArrayList.add(((String)paramMap.get("tid")).substring(0, 20));
    }
    if ((paramMap.get("utdid") != null) && (((String)paramMap.get("utdid")).length() > 20)) {
      localArrayList.add(((String)paramMap.get("utdid")).substring(0, 20));
    }
    localArrayList.add(f.a(localException1));
    f.a(localArrayList);
    return (String)localObject1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */