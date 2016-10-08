package u.aly;

import android.content.Context;
import com.umeng.analytics.e;
import com.umeng.analytics.f;

public final class gv
  implements gz
{
  private static gv c;
  public gz a;
  private Context b;
  
  private gv(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    this.a = new j(this.b);
  }
  
  public static gv a(Context paramContext)
  {
    try
    {
      if ((c == null) && (paramContext != null)) {
        c = new gv(paramContext);
      }
      paramContext = c;
      return paramContext;
    }
    finally {}
  }
  
  public final void a()
  {
    e.b(new f()
    {
      public final void a()
      {
        gv.this.a.a();
      }
    });
  }
  
  public final void a(final ha paramha)
  {
    e.b(new f()
    {
      public final void a()
      {
        gv.this.a.a(paramha);
      }
    });
  }
  
  public final void b()
  {
    e.b(new f()
    {
      public final void a()
      {
        gv.this.a.b();
      }
    });
  }
  
  public final void b(ha paramha)
  {
    this.a.b(paramha);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */