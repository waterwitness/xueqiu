package android.support.v4.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import java.io.PrintWriter;

public abstract class p<E>
  extends n
{
  final Activity b;
  final Context c;
  final Handler d;
  final int e;
  final r f = new r();
  android.support.v4.e.n<String, ag> g;
  public ai h;
  public boolean i;
  public boolean j;
  
  private p(Activity paramActivity, Context paramContext, Handler paramHandler)
  {
    this.b = paramActivity;
    this.c = paramContext;
    this.d = paramHandler;
    this.e = 0;
  }
  
  p(k paramk)
  {
    this(paramk, paramk, paramk.a);
  }
  
  public final ai a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.g == null) {
      this.g = new android.support.v4.e.n();
    }
    ai localai = (ai)this.g.get(paramString);
    if (localai == null)
    {
      if (paramBoolean2)
      {
        localai = new ai(paramString, this, paramBoolean1);
        this.g.put(paramString, localai);
      }
      return localai;
    }
    localai.h = this;
    return localai;
  }
  
  @Nullable
  public View a(int paramInt)
  {
    return null;
  }
  
  public void a(i parami, Intent paramIntent, int paramInt)
  {
    if (paramInt != -1) {
      throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }
    this.c.startActivity(paramIntent);
  }
  
  final void a(String paramString)
  {
    if (this.g != null)
    {
      ai localai = (ai)this.g.get(paramString);
      if ((localai != null) && (!localai.f))
      {
        localai.g();
        this.g.remove(paramString);
      }
    }
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString) {}
  
  public boolean a()
  {
    return true;
  }
  
  public boolean b()
  {
    return true;
  }
  
  public LayoutInflater c()
  {
    return (LayoutInflater)this.c.getSystemService("layout_inflater");
  }
  
  public void d() {}
  
  public boolean e()
  {
    return true;
  }
  
  public int f()
  {
    return this.e;
  }
  
  final android.support.v4.e.n<String, ag> g()
  {
    int m = 0;
    int n;
    if (this.g != null)
    {
      int i1 = this.g.size();
      ai[] arrayOfai = new ai[i1];
      int k = i1 - 1;
      while (k >= 0)
      {
        arrayOfai[k] = ((ai)this.g.c(k));
        k -= 1;
      }
      k = 0;
      n = k;
      if (m < i1)
      {
        ai localai = arrayOfai[m];
        if (localai.f) {
          k = 1;
        }
        for (;;)
        {
          m += 1;
          break;
          localai.g();
          this.g.remove(localai.d);
        }
      }
    }
    else
    {
      n = 0;
    }
    if (n != 0) {
      return this.g;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */