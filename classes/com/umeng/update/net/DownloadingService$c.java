package com.umeng.update.net;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import android.widget.Toast;
import java.util.Map;
import u.a.a;
import u.a.b;
import u.a.k;

class DownloadingService$c
  extends Handler
{
  DownloadingService$c(DownloadingService paramDownloadingService) {}
  
  public void handleMessage(Message paramMessage)
  {
    b.c(DownloadingService.a(), "IncomingHandler(msg.what:" + paramMessage.what + " msg.arg1:" + paramMessage.arg1 + " msg.arg2:" + paramMessage.arg2 + " msg.replyTo:" + paramMessage.replyTo);
    switch (paramMessage.what)
    {
    default: 
      super.handleMessage(paramMessage);
      return;
    }
    Object localObject = paramMessage.getData();
    b.c(DownloadingService.a(), "IncomingHandler(msg.getData():" + localObject);
    localObject = a.a.a((Bundle)localObject);
    if (DownloadingService.a(this.a).a((a.a)localObject, DownloadingService.r, paramMessage.replyTo))
    {
      b.a(DownloadingService.a(), ((a.a)localObject).b + " is already in downloading list. ");
      int i = DownloadingService.a(this.a).b((a.a)localObject);
      if ((i != -1) && (((c.b)DownloadingService.b().get(i)).a == null))
      {
        paramMessage = f.a(i, "continue");
        localObject = new Intent(DownloadingService.b(this.a), DownloadingService.class);
        ((Intent)localObject).putExtra("com.umeng.broadcast.download.msg", paramMessage);
        DownloadingService.a(this.a).a(this.a, (Intent)localObject);
        return;
      }
      Toast.makeText(DownloadingService.b(this.a), k.b(DownloadingService.b(this.a)), 0).show();
      localObject = Message.obtain();
      ((Message)localObject).what = 2;
      ((Message)localObject).arg1 = 2;
      ((Message)localObject).arg2 = 0;
      try
      {
        paramMessage.replyTo.send((Message)localObject);
        return;
      }
      catch (RemoteException paramMessage)
      {
        paramMessage.printStackTrace();
        return;
      }
    }
    if (a.d(this.a.getApplicationContext()))
    {
      DownloadingService.c().put(localObject, paramMessage.replyTo);
      Message localMessage = Message.obtain();
      localMessage.what = 1;
      localMessage.arg1 = 1;
      localMessage.arg2 = 0;
      try
      {
        paramMessage.replyTo.send(localMessage);
        DownloadingService.a(this.a, (a.a)localObject);
        return;
      }
      catch (RemoteException paramMessage)
      {
        for (;;)
        {
          paramMessage.printStackTrace();
        }
      }
    }
    Toast.makeText(DownloadingService.b(this.a), k.a(DownloadingService.b(this.a)), 0).show();
    localObject = Message.obtain();
    ((Message)localObject).what = 2;
    ((Message)localObject).arg1 = 4;
    ((Message)localObject).arg2 = 0;
    try
    {
      paramMessage.replyTo.send((Message)localObject);
      return;
    }
    catch (RemoteException paramMessage)
    {
      paramMessage.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\DownloadingService$c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */