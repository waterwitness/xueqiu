package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;

public abstract class ao
{
  public final View a;
  int b = -1;
  int c = -1;
  long d = -1L;
  int e = -1;
  int f = -1;
  ao g = null;
  ao h = null;
  int i;
  af j = null;
  private int k = 0;
  
  public ao(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    this.a = paramView;
  }
  
  final void a()
  {
    this.c = -1;
    this.f = -1;
  }
  
  final void a(int paramInt)
  {
    this.i |= paramInt;
  }
  
  final void a(int paramInt1, int paramInt2)
  {
    this.i = (this.i & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  final void a(int paramInt, boolean paramBoolean)
  {
    if (this.c == -1) {
      this.c = this.b;
    }
    if (this.f == -1) {
      this.f = this.b;
    }
    if (paramBoolean) {
      this.f += paramInt;
    }
    this.b += paramInt;
    if (this.a.getLayoutParams() != null) {
      ((ab)this.a.getLayoutParams()).c = true;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    int m;
    if (paramBoolean)
    {
      m = this.k - 1;
      this.k = m;
      if (this.k >= 0) {
        break label61;
      }
      this.k = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
    }
    label61:
    do
    {
      return;
      m = this.k + 1;
      break;
      if ((!paramBoolean) && (this.k == 1))
      {
        this.i |= 0x10;
        return;
      }
    } while ((!paramBoolean) || (this.k != 0));
    this.i &= 0xFFFFFFEF;
  }
  
  final boolean b()
  {
    return (this.i & 0x80) != 0;
  }
  
  public final int c()
  {
    if (this.f == -1) {
      return this.b;
    }
    return this.f;
  }
  
  final boolean d()
  {
    return this.j != null;
  }
  
  final void e()
  {
    this.j.b(this);
  }
  
  final boolean f()
  {
    return (this.i & 0x20) != 0;
  }
  
  final void g()
  {
    this.i &= 0xFFFFFFDF;
  }
  
  final void h()
  {
    this.i &= 0xFEFF;
  }
  
  final boolean i()
  {
    return (this.i & 0x4) != 0;
  }
  
  final boolean j()
  {
    return (this.i & 0x2) != 0;
  }
  
  final boolean k()
  {
    return (this.i & 0x40) != 0;
  }
  
  final boolean l()
  {
    return (this.i & 0x1) != 0;
  }
  
  final boolean m()
  {
    return (this.i & 0x8) != 0;
  }
  
  final boolean n()
  {
    return (this.i & 0x100) != 0;
  }
  
  final void o()
  {
    this.i = 0;
    this.b = -1;
    this.c = -1;
    this.d = -1L;
    this.f = -1;
    this.k = 0;
    this.g = null;
    this.h = null;
  }
  
  public final boolean p()
  {
    return ((this.i & 0x10) == 0) && (!ViewCompat.c(this.a));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + this.b + " id=" + this.d + ", oldPos=" + this.c + ", pLpos:" + this.f);
    if (d()) {
      localStringBuilder.append(" scrap");
    }
    if (i()) {
      localStringBuilder.append(" invalid");
    }
    if (!l()) {
      localStringBuilder.append(" unbound");
    }
    if (j()) {
      localStringBuilder.append(" update");
    }
    if (m()) {
      localStringBuilder.append(" removed");
    }
    if (b()) {
      localStringBuilder.append(" ignored");
    }
    if (k()) {
      localStringBuilder.append(" changed");
    }
    if (n()) {
      localStringBuilder.append(" tmpDetached");
    }
    if (!p()) {
      localStringBuilder.append(" not recyclable(" + this.k + ")");
    }
    if (this.a.getParent() == null) {
      localStringBuilder.append(" no parent");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */