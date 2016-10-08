package com.xueqiu.android.common.search.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.android.volley.y;
import com.d.a.b.f;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.r;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.SearchHots;
import com.xueqiu.android.common.search.USearchActivity;
import com.xueqiu.android.common.search.a.c;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.a.k;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.stock.a.ad;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class a
  implements com.xueqiu.android.common.search.a.b
{
  private static final String c = a.class.getSimpleName();
  public c a;
  public ad b = null;
  private k d = null;
  
  public a(c paramc)
  {
    this.a = paramc;
  }
  
  private List<String> d()
  {
    List localList = com.xueqiu.android.common.search.a.a().c();
    if ((localList == null) || (localList.size() <= 0))
    {
      this.a.b(false);
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i = localList.size() - 1;
    while (i >= 0)
    {
      localArrayList.add(localList.get(i));
      i -= 1;
    }
    this.a.b(true);
    this.a.a(localArrayList);
    return localArrayList;
  }
  
  public final void a()
  {
    p local2 = new p((USearchActivity)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        String str2 = a.c();
        StringBuilder localStringBuilder = new StringBuilder("onErrorResponse error = ");
        if (paramAnonymousy != null) {}
        for (String str1 = paramAnonymousy.getMessage();; str1 = "")
        {
          v.a(str2, str1);
          a.a(a.this).c(false);
          aa.a(paramAnonymousy);
          return;
        }
      }
    };
    com.xueqiu.android.base.q.a().b().h.h(local2);
    d();
    a(true);
  }
  
  public final void a(final String paramString)
  {
    p local1 = new p((USearchActivity)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        a.a(a.this, null, paramAnonymousy);
      }
    };
    com.xueqiu.android.base.q.a().b().g(paramString, local1);
    this.a.d(true);
  }
  
  public final void a(boolean paramBoolean)
  {
    Object localObject = null;
    String str = null;
    if (paramBoolean)
    {
      com.xueqiu.android.base.a.a();
      paramBoolean = com.xueqiu.android.base.a.h();
    }
    for (;;)
    {
      long l = 0L;
      if (paramBoolean)
      {
        com.xueqiu.android.base.a.a();
        JsonObject localJsonObject = com.xueqiu.android.base.a.i();
        if (localJsonObject.has("image"))
        {
          localObject = r.a(localJsonObject, "image", null);
          if (!TextUtils.isEmpty((CharSequence)localObject))
          {
            localObject = f.a().d().a((String)localObject);
            if (localJsonObject.has("link")) {
              str = r.a(localJsonObject, "link", null);
            }
            l = r.c(localJsonObject, "promotion_id");
            if (localObject == null) {
              return;
            }
            localObject = BitmapFactory.decodeFile(((File)localObject).getAbsolutePath());
          }
        }
      }
      for (;;)
      {
        this.a.a(paramBoolean, (Bitmap)localObject, str, l);
        return;
        localObject = null;
        break;
        str = null;
      }
    }
  }
  
  public final void b() {}
  
  public final void b(String paramString)
  {
    com.xueqiu.android.common.search.a locala = com.xueqiu.android.common.search.a.a();
    if (!TextUtils.isEmpty(paramString))
    {
      if (!locala.b.contains(paramString)) {
        break label65;
      }
      locala.b.remove(paramString);
    }
    for (;;)
    {
      locala.b.add(paramString);
      locala.b();
      this.a.j();
      d();
      return;
      label65:
      if (locala.b.size() >= 30) {
        locala.b.remove(0);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */