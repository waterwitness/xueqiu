package android.support.v4.a;

import android.os.Build.VERSION;
import android.os.Bundle;

public final class bv
  extends cc
{
  public static final cd a;
  private static final bw g;
  private final String b;
  private final CharSequence c;
  private final CharSequence[] d;
  private final boolean e;
  private final Bundle f;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20) {
      g = new bx();
    }
    for (;;)
    {
      a = new cd() {};
      return;
      if (Build.VERSION.SDK_INT >= 16) {
        g = new bz();
      } else {
        g = new by();
      }
    }
  }
  
  public final String a()
  {
    return this.b;
  }
  
  public final CharSequence b()
  {
    return this.c;
  }
  
  public final CharSequence[] c()
  {
    return this.d;
  }
  
  public final boolean d()
  {
    return this.e;
  }
  
  public final Bundle e()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\bv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */