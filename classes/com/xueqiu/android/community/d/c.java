package com.xueqiu.android.community.d;

import android.content.Intent;
import android.support.annotation.NonNull;
import android.view.View;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.g;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.TopicDetailActivity;
import com.xueqiu.android.community.b.h;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.RecommendCube;
import java.util.ArrayList;
import org.json.JSONObject;

public final class c
  implements h
{
  public com.xueqiu.android.community.b.i a;
  public ai b;
  int c = 1;
  boolean d = true;
  public boolean e = true;
  int f = 0;
  public long g;
  int h = -1;
  
  public c(long paramLong, @NonNull com.xueqiu.android.community.b.i parami)
  {
    this.a = parami;
    this.g = paramLong;
    this.b = com.xueqiu.android.base.q.a().b();
  }
  
  public final void a()
  {
    ai localai = this.b;
    long l = this.g;
    p local1 = new p((TopicDetailActivity)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        c.this.a.b(false);
        aa.a(paramAnonymousy, true);
      }
    };
    localai.g.c(l, local1);
  }
  
  public final void b() {}
  
  public final boolean c()
  {
    return this.f > 1;
  }
  
  public final void d()
  {
    if (this.h == 0) {}
    do
    {
      return;
      if ((this.h != -1) && (this.c > this.h)) {
        break;
      }
    } while (!this.d);
    this.d = false;
    this.a.c(true);
    ai localai = this.b;
    long l = this.g;
    int i = this.c;
    p local6 = new p((TopicDetailActivity)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        c.this.a.c(false);
        if (c.this.c == Math.ceil(c.this.h / 10.0F)) {
          c.this.a.l();
        }
        c.this.d = true;
      }
    };
    localai.g.a(l, i, local6);
    return;
    this.a.c(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */