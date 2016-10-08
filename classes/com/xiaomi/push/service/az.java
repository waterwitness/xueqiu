package com.xiaomi.push.service;

import com.xiaomi.a.a.b.c;
import com.xiaomi.d.d;
import com.xiaomi.f.g;
import com.xiaomi.f.h;
import com.xiaomi.push.b.b;
import java.net.Socket;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class az
{
  private static final Pattern a = Pattern.compile("([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3})");
  private static long b = 0L;
  private static ThreadPoolExecutor c = new ThreadPoolExecutor(1, 1, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  
  public static void a()
  {
    long l = System.currentTimeMillis();
    if ((c.getActiveCount() > 0) && (l - b < 1800000L)) {}
    do
    {
      do
      {
        return;
      } while (!h.a.a);
      localObject = t.a().a;
    } while ((localObject == null) || (((b)localObject).d.size() <= 0));
    b = l;
    Object localObject = ((b)localObject).d;
    c.execute(new ba((List)localObject));
  }
  
  private static boolean b(String paramString)
  {
    long l1 = System.currentTimeMillis();
    try
    {
      c.a("ConnectivityTest: begin to connect to " + paramString);
      Socket localSocket = new Socket();
      localSocket.connect(d.b(paramString, 5222), 5000);
      localSocket.setTcpNoDelay(true);
      long l2 = System.currentTimeMillis();
      c.a("ConnectivityTest: connect to " + paramString + " in " + (l2 - l1));
      localSocket.close();
      return true;
    }
    catch (Throwable localThrowable)
    {
      c.d("ConnectivityTest: could not connect to:" + paramString + " exception: " + localThrowable.getClass().getSimpleName() + " description: " + localThrowable.getMessage());
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\az.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */