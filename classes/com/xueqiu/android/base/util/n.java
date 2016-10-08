package com.xueqiu.android.base.util;

import android.content.Context;
import android.os.Environment;
import com.d.a.a.a.a.a.f;
import com.d.a.a.b.c;
import com.d.a.b.e;
import com.d.a.b.h;
import com.d.a.b.i;
import com.d.a.c.d;
import java.io.File;
import java.io.IOException;

public final class n
{
  public static e a()
  {
    e locale = new e();
    locale.h = true;
    locale.i = true;
    return locale;
  }
  
  public static h a(Context paramContext)
  {
    int j = Math.min((int)((float)Runtime.getRuntime().maxMemory() * 0.15F), 20971520);
    Object localObject2;
    Object localObject1;
    if (Environment.getExternalStorageDirectory().exists())
    {
      localObject2 = new File(new File(Environment.getExternalStorageDirectory(), "snowball"), "image_cache");
      localObject1 = localObject2;
      if (!((File)localObject2).exists())
      {
        v.a("ImageLoaderConfiguration", "Trying to create storageDirectory: " + String.valueOf(((File)localObject2).mkdirs()));
        localObject1 = localObject2;
      }
    }
    try
    {
      Object localObject3 = new e();
      ((e)localObject3).h = true;
      ((e)localObject3).i = true;
      int i = Runtime.getRuntime().availableProcessors();
      if (i < 4) {}
      for (;;)
      {
        localObject2 = new i(paramContext);
        ((i)localObject2).m = ((e)localObject3).b();
        if ((((i)localObject2).b != null) || (((i)localObject2).c != null)) {
          d.c("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
        }
        ((i)localObject2).d = i;
        ((i)localObject2).l = new p(paramContext);
        ((i)localObject2).e = true;
        localObject3 = new com.d.a.a.b.a.b(j);
        if (((i)localObject2).f != 0) {
          d.c("memoryCache() and memoryCacheSize() calls overlap each other", new Object[0]);
        }
        ((i)localObject2).i = ((c)localObject3);
        localObject1 = new f((File)localObject1, null, new com.d.a.a.a.b.b(), 0L, 3000);
        if ((((i)localObject2).g > 0L) || (((i)localObject2).h > 0)) {
          d.c("diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other", new Object[0]);
        }
        if (((i)localObject2).k != null) {
          d.c("diskCache() and diskCacheFileNameGenerator() calls overlap each other", new Object[0]);
        }
        ((i)localObject2).j = ((com.d.a.a.a.b)localObject1);
        localObject1 = ((i)localObject2).a();
        return (h)localObject1;
        localObject1 = paramContext.getFilesDir();
        break;
        i = 4;
      }
      return new i(paramContext).a();
    }
    catch (IOException localIOException)
    {
      aa.a(localIOException);
    }
  }
  
  public static e b()
  {
    e locale = new e();
    locale.h = false;
    locale.i = true;
    return locale;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */