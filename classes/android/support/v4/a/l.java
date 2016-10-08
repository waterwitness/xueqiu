package android.support.v4.a;

import android.content.Intent;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.io.PrintWriter;

final class l
  extends p<k>
{
  public l(k paramk)
  {
    super(paramk);
  }
  
  @Nullable
  public final View a(int paramInt)
  {
    return this.a.findViewById(paramInt);
  }
  
  public final void a(i parami, Intent paramIntent, int paramInt)
  {
    this.a.a(parami, paramIntent, paramInt);
  }
  
  public final void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    this.a.dump(paramString, null, paramPrintWriter, paramArrayOfString);
  }
  
  public final boolean a()
  {
    Window localWindow = this.a.getWindow();
    return (localWindow != null) && (localWindow.peekDecorView() != null);
  }
  
  public final boolean b()
  {
    return !this.a.isFinishing();
  }
  
  public final LayoutInflater c()
  {
    return this.a.getLayoutInflater().cloneInContext(this.a);
  }
  
  public final void d()
  {
    this.a.b();
  }
  
  public final boolean e()
  {
    return this.a.getWindow() != null;
  }
  
  public final int f()
  {
    Window localWindow = this.a.getWindow();
    if (localWindow == null) {
      return 0;
    }
    return localWindow.getAttributes().windowAnimations;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */