package com.xueqiu.android.trade.d;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.SurfaceView;
import android.view.ViewGroup;
import com.pingan.main.PAVideoManage;
import com.pingan.main.PAVideoManage.HandlerState;
import com.xueqiu.android.base.h5.b;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.trade.b.h;
import com.xueqiu.android.trade.b.i;

public final class f
  implements h
{
  public i a;
  b b;
  int c = 0;
  int d = 0;
  Handler e = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      }
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  f.this.a.j();
                  return;
                  if (f.this.b != null)
                  {
                    f.this.d = paramAnonymousMessage.what;
                    f.a(f.this, f.a(f.this, paramAnonymousMessage.what, "", "获取不到坐席"));
                  }
                } while (f.this.c == 3);
                f.this.a.c(paramAnonymousMessage.obj.toString());
                return;
                localObject = f.this;
                ((f)localObject).c += 1;
              } while ((f.this.c != 3) || (f.this.b == null));
              f.this.d = paramAnonymousMessage.what;
              f.a(f.this, f.a(f.this, paramAnonymousMessage.what, "", "坐席全忙"));
              return;
              f.this.a.b(paramAnonymousMessage.obj.toString());
              return;
            } while (f.this.b == null);
            f.this.d = paramAnonymousMessage.what;
            f.a(f.this, f.a(f.this, paramAnonymousMessage.what, "", paramAnonymousMessage.obj.toString()));
            return;
          } while (f.this.b == null);
          f.this.d = paramAnonymousMessage.what;
          localObject = paramAnonymousMessage.obj.toString();
          localObject = ((String)localObject).substring(((String)localObject).indexOf("msg:") + 4, ((String)localObject).indexOf("step:"));
          f.a(f.this, f.a(f.this, paramAnonymousMessage.what, "", (String)localObject));
          return;
        } while (f.this.b == null);
        f.this.d = paramAnonymousMessage.what;
        paramAnonymousMessage = f.this;
        Object localObject = f.this;
        Intent localIntent = new Intent();
        Bundle localBundle = new Bundle();
        localIntent.putExtra("extra_event_result", 0);
        localBundle.putParcelable("extra_event", ((f)localObject).b);
        localIntent.putExtras(localBundle);
        f.a(paramAnonymousMessage, localIntent);
        return;
      } while (f.this.b == null);
      f.this.d = paramAnonymousMessage.what;
      f.a(f.this, f.a(f.this, paramAnonymousMessage.what, "", paramAnonymousMessage.obj.toString()));
    }
  };
  private ViewGroup f;
  private SurfaceView g;
  private SurfaceView h;
  
  public f(i parami, String paramString1, String paramString2, b paramb, ViewGroup paramViewGroup, SurfaceView paramSurfaceView1, SurfaceView paramSurfaceView2)
  {
    if ((paramb == null) || (parami == null)) {
      return;
    }
    this.a = parami;
    this.b = paramb;
    this.f = paramViewGroup;
    this.g = paramSurfaceView1;
    this.h = paramSurfaceView2;
    if ((paramString1 != null) && (paramString2 != null))
    {
      parami = new PAVideoManage.HandlerState()
      {
        public final void handlerState(int paramAnonymousInt, String paramAnonymousString)
        {
          Log.e("HandlerState", "log in xueqiu: " + paramAnonymousInt + paramAnonymousString);
          Message localMessage = new Message();
          localMessage.what = paramAnonymousInt;
          localMessage.obj = paramAnonymousString;
          f.this.e.sendMessage(localMessage);
        }
      };
      Log.e("HandlerState", "log in xueqiu: " + paramString1 + "     " + paramString2);
      PAVideoManage.getInstance(((Activity)this.a).getApplicationContext()).onPACreate(parami, this.f, this.g, this.h);
      this.a.b("正在启动视频...");
      return;
    }
    aa.a("H5传递参数错误");
  }
  
  public final void a() {}
  
  public final void b() {}
  
  public final Intent c()
  {
    Intent localIntent = new Intent();
    Bundle localBundle = new Bundle();
    localIntent.putExtra("extra_event_result", 1);
    localBundle.putParcelable("extra_event", this.b);
    localIntent.putExtras(localBundle);
    return localIntent;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */