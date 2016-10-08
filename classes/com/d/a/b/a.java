package com.d.a.b;

import android.content.Context;
import com.d.a.b.a.a.c;
import com.d.a.b.a.h;
import com.d.a.c.d;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a
{
  public static com.d.a.a.a.b a(Context paramContext, com.d.a.a.a.b.a parama, long paramLong, int paramInt)
  {
    Object localObject1 = com.d.a.c.f.a(paramContext, false);
    Object localObject2 = new File((File)localObject1, "uil-images");
    if ((((File)localObject2).exists()) || (((File)localObject2).mkdir())) {
      localObject1 = localObject2;
    }
    File localFile;
    if ((paramLong > 0L) || (paramInt > 0))
    {
      localObject2 = com.d.a.c.f.a(paramContext, true);
      localFile = new File((File)localObject2, "uil-images");
      if ((localFile.exists()) || (localFile.mkdir())) {
        break label130;
      }
    }
    for (;;)
    {
      try
      {
        localObject2 = new com.d.a.a.a.a.a.f((File)localObject2, (File)localObject1, parama, paramLong, paramInt);
        return (com.d.a.a.a.b)localObject2;
      }
      catch (IOException localIOException)
      {
        d.a(localIOException);
      }
      return new com.d.a.a.a.a.b(com.d.a.c.f.a(paramContext, true), (File)localObject1, parama);
      label130:
      Object localObject3 = localFile;
    }
  }
  
  public static Executor a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 == h.b)
    {
      paramInt3 = 1;
      if (paramInt3 == 0) {
        break label52;
      }
    }
    label52:
    for (Object localObject = new c();; localObject = new LinkedBlockingQueue())
    {
      localObject = (BlockingQueue)localObject;
      return new ThreadPoolExecutor(paramInt1, paramInt1, 0L, TimeUnit.MILLISECONDS, (BlockingQueue)localObject, a(paramInt2, "uil-pool-"));
      paramInt3 = 0;
      break;
    }
  }
  
  static ThreadFactory a(int paramInt, String paramString)
  {
    return new b(paramInt, paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */