package com.xiaomi.push.a;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class f
  extends d
{
  File a;
  
  public f(b paramb, int paramInt, Date paramDate1, Date paramDate2, String paramString1, String paramString2, boolean paramBoolean)
  {
    super(paramb);
  }
  
  public final void a()
  {
    long l2 = 0L;
    int m = 1;
    long l1;
    int k;
    if (!com.xiaomi.a.a.a.c.b()) {
      if (com.xiaomi.a.a.a.c.b())
      {
        l1 = l2;
        if (l1 > 102400L) {
          break label117;
        }
        k = 1;
        label34:
        if ((k != 0) || (com.xiaomi.a.a.a.c.a())) {
          break label123;
        }
        k = m;
        label49:
        if (k != 0) {
          break label129;
        }
      }
    }
    for (;;)
    {
      return;
      Object localObject = Environment.getExternalStorageDirectory();
      l1 = l2;
      if (localObject == null) {
        break;
      }
      l1 = l2;
      if (TextUtils.isEmpty(((File)localObject).getPath())) {
        break;
      }
      localObject = new StatFs(((File)localObject).getPath());
      l1 = ((StatFs)localObject).getBlockSize();
      l1 = (((StatFs)localObject).getAvailableBlocks() - 4L) * l1;
      break;
      label117:
      k = 0;
      break label34;
      label123:
      k = 0;
      break label49;
      try
      {
        label129:
        File localFile = new File(b.a(this.j).getExternalFilesDir(null) + "/.logcache");
        localFile.mkdirs();
        if (!localFile.isDirectory()) {
          continue;
        }
        a locala = new a();
        k = this.d;
        if (k != 0) {
          locala.e = k;
        }
        localObject = b.a(this.j);
        Date localDate1 = this.e;
        Date localDate2 = this.f;
        if ("com.xiaomi.xmsf".equalsIgnoreCase(((Context)localObject).getPackageName()))
        {
          localObject = ((Context)localObject).getFilesDir();
          locala.a(new File((File)localObject, "xmsf.log.1"));
          locala.a(new File((File)localObject, "xmsf.log"));
          if (!((File)localObject).isDirectory()) {
            break label563;
          }
          localObject = new File(localFile, localDate1.getTime() + "-" + localDate2.getTime() + ".zip");
          if (((File)localObject).exists()) {
            break label563;
          }
          if (!localDate1.after(localDate2)) {
            break label534;
          }
          locala.c = locala.a.format(localDate2);
          locala.d = locala.a.format(localDate1);
          label365:
          l1 = System.currentTimeMillis();
          localFile = new File(localFile, "log.txt");
          locala.b(localFile);
          com.xiaomi.a.a.b.c.c("LOG: filter cost = " + (System.currentTimeMillis() - l1));
          if (!localFile.exists()) {
            break label563;
          }
          l1 = System.currentTimeMillis();
          com.xiaomi.a.a.a.a.a((File)localObject, localFile);
          com.xiaomi.a.a.b.c.c("LOG: zip cost = " + (System.currentTimeMillis() - l1));
          localFile.delete();
          if (!((File)localObject).exists()) {
            break label563;
          }
        }
        for (;;)
        {
          this.a = ((File)localObject);
          return;
          localObject = new File(((Context)localObject).getExternalFilesDir(null) + a.b);
          locala.a(new File((File)localObject, "log0.txt"));
          locala.a(new File((File)localObject, "log1.txt"));
          break;
          label534:
          locala.c = locala.a.format(localDate1);
          locala.d = locala.a.format(localDate2);
          break label365;
          label563:
          localObject = null;
        }
        return;
      }
      catch (NullPointerException localNullPointerException) {}
    }
  }
  
  public final void b()
  {
    if ((this.a != null) && (this.a.exists())) {
      b.b(this.j).add(new e(this.j, this.g, this.h, this.a, this.i));
    }
    b.a(this.j, 0L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */