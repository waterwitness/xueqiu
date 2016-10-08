package com.tencent.open;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class d
  extends Handler
{
  private c a;
  
  public d(c paramc, Looper paramLooper)
  {
    super(paramLooper);
    this.a = paramc;
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
        return;
        c.a(this.a, (String)paramMessage.obj);
        return;
        this.a.onCancel();
        return;
      } while ((PKDialog.access$400() == null) || (PKDialog.access$400().get() == null));
      PKDialog.access$800((Context)PKDialog.access$400().get(), (String)paramMessage.obj);
      return;
    } while ((PKDialog.access$400() == null) || (PKDialog.access$400().get() == null));
    PKDialog.access$900((Context)PKDialog.access$400().get(), (String)paramMessage.obj);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */