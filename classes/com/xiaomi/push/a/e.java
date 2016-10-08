package com.xiaomi.push.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.xiaomi.a.a.b.c;
import com.xiaomi.e.e.h;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
import org.json.JSONObject;

final class e
  extends d
{
  String a;
  String d;
  File e;
  int f;
  boolean g;
  boolean h;
  
  e(b paramb, String paramString1, String paramString2, File paramFile, boolean paramBoolean)
  {
    super(paramb);
    this.a = paramString1;
    this.d = paramString2;
    this.e = paramFile;
    this.h = paramBoolean;
  }
  
  private boolean d()
  {
    SharedPreferences localSharedPreferences = b.a(this.i).getSharedPreferences("log.timestamp", 0);
    Object localObject = localSharedPreferences.getString("log.requst", "");
    long l2 = System.currentTimeMillis();
    long l1 = l2;
    int k;
    try
    {
      localObject = new JSONObject((String)localObject);
      l1 = l2;
      l2 = ((JSONObject)localObject).getLong("time");
      l1 = l2;
      j = ((JSONObject)localObject).getInt("times");
      l1 = l2;
    }
    catch (JSONException localJSONException2)
    {
      for (;;)
      {
        int j = 0;
      }
      l1 = System.currentTimeMillis();
      k = 0;
      label108:
      localJSONObject = new JSONObject();
    }
    if (System.currentTimeMillis() - l1 < 86400000L)
    {
      k = j;
      if (j <= 10) {
        break label108;
      }
      return false;
    }
    try
    {
      JSONObject localJSONObject;
      localJSONObject.put("time", l1);
      localJSONObject.put("times", k + 1);
      localSharedPreferences.edit().putString("log.requst", localJSONObject.toString()).commit();
      return true;
    }
    catch (JSONException localJSONException1)
    {
      for (;;)
      {
        c.c("JSONException on put " + localJSONException1.getMessage());
      }
    }
  }
  
  public final void a()
  {
    try
    {
      if (d())
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("uid", h.a());
        localHashMap.put("token", this.d);
        localHashMap.put("net", com.xiaomi.a.a.d.d.c(b.a(this.i)));
        com.xiaomi.a.a.d.d.a(this.a, localHashMap, this.e, "file");
      }
      this.g = true;
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public final void b()
  {
    if (!this.g)
    {
      this.f += 1;
      if (this.f < 3) {
        b.b(this.i).add(this);
      }
    }
    if ((this.g) || (this.f >= 3)) {
      this.e.delete();
    }
    b.a(this.i, (1 << this.f) * 1000);
  }
  
  public final boolean c()
  {
    return (com.xiaomi.a.a.d.d.b(b.a(this.i))) || ((this.h) && (com.xiaomi.a.a.d.d.a(b.a(this.i))));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */