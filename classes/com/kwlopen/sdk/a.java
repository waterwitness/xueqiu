package com.kwlopen.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import com.b.a.a.d;
import java.util.concurrent.ExecutorService;
import org.apache.cordova.f;
import org.apache.cordova.g;

public final class a
  extends ContextWrapper
  implements f
{
  f a;
  
  public a(Context paramContext, f paramf)
  {
    super(paramContext);
    this.a = paramf;
  }
  
  public final Activity getActivity()
  {
    return this.a.getActivity();
  }
  
  public final ExecutorService getThreadPool()
  {
    return this.a.getThreadPool();
  }
  
  public final Object onMessage(String paramString, Object paramObject)
  {
    return this.a.onMessage(paramString, paramObject);
  }
  
  public final void startActivityForResult(g paramg, Intent paramIntent, int paramInt)
  {
    d.b("startActivityForResult CordovaContext");
    this.a.startActivityForResult(paramg, paramIntent, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */