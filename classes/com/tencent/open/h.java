package com.tencent.open;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import java.lang.ref.WeakReference;

final class h
  extends Handler
{
  private g a;
  
  public h(g paramg, Looper paramLooper)
  {
    super(paramLooper);
    this.a = paramg;
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    do
    {
      do
      {
        do
        {
          return;
          g.a(this.a, (String)paramMessage.obj);
          return;
          this.a.onCancel();
          return;
        } while ((TDialog.a() == null) || (TDialog.a().get() == null));
        TDialog.a((Context)TDialog.a().get(), (String)paramMessage.obj);
        return;
      } while ((TDialog.b() == null) || (TDialog.b().get() == null));
      ((View)TDialog.b().get()).setVisibility(8);
      return;
    } while ((TDialog.a() == null) || (TDialog.a().get() == null));
    TDialog.b((Context)TDialog.a().get(), (String)paramMessage.obj);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */