package com.d.a.b;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.ImageView;
import com.d.a.b.a.i;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public class f
{
  public static final String a = f.class.getSimpleName();
  private static volatile f e;
  public h b;
  private l c;
  private final com.d.a.b.f.a d = new com.d.a.b.f.d();
  
  private static Handler a(d paramd)
  {
    Handler localHandler = paramd.r;
    if (paramd.s) {
      paramd = null;
    }
    do
    {
      do
      {
        return paramd;
        paramd = localHandler;
      } while (localHandler != null);
      paramd = localHandler;
    } while (Looper.myLooper() != Looper.getMainLooper());
    return new Handler();
  }
  
  public static f a()
  {
    if (e == null) {}
    try
    {
      if (e == null) {
        e = new f();
      }
      return e;
    }
    finally {}
  }
  
  private void a(String paramString, com.d.a.b.e.a parama, d paramd, com.d.a.b.f.a parama1)
  {
    int i = 0;
    c();
    if (parama1 == null) {
      parama1 = this.d;
    }
    for (;;)
    {
      if (paramd == null) {
        paramd = this.b.r;
      }
      for (;;)
      {
        if (TextUtils.isEmpty(paramString))
        {
          this.c.b(parama);
          parama1.a(paramString, parama.d());
          if ((paramd.e != null) || (paramd.b != 0)) {
            i = 1;
          }
          if (i != 0)
          {
            localObject = this.b.a;
            if (paramd.b != 0)
            {
              paramd = ((Resources)localObject).getDrawable(paramd.b);
              parama.a(paramd);
            }
          }
          for (;;)
          {
            parama1.a(paramString, parama.d(), null);
            return;
            paramd = paramd.e;
            break;
            parama.a(null);
          }
        }
        com.d.a.b.a.f localf = com.d.a.c.a.a(parama, this.b.a());
        String str = paramString + "_" + localf.a + "x" + localf.b;
        this.c.e.put(Integer.valueOf(parama.f()), str);
        parama1.a(paramString, parama.d());
        Object localObject = (Bitmap)this.b.n.b(str);
        if ((localObject != null) && (!((Bitmap)localObject).isRecycled()))
        {
          com.d.a.c.d.a("Load image from memory cache [%s]", new Object[] { str });
          if (paramd.a())
          {
            paramString = new m(paramString, parama, localf, str, paramd, parama1, this.c.a(paramString));
            paramString = new p(this.c, (Bitmap)localObject, paramString, a(paramd));
            if (paramd.s)
            {
              paramString.run();
              return;
            }
            parama = this.c;
            parama.a();
            parama.c.execute(paramString);
            return;
          }
          paramd.q.display((Bitmap)localObject, parama, com.d.a.b.a.g.c);
          parama1.a(paramString, parama.d(), (Bitmap)localObject);
          return;
        }
        if ((paramd.d != null) || (paramd.a != 0))
        {
          i = 1;
          if (i == 0) {
            break label528;
          }
          localObject = this.b.a;
          if (paramd.a == 0) {
            break label519;
          }
          localObject = ((Resources)localObject).getDrawable(paramd.a);
          label450:
          parama.a((Drawable)localObject);
        }
        for (;;)
        {
          paramString = new m(paramString, parama, localf, str, paramd, parama1, this.c.a(paramString));
          paramString = new n(this.c, paramString, a(paramd));
          if (!paramd.s) {
            break label546;
          }
          paramString.run();
          return;
          i = 0;
          break;
          label519:
          localObject = paramd.d;
          break label450;
          label528:
          if (paramd.g) {
            parama.a(null);
          }
        }
        label546:
        parama = this.c;
        parama.d.execute(new l.1(parama, paramString));
        return;
      }
    }
  }
  
  private void b(String paramString, com.d.a.b.a.f paramf, d paramd, com.d.a.b.f.a parama)
  {
    c();
    com.d.a.b.a.f localf = paramf;
    if (paramf == null) {
      localf = this.b.a();
    }
    paramf = paramd;
    if (paramd == null) {
      paramf = this.b.r;
    }
    a(paramString, new com.d.a.b.e.c(paramString, localf, i.b), paramf, parama);
  }
  
  public final Bitmap a(String paramString, com.d.a.b.a.f paramf, d paramd)
  {
    Object localObject = paramd;
    if (paramd == null) {
      localObject = this.b.r;
    }
    paramd = new e().a((d)localObject);
    paramd.s = true;
    paramd = paramd.b();
    localObject = new g((byte)0);
    a(paramString, paramf, paramd, (com.d.a.b.f.a)localObject);
    return ((g)localObject).a;
  }
  
  public final void a(h paramh)
  {
    if (paramh == null) {
      try
      {
        throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
      }
      finally {}
    }
    if (this.b == null)
    {
      com.d.a.c.d.a("Initialize ImageLoader with configuration", new Object[0]);
      this.c = new l(paramh);
      this.b = paramh;
    }
    for (;;)
    {
      return;
      com.d.a.c.d.c("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
    }
  }
  
  public final void a(String paramString, ImageView paramImageView)
  {
    a(paramString, new com.d.a.b.e.b(paramImageView), null, null);
  }
  
  public final void a(String paramString, ImageView paramImageView, d paramd)
  {
    a(paramString, new com.d.a.b.e.b(paramImageView), paramd, null);
  }
  
  public final void a(String paramString, ImageView paramImageView, d paramd, com.d.a.b.f.a parama)
  {
    a(paramString, new com.d.a.b.e.b(paramImageView), paramd, parama);
  }
  
  public final void a(String paramString, com.d.a.b.a.f paramf, d paramd, com.d.a.b.f.a parama)
  {
    b(paramString, paramf, paramd, parama);
  }
  
  public final void a(String paramString, d paramd, com.d.a.b.f.a parama)
  {
    b(paramString, null, paramd, parama);
  }
  
  public final boolean b()
  {
    return this.b != null;
  }
  
  public final void c()
  {
    if (this.b == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
  }
  
  public final com.d.a.a.a.b d()
  {
    c();
    return this.b.o;
  }
  
  public final void e()
  {
    c();
    this.b.o.a();
  }
  
  public final void f()
  {
    this.c.f.set(true);
  }
  
  public final void g()
  {
    l locall = this.c;
    locall.f.set(false);
    synchronized (locall.i)
    {
      locall.i.notifyAll();
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */