package com.umeng.update.net;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import u.a.b;

class a$b
  extends Handler
{
  a$b(a parama) {}
  
  public void handleMessage(Message paramMessage)
  {
    for (;;)
    {
      try
      {
        b.c(a.b(), "DownloadAgent.handleMessage(" + paramMessage.what + "): ");
        switch (paramMessage.what)
        {
        case 4: 
          super.handleMessage(paramMessage);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        b.c(a.b(), "DownloadAgent.handleMessage(" + paramMessage.what + "): " + localException.getMessage());
        return;
      }
      if (a.k(this.a) == null) {
        break;
      }
      a.k(this.a).d();
      return;
      if (a.k(this.a) == null) {
        break;
      }
      a.k(this.a).a(paramMessage.arg1);
      return;
      a.l(this.a).unbindService(a.m(this.a));
      if (a.k(this.a) == null) {
        break;
      }
      if ((paramMessage.arg1 == 1) || (paramMessage.arg1 == 3) || (paramMessage.arg1 == 5))
      {
        a.k(this.a).a(paramMessage.arg1, paramMessage.arg2, paramMessage.getData().getString("filename"));
        return;
      }
      a.k(this.a).a(0, 0, null);
      b.c(a.b(), "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): ");
      return;
      a.k(this.a).b(paramMessage.arg1);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\a$b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */