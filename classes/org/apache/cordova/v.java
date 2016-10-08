package org.apache.cordova;

import android.os.Message;
import android.util.Log;
import android.webkit.WebView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class v
  extends q
{
  Method b;
  Object c;
  boolean d;
  
  private v(p paramp)
  {
    super(paramp, (byte)0);
  }
  
  final void a()
  {
    Object localObject2;
    Object localObject1;
    if ((this.b == null) && (!this.d))
    {
      localObject2 = p.b(this.e);
      localObject1 = localObject2;
    }
    try
    {
      Object localObject3 = WebView.class.getDeclaredField("mProvider");
      localObject1 = localObject2;
      ((Field)localObject3).setAccessible(true);
      localObject1 = localObject2;
      localObject2 = ((Field)localObject3).get(p.b(this.e));
      localObject1 = localObject2;
      localObject3 = localObject2.getClass();
      localObject1 = localObject2;
      localObject2 = localObject3;
      Class localClass;
      return;
    }
    catch (Throwable localThrowable3)
    {
      try
      {
        for (;;)
        {
          localObject2 = ((Class)localObject2).getDeclaredField("mWebViewCore");
          ((Field)localObject2).setAccessible(true);
          this.c = ((Field)localObject2).get(localObject1);
          if (this.c != null)
          {
            this.b = this.c.getClass().getDeclaredMethod("sendMessage", new Class[] { Message.class });
            this.b.setAccessible(true);
          }
          if (this.b != null) {
            localObject1 = Message.obtain(null, 194, p.a(this.e));
          }
          try
          {
            this.b.invoke(this.c, new Object[] { localObject1 });
            return;
          }
          catch (Throwable localThrowable2)
          {
            Log.e("JsMessageQueue", "Reflection message bridge failed.", localThrowable2);
          }
          localThrowable3 = localThrowable3;
          localClass = WebView.class;
        }
      }
      catch (Throwable localThrowable1)
      {
        for (;;)
        {
          this.d = true;
          Log.e("JsMessageQueue", "PrivateApiBridgeMode failed to find the expected APIs.", localThrowable1);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */