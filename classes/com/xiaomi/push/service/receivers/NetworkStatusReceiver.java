package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class NetworkStatusReceiver
  extends BroadcastReceiver
{
  private static int a = 1;
  private static int b = 1;
  private static int c = 2;
  private static BlockingQueue<Runnable> d = new LinkedBlockingQueue();
  private static ThreadPoolExecutor e = new ThreadPoolExecutor(a, b, c, TimeUnit.SECONDS, d);
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    e.execute(new a(this, paramContext));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\receivers\NetworkStatusReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */