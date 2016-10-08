package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ac;
import android.support.v4.widget.r;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

final class an
  implements Runnable
{
  int a;
  int b;
  ac c;
  private Interpolator e = RecyclerView.h();
  private boolean f = false;
  private boolean g = false;
  
  public an(RecyclerView paramRecyclerView)
  {
    this.c = ac.a(paramRecyclerView.getContext(), RecyclerView.h());
  }
  
  final void a()
  {
    if (this.f)
    {
      this.g = true;
      return;
    }
    ViewCompat.a(this.d, this);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    int k = Math.abs(paramInt1);
    int m = Math.abs(paramInt2);
    int n;
    int i1;
    if (k > m)
    {
      j = 1;
      n = (int)Math.sqrt(0.0D);
      i1 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (j == 0) {
        break label155;
      }
    }
    label155:
    for (int i = this.d.getWidth();; i = this.d.getHeight())
    {
      int i2 = i / 2;
      float f3 = Math.min(1.0F, i1 * 1.0F / i);
      float f1 = i2;
      float f2 = i2;
      f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
      if (n <= 0) {
        break label167;
      }
      i = Math.round(1000.0F * Math.abs((f3 * f2 + f1) / n)) * 4;
      a(paramInt1, paramInt2, Math.min(i, 2000));
      return;
      j = 0;
      break;
    }
    label167:
    if (j != 0) {}
    for (int j = k;; j = m)
    {
      i = (int)((j / i + 1.0F) * 300.0F);
      break;
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt2, paramInt3, RecyclerView.h());
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    if (this.e != paramInterpolator)
    {
      this.e = paramInterpolator;
      this.c = ac.a(this.d.getContext(), paramInterpolator);
    }
    RecyclerView.b(this.d, 2);
    this.b = 0;
    this.a = 0;
    this.c.a(0, 0, paramInt1, paramInt2, paramInt3);
    a();
  }
  
  public final void run()
  {
    this.g = false;
    this.f = true;
    RecyclerView.f(this.d);
    ac localac = this.c;
    aj localaj = RecyclerView.e(this.d).j;
    int i4;
    int i5;
    int n;
    int m;
    int i1;
    int j;
    int i;
    int k;
    int i2;
    Object localObject;
    if (localac.g())
    {
      i4 = localac.b();
      i5 = localac.c();
      int i6 = i4 - this.a;
      int i7 = i5 - this.b;
      n = 0;
      i3 = 0;
      m = 0;
      i1 = 0;
      this.a = i4;
      this.b = i5;
      j = 0;
      i = 0;
      k = 0;
      i2 = 0;
      if (RecyclerView.g(this.d) != null)
      {
        this.d.a();
        RecyclerView.a(this.d, true);
        j = i3;
        if (i6 != 0)
        {
          j = RecyclerView.e(this.d).a(i6, this.d.a, this.d.n);
          i = i6 - j;
        }
        k = i2;
        m = i1;
        if (i7 != 0)
        {
          m = RecyclerView.e(this.d).b(i7, this.d.a, this.d.n);
          k = i7 - m;
        }
        if (RecyclerView.h(this.d))
        {
          i1 = this.d.c.a();
          n = 0;
          if (n < i1)
          {
            View localView = this.d.c.b(n);
            localObject = this.d.a(localView);
            if ((localObject != null) && (((ao)localObject).h != null)) {
              if (((ao)localObject).h == null) {
                break label373;
              }
            }
            label373:
            for (localObject = ((ao)localObject).h.a;; localObject = null)
            {
              if (localObject != null)
              {
                i2 = localView.getLeft();
                i3 = localView.getTop();
                if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
                  ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
                }
              }
              n += 1;
              break;
            }
          }
        }
        if ((localaj != null) && (!localaj.b) && (localaj.c))
        {
          n = this.d.n.a();
          if (n != 0) {
            break label772;
          }
          localaj.a();
        }
        RecyclerView.a(this.d, false);
        this.d.a(false);
        n = j;
        j = i;
      }
      if ((i6 != n) || (i7 != m)) {
        break label796;
      }
      i1 = 1;
      label459:
      if (!RecyclerView.i(this.d).isEmpty()) {
        this.d.invalidate();
      }
      if (ViewCompat.a(this.d) != 2) {
        RecyclerView.a(this.d, i6, i7);
      }
      if ((j != 0) || (k != 0))
      {
        i2 = (int)localac.f();
        if (j == i4) {
          break label892;
        }
        if (j >= 0) {
          break label802;
        }
        i = -i2;
      }
    }
    label535:
    label556:
    label592:
    label612:
    label772:
    label796:
    label802:
    label835:
    label857:
    label892:
    for (int i3 = i;; i3 = 0)
    {
      if (k != i5) {
        if (k < 0) {
          i = -i2;
        }
      }
      for (;;)
      {
        if (ViewCompat.a(this.d) != 2)
        {
          localObject = this.d;
          if (i3 >= 0) {
            break label835;
          }
          ((RecyclerView)localObject).b();
          ((RecyclerView)localObject).h.a(-i3);
          if (i >= 0) {
            break label857;
          }
          ((RecyclerView)localObject).d();
          ((RecyclerView)localObject).i.a(-i);
          if ((i3 != 0) || (i != 0)) {
            ViewCompat.d((View)localObject);
          }
        }
        if (((i3 != 0) || (j == i4) || (localac.d() == 0)) && ((i != 0) || (k == i5) || (localac.e() == 0))) {
          localac.h();
        }
        if ((n != 0) || (m != 0))
        {
          RecyclerView.j(this.d);
          if (RecyclerView.k(this.d) != null) {
            RecyclerView.k(this.d);
          }
        }
        if (!RecyclerView.l(this.d)) {
          this.d.invalidate();
        }
        if ((localac.a()) || (i1 == 0)) {
          RecyclerView.b(this.d, 0);
        }
        for (;;)
        {
          if ((localaj != null) && (localaj.b)) {
            aj.a(localaj);
          }
          this.f = false;
          if (this.g) {
            a();
          }
          return;
          if (localaj.a >= n) {
            localaj.a = (n - 1);
          }
          aj.a(localaj);
          break;
          i1 = 0;
          break label459;
          if (j > 0)
          {
            i = i2;
            break label535;
          }
          i = 0;
          break label535;
          i = i2;
          if (k > 0) {
            break label556;
          }
          i = 0;
          break label556;
          if (i3 <= 0) {
            break label592;
          }
          ((RecyclerView)localObject).c();
          ((RecyclerView)localObject).j.a(i3);
          break label592;
          if (i <= 0) {
            break label612;
          }
          ((RecyclerView)localObject).e();
          ((RecyclerView)localObject).k.a(i);
          break label612;
          a();
        }
        i = 0;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */