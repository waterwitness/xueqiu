package com.xiaomi.d;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.xiaomi.a.a.d.a;
import com.xiaomi.a.a.d.d;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class i
  extends f
{
  private final int g = 80;
  private final int h = 5222;
  private int i = 80;
  
  private i(Context paramContext, e parame, h paramh, String paramString)
  {
    super(paramContext, null, paramh, paramString, null, null);
    a("resolver.msg.xiaomi.net", "resolver.msg.xiaomi.net:5222");
  }
  
  public i(Context paramContext, h paramh, String paramString)
  {
    this(paramContext, null, paramh, paramString);
  }
  
  private JSONObject m()
  {
    synchronized (this.a)
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("ver", 2);
      localJSONObject.put("data", l());
      return localJSONObject;
    }
  }
  
  public String a(ArrayList<String> paramArrayList, String paramString1, String paramString2)
  {
    Object localObject1 = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new a("type", paramString1));
    if (paramString1.equals("wap")) {
      localArrayList.add(new a("connpt", d.c(this.c)));
    }
    localArrayList.add(new a("uuid", paramString2));
    localArrayList.add(new a("list", a(paramArrayList, ",")));
    ??? = c("resolver.msg.xiaomi.net");
    Object localObject3 = String.format(Locale.US, "http://%1$s/gslb/?ver=3.0", new Object[] { "resolver.msg.xiaomi.net:" + this.i });
    Object localObject4;
    if (??? == null)
    {
      ((ArrayList)localObject1).add(localObject3);
      synchronized (b)
      {
        localObject3 = ((ArrayList)b.get("resolver.msg.xiaomi.net")).iterator();
        if (((Iterator)localObject3).hasNext())
        {
          localObject4 = (String)((Iterator)localObject3).next();
          ((ArrayList)localObject1).add(String.format(Locale.US, "http://%1$s/gslb/?ver=3.0", new Object[] { localObject4 }));
        }
      }
      ??? = ((ArrayList)localObject1).iterator();
      localObject1 = null;
    }
    for (;;)
    {
      if (((Iterator)???).hasNext())
      {
        localObject1 = Uri.parse((String)((Iterator)???).next()).buildUpon();
        localObject3 = localArrayList.iterator();
        for (;;)
        {
          if (((Iterator)localObject3).hasNext())
          {
            localObject4 = (com.xiaomi.a.a.d.c)((Iterator)localObject3).next();
            ((Uri.Builder)localObject1).appendQueryParameter(((com.xiaomi.a.a.d.c)localObject4).a(), ((com.xiaomi.a.a.d.c)localObject4).b());
            continue;
            localObject1 = ((b)???).a((String)localObject3);
            break;
          }
        }
      }
      try
      {
        if (this.d == null) {
          return d.a(this.c, new URL(((Uri.Builder)localObject1).toString()));
        }
        localObject1 = this.d.a(((Uri.Builder)localObject1).toString());
        return (String)localObject1;
      }
      catch (IOException localIOException) {}
      if (localObject1 == null) {
        break label418;
      }
      return super.a(paramArrayList, paramString1, paramString2);
    }
    label418:
    return null;
  }
  
  protected final String c()
  {
    return "resolver.msg.xiaomi.net";
  }
  
  protected final boolean g()
  {
    synchronized (this.a)
    {
      if (!f)
      {
        f = true;
        this.a.clear();
        try
        {
          Object localObject2 = f();
          if (!TextUtils.isEmpty((CharSequence)localObject2)) {
            synchronized (this.a)
            {
              this.a.clear();
              localObject2 = new JSONObject((String)localObject2);
              if (((JSONObject)localObject2).optInt("ver") != 2) {
                throw new JSONException("Bad version");
              }
            }
          }
          localJSONArray = ((JSONObject)localObject3).optJSONArray("data");
        }
        catch (Throwable localThrowable)
        {
          com.xiaomi.a.a.b.c.a("load bucket failure: " + localThrowable.getMessage());
          return false;
        }
        JSONArray localJSONArray;
        int j = 0;
        while (j < localJSONArray.length())
        {
          c localc = new c().a(localJSONArray.getJSONObject(j));
          this.a.put(localc.a, localc);
          j += 1;
        }
        com.xiaomi.a.a.b.c.b("loading the new hosts succeed");
        return true;
      }
    }
    return true;
  }
  
  public final void h()
  {
    synchronized (this.a)
    {
      try
      {
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(this.c.openFileOutput(i(), 0)));
        String str = m().toString();
        if (!TextUtils.isEmpty(str)) {
          localBufferedWriter.write(str);
        }
        localBufferedWriter.close();
      }
      catch (Exception localException)
      {
        for (;;)
        {
          com.xiaomi.a.a.b.c.a("persist bucket failure: " + localException.getMessage());
        }
      }
      return;
    }
  }
  
  public final void k()
  {
    synchronized (this.a)
    {
      Iterator localIterator1 = this.a.values().iterator();
      if (!localIterator1.hasNext()) {
        break label133;
      }
      ((c)localIterator1.next()).a(true);
    }
    Iterator localIterator2;
    for (;;)
    {
      if (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        if (((c)this.a.get(str)).b.isEmpty()) {
          this.a.remove(str);
        }
      }
    }
    for (;;)
    {
      if (j == 0)
      {
        localIterator2 = this.a.keySet().iterator();
        break;
      }
      return;
      label133:
      int j = 0;
      continue;
      j = 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */