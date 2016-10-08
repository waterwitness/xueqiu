package android.support.v7.widget;

import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.a.a;
import android.support.v4.view.a.ac;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;

public final class k
  extends aa
{
  int a;
  r b;
  boolean c = false;
  int d = -1;
  int e = Integer.MIN_VALUE;
  o f = null;
  final l g = new l(this);
  private n k;
  private boolean l;
  private boolean m = false;
  private boolean n = false;
  private boolean o = true;
  private boolean p;
  
  public k(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    a(null);
    if (paramInt != this.a)
    {
      this.a = paramInt;
      this.b = null;
      f();
    }
    a(null);
    if (this.m)
    {
      this.m = false;
      f();
    }
  }
  
  private int a(int paramInt, af paramaf, al paramal, boolean paramBoolean)
  {
    int i = this.b.c() - paramInt;
    if (i > 0)
    {
      int j = -d(-i, paramaf, paramal);
      i = j;
      if (paramBoolean)
      {
        paramInt = this.b.c() - (paramInt + j);
        i = j;
        if (paramInt > 0)
        {
          this.b.a(paramInt);
          i = j + paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private int a(af paramaf, n paramn, al paramal, boolean paramBoolean)
  {
    int i4 = paramn.c;
    if (paramn.g != Integer.MIN_VALUE)
    {
      if (paramn.c < 0) {
        paramn.g += paramn.c;
      }
      a(paramaf, paramn);
    }
    int i = paramn.c;
    int j = paramn.h;
    m localm = new m();
    j = i + j;
    label95:
    int i3;
    Object localObject1;
    int i1;
    label152:
    Object localObject2;
    int i2;
    if (j > 0) {
      if ((paramn.d >= 0) && (paramn.d < paramal.a()))
      {
        i = 1;
        if (i == 0) {
          break label426;
        }
        localm.a = 0;
        localm.b = false;
        localm.c = false;
        localm.d = false;
        if (paramn.j == null) {
          break label440;
        }
        i3 = paramn.j.size();
        localObject1 = null;
        i = Integer.MAX_VALUE;
        i1 = 0;
        if (i1 >= i3) {
          break label251;
        }
        localObject2 = (ao)paramn.j.get(i1);
        if ((!paramn.i) && (((ao)localObject2).m())) {
          break label1270;
        }
        i2 = (((ao)localObject2).c() - paramn.d) * paramn.e;
        if ((i2 < 0) || (i2 >= i)) {
          break label1270;
        }
        localObject1 = localObject2;
        if (i2 == 0) {
          break label251;
        }
        localObject1 = localObject2;
        i = i2;
      }
    }
    label251:
    label277:
    label426:
    label440:
    label466:
    label500:
    label515:
    label556:
    label733:
    label904:
    label956:
    label967:
    label1142:
    label1165:
    label1186:
    label1263:
    label1270:
    for (;;)
    {
      i1 += 1;
      break label152;
      i = 0;
      break label95;
      if (localObject1 != null)
      {
        paramn.d = (((ao)localObject1).c() + paramn.e);
        localObject1 = ((ao)localObject1).a;
        if (localObject1 != null) {
          break label466;
        }
        localm.b = true;
        if (!localm.b)
        {
          paramn.b += localm.a * paramn.f;
          if ((localm.c) && (this.k.j == null) && (paramal.i)) {
            break label1263;
          }
          paramn.c -= localm.a;
        }
      }
      for (i = j - localm.a;; i = j)
      {
        if (paramn.g != Integer.MIN_VALUE)
        {
          paramn.g += localm.a;
          if (paramn.c < 0) {
            paramn.g += paramn.c;
          }
          a(paramaf, paramn);
        }
        if ((paramBoolean) && (localm.d))
        {
          return i4 - paramn.c;
          localObject1 = null;
          break label277;
          localObject1 = paramaf.a(paramn.d);
          paramn.d += paramn.e;
          break label277;
          ab localab1 = (ab)((View)localObject1).getLayoutParams();
          boolean bool2;
          boolean bool1;
          RecyclerView localRecyclerView;
          ab localab3;
          int i5;
          if (paramn.j == null)
          {
            bool2 = this.c;
            if (paramn.f == -1)
            {
              bool1 = true;
              if (bool2 != bool1) {
                break label904;
              }
              super.a((View)localObject1, -1, false);
              ab localab2 = (ab)((View)localObject1).getLayoutParams();
              localRecyclerView = this.i;
              localab3 = (ab)((View)localObject1).getLayoutParams();
              if (localab3.c) {
                break label967;
              }
              localObject2 = localab3.b;
              i = ((Rect)localObject2).left;
              i1 = ((Rect)localObject2).right;
              i2 = ((Rect)localObject2).top;
              i3 = ((Rect)localObject2).bottom;
              ((View)localObject1).measure(aa.a(h(), i + i1 + 0 + (j() + l() + localab2.leftMargin + localab2.rightMargin), localab2.width, c()), aa.a(i(), i3 + i2 + 0 + (k() + m() + localab2.topMargin + localab2.bottomMargin), localab2.height, d()));
              localm.a = this.b.c((View)localObject1);
              if (this.a != 1) {
                break label1186;
              }
              if (!p()) {
                break label1142;
              }
              i1 = h() - l();
              i = i1 - this.b.d((View)localObject1);
              if (paramn.f != -1) {
                break label1165;
              }
              i3 = paramn.b;
              i2 = paramn.b;
              i5 = localm.a;
              i2 -= i5;
            }
          }
          for (;;)
          {
            i5 = localab1.leftMargin;
            int i6 = localab1.topMargin;
            int i7 = localab1.rightMargin;
            int i8 = localab1.bottomMargin;
            localObject2 = ((ab)((View)localObject1).getLayoutParams()).b;
            ((View)localObject1).layout(i + i5 + ((Rect)localObject2).left, i2 + i6 + ((Rect)localObject2).top, i1 - i7 - ((Rect)localObject2).right, i3 - i8 - ((Rect)localObject2).bottom);
            if ((localab1.a.m()) || (localab1.a.k())) {
              localm.c = true;
            }
            localm.d = ((View)localObject1).isFocusable();
            break;
            bool1 = false;
            break label500;
            super.a((View)localObject1, 0, false);
            break label515;
            bool2 = this.c;
            if (paramn.f == -1) {}
            for (bool1 = true;; bool1 = false)
            {
              if (bool2 != bool1) {
                break label956;
              }
              super.a((View)localObject1, -1, true);
              break;
            }
            super.a((View)localObject1, 0, true);
            break label515;
            localObject2 = localab3.b;
            ((Rect)localObject2).set(0, 0, 0, 0);
            i1 = localRecyclerView.g.size();
            i = 0;
            while (i < i1)
            {
              localRecyclerView.e.set(0, 0, 0, 0);
              localRecyclerView.g.get(i);
              Rect localRect = localRecyclerView.e;
              ((View)localObject1).getLayoutParams();
              localRect.set(0, 0, 0, 0);
              ((Rect)localObject2).left += localRecyclerView.e.left;
              ((Rect)localObject2).top += localRecyclerView.e.top;
              ((Rect)localObject2).right += localRecyclerView.e.right;
              ((Rect)localObject2).bottom += localRecyclerView.e.bottom;
              i += 1;
            }
            localab3.c = false;
            break label556;
            i = j();
            i1 = this.b.d((View)localObject1) + i;
            break label733;
            i2 = paramn.b;
            i3 = paramn.b + localm.a;
            continue;
            i2 = k();
            i3 = i2 + this.b.d((View)localObject1);
            if (paramn.f == -1)
            {
              i1 = paramn.b;
              i = paramn.b - localm.a;
            }
            else
            {
              i = paramn.b;
              i1 = paramn.b + localm.a;
            }
          }
        }
        j = i;
        break;
      }
    }
  }
  
  private View a(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = null;
    q();
    int j = this.b.b();
    int i1 = this.b.c();
    int i;
    Object localObject2;
    label36:
    View localView;
    if (paramInt2 > paramInt1)
    {
      i = 1;
      localObject2 = null;
      if (paramInt1 == paramInt2) {
        break label150;
      }
      localView = d(paramInt1);
      int i2 = a(localView);
      if ((i2 < 0) || (i2 >= paramInt3)) {
        break label165;
      }
      if (!((ab)localView.getLayoutParams()).a.m()) {
        break label106;
      }
      if (localObject2 != null) {
        break label165;
      }
      localObject2 = localView;
    }
    label106:
    label150:
    label162:
    label165:
    for (;;)
    {
      paramInt1 += i;
      break label36;
      i = -1;
      break;
      Object localObject3;
      if (this.b.a(localView) < i1)
      {
        localObject3 = localView;
        if (this.b.b(localView) >= j) {}
      }
      else
      {
        if (localObject1 != null) {
          break label165;
        }
        localObject1 = localView;
        continue;
        if (localObject1 == null) {
          break label162;
        }
        localObject3 = localObject1;
      }
      return (View)localObject3;
      return (View)localObject2;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    this.k.c = (this.b.c() - paramInt2);
    n localn = this.k;
    if (this.c) {}
    for (int i = -1;; i = 1)
    {
      localn.e = i;
      this.k.d = paramInt1;
      this.k.f = 1;
      this.k.b = paramInt2;
      this.k.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void a(int paramInt1, int paramInt2, boolean paramBoolean, al paramal)
  {
    int i = -1;
    int j = 1;
    this.k.h = g(paramal);
    this.k.f = paramInt1;
    if (paramInt1 == 1)
    {
      paramal = this.k;
      paramal.h += this.b.f();
      paramal = s();
      localn = this.k;
      if (this.c) {}
      for (paramInt1 = i;; paramInt1 = 1)
      {
        localn.e = paramInt1;
        this.k.d = (a(paramal) + this.k.e);
        this.k.b = this.b.b(paramal);
        paramInt1 = this.b.b(paramal) - this.b.c();
        this.k.c = paramInt2;
        if (paramBoolean)
        {
          paramal = this.k;
          paramal.c -= paramInt1;
        }
        this.k.g = paramInt1;
        return;
      }
    }
    paramal = r();
    n localn = this.k;
    localn.h += this.b.b();
    localn = this.k;
    if (this.c) {}
    for (paramInt1 = j;; paramInt1 = -1)
    {
      localn.e = paramInt1;
      this.k.d = (a(paramal) + this.k.e);
      this.k.b = this.b.a(paramal);
      paramInt1 = -this.b.a(paramal) + this.b.b();
      break;
    }
  }
  
  private void a(af paramaf, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {}
    for (;;)
    {
      return;
      int i = paramInt1;
      if (paramInt2 > paramInt1)
      {
        paramInt2 -= 1;
        while (paramInt2 >= paramInt1)
        {
          a(paramInt2, paramaf);
          paramInt2 -= 1;
        }
      }
      else
      {
        while (i > paramInt2)
        {
          a(i, paramaf);
          i -= 1;
        }
      }
    }
  }
  
  private void a(af paramaf, al paramal, int paramInt1, int paramInt2)
  {
    if ((!paramal.k) || (g() == 0) || (paramal.i) || (!e())) {
      return;
    }
    int j = 0;
    int i = 0;
    Object localObject = paramaf.d;
    int i3 = ((List)localObject).size();
    int i4 = a(d(0));
    int i1 = 0;
    if (i1 < i3)
    {
      ao localao = (ao)((List)localObject).get(i1);
      int i5;
      label97:
      int i2;
      if (localao.c() < i4)
      {
        i5 = 1;
        if (i5 == this.c) {
          break label147;
        }
        i2 = -1;
        label109:
        if (i2 != -1) {
          break label153;
        }
        j = this.b.c(localao.a) + j;
      }
      for (;;)
      {
        i1 += 1;
        break;
        i5 = 0;
        break label97;
        label147:
        i2 = 1;
        break label109;
        label153:
        i = this.b.c(localao.a) + i;
      }
    }
    this.k.j = ((List)localObject);
    if (j > 0)
    {
      b(a(r()), paramInt1);
      this.k.h = j;
      this.k.c = 0;
      localObject = this.k;
      j = ((n)localObject).d;
      if (this.c)
      {
        paramInt1 = 1;
        ((n)localObject).d = (paramInt1 + j);
        a(paramaf, this.k, paramal, false);
      }
    }
    else if (i > 0)
    {
      a(a(s()), paramInt2);
      this.k.h = i;
      this.k.c = 0;
      localObject = this.k;
      paramInt2 = ((n)localObject).d;
      if (!this.c) {
        break label351;
      }
    }
    label351:
    for (paramInt1 = -1;; paramInt1 = 1)
    {
      ((n)localObject).d = (paramInt1 + paramInt2);
      a(paramaf, this.k, paramal, false);
      this.k.j = null;
      return;
      paramInt1 = -1;
      break;
    }
  }
  
  private void a(af paramaf, n paramn)
  {
    if (!paramn.a) {}
    for (;;)
    {
      return;
      int i;
      int j;
      int i1;
      if (paramn.f == -1)
      {
        i = paramn.g;
        j = g();
        if (i >= 0)
        {
          i1 = this.b.d() - i;
          if (this.c)
          {
            i = 0;
            while (i < j)
            {
              paramn = d(i);
              if (this.b.a(paramn) < i1)
              {
                a(paramaf, 0, i);
                return;
              }
              i += 1;
            }
          }
          else
          {
            i = j - 1;
            while (i >= 0)
            {
              paramn = d(i);
              if (this.b.a(paramn) < i1)
              {
                a(paramaf, j - 1, i);
                return;
              }
              i -= 1;
            }
          }
        }
      }
      else
      {
        j = paramn.g;
        if (j >= 0)
        {
          i1 = g();
          if (this.c)
          {
            i = i1 - 1;
            while (i >= 0)
            {
              paramn = d(i);
              if (this.b.b(paramn) > j)
              {
                a(paramaf, i1 - 1, i);
                return;
              }
              i -= 1;
            }
          }
          else
          {
            i = 0;
            while (i < i1)
            {
              paramn = d(i);
              if (this.b.b(paramn) > j)
              {
                a(paramaf, 0, i);
                return;
              }
              i += 1;
            }
          }
        }
      }
    }
  }
  
  private void a(l paraml)
  {
    a(paraml.a, paraml.b);
  }
  
  private int b(int paramInt, af paramaf, al paramal, boolean paramBoolean)
  {
    int i = paramInt - this.b.b();
    if (i > 0)
    {
      int j = -d(i, paramaf, paramal);
      i = j;
      if (paramBoolean)
      {
        paramInt = paramInt + j - this.b.b();
        i = j;
        if (paramInt > 0)
        {
          this.b.a(-paramInt);
          i = j - paramInt;
        }
      }
      return i;
    }
    return 0;
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    this.k.c = (paramInt2 - this.b.b());
    this.k.d = paramInt1;
    n localn = this.k;
    if (this.c) {}
    for (paramInt1 = 1;; paramInt1 = -1)
    {
      localn.e = paramInt1;
      this.k.f = -1;
      this.k.b = paramInt2;
      this.k.g = Integer.MIN_VALUE;
      return;
    }
  }
  
  private void b(l paraml)
  {
    b(paraml.a, paraml.b);
  }
  
  private View c(int paramInt1, int paramInt2)
  {
    q();
    int j = this.b.b();
    int i1 = this.b.c();
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    }
    while (paramInt1 != paramInt2)
    {
      View localView = d(paramInt1);
      int i2 = this.b.a(localView);
      int i3 = this.b.b(localView);
      if ((i2 < i1) && (i3 > j))
      {
        return localView;
        i = -1;
      }
      else
      {
        paramInt1 += i;
      }
    }
    return null;
  }
  
  private int d(int paramInt, af paramaf, al paramal)
  {
    if ((g() == 0) || (paramInt == 0)) {
      return 0;
    }
    this.k.a = true;
    q();
    if (paramInt > 0) {}
    int j;
    int i1;
    for (int i = 1;; i = -1)
    {
      j = Math.abs(paramInt);
      a(i, j, true, paramal);
      i1 = this.k.g + a(paramaf, this.k, paramal, false);
      if (i1 >= 0) {
        break;
      }
      return 0;
    }
    if (j > i1) {
      paramInt = i * i1;
    }
    this.b.a(-paramInt);
    return paramInt;
  }
  
  private View e(int paramInt)
  {
    return a(0, g(), paramInt);
  }
  
  private View f(int paramInt)
  {
    return a(g() - 1, -1, paramInt);
  }
  
  private int g(al paramal)
  {
    int j = 0;
    if (paramal.a != -1) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        j = this.b.e();
      }
      return j;
    }
  }
  
  private int h(al paramal)
  {
    int i = 0;
    if (g() == 0) {
      j = i;
    }
    r localr;
    View localView1;
    View localView2;
    boolean bool1;
    boolean bool2;
    do
    {
      do
      {
        do
        {
          do
          {
            return j;
            q();
            localr = this.b;
            localView1 = r();
            localView2 = s();
            bool1 = this.o;
            bool2 = this.c;
            j = i;
          } while (g() == 0);
          j = i;
        } while (paramal.a() == 0);
        j = i;
      } while (localView1 == null);
      j = i;
    } while (localView2 == null);
    i = Math.min(aa.a(localView1), aa.a(localView2));
    int j = Math.max(aa.a(localView1), aa.a(localView2));
    if (bool2) {}
    for (i = Math.max(0, paramal.a() - j - 1);; i = Math.max(0, i))
    {
      j = i;
      if (!bool1) {
        break;
      }
      j = Math.abs(localr.b(localView2) - localr.a(localView1));
      int i1 = Math.abs(aa.a(localView1) - aa.a(localView2));
      float f1 = j / (i1 + 1);
      return Math.round(i * f1 + (localr.b() - localr.a(localView1)));
    }
  }
  
  private int i(al paramal)
  {
    if (g() == 0) {}
    r localr;
    View localView1;
    View localView2;
    boolean bool;
    do
    {
      return 0;
      q();
      localr = this.b;
      localView1 = r();
      localView2 = s();
      bool = this.o;
    } while ((g() == 0) || (paramal.a() == 0) || (localView1 == null) || (localView2 == null));
    if (!bool) {
      return Math.abs(aa.a(localView1) - aa.a(localView2)) + 1;
    }
    int i = localr.b(localView2);
    int j = localr.a(localView1);
    return Math.min(localr.e(), i - j);
  }
  
  private int j(al paramal)
  {
    if (g() == 0) {}
    r localr;
    View localView1;
    View localView2;
    boolean bool;
    do
    {
      return 0;
      q();
      localr = this.b;
      localView1 = r();
      localView2 = s();
      bool = this.o;
    } while ((g() == 0) || (paramal.a() == 0) || (localView1 == null) || (localView2 == null));
    if (!bool) {
      return paramal.a();
    }
    int i = localr.b(localView2);
    int j = localr.a(localView1);
    int i1 = Math.abs(aa.a(localView1) - aa.a(localView2));
    return (int)((i - j) / (i1 + 1) * paramal.a());
  }
  
  private View k(al paramal)
  {
    if (this.c) {
      return e(paramal.a());
    }
    return f(paramal.a());
  }
  
  private View l(al paramal)
  {
    if (this.c) {
      return f(paramal.a());
    }
    return e(paramal.a());
  }
  
  private void o()
  {
    boolean bool = true;
    if ((this.a == 1) || (!p())) {
      bool = this.m;
    }
    for (;;)
    {
      this.c = bool;
      return;
      if (this.m) {
        bool = false;
      }
    }
  }
  
  private boolean p()
  {
    return ViewCompat.h(this.i) == 1;
  }
  
  private void q()
  {
    if (this.k == null) {
      this.k = new n();
    }
    if (this.b == null) {
      switch (this.a)
      {
      default: 
        throw new IllegalArgumentException("invalid orientation");
      }
    }
    for (Object localObject = new r.1(this);; localObject = new r.2(this))
    {
      this.b = ((r)localObject);
      return;
    }
  }
  
  private View r()
  {
    if (this.c) {}
    for (int i = g() - 1;; i = 0) {
      return d(i);
    }
  }
  
  private View s()
  {
    if (this.c) {}
    for (int i = 0;; i = g() - 1) {
      return d(i);
    }
  }
  
  public final int a(int paramInt, af paramaf, al paramal)
  {
    if (this.a == 1) {
      return 0;
    }
    return d(paramInt, paramaf, paramal);
  }
  
  public final int a(al paramal)
  {
    return h(paramal);
  }
  
  public final ab a()
  {
    return new ab();
  }
  
  public final View a(int paramInt)
  {
    int i = g();
    if (i == 0) {}
    do
    {
      return null;
      paramInt -= a(d(0));
    } while ((paramInt < 0) || (paramInt >= i));
    return d(paramInt);
  }
  
  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof o))
    {
      this.f = ((o)paramParcelable);
      f();
    }
  }
  
  public final void a(RecyclerView paramRecyclerView, af paramaf)
  {
    super.a(paramRecyclerView, paramaf);
    if (this.p)
    {
      b(paramaf);
      paramaf.a();
    }
  }
  
  public final void a(af paramaf, al paramal)
  {
    if ((this.f != null) && (this.f.a())) {
      this.d = this.f.a;
    }
    q();
    this.k.a = false;
    o();
    Object localObject1 = this.g;
    ((l)localObject1).a = -1;
    ((l)localObject1).b = Integer.MIN_VALUE;
    ((l)localObject1).c = false;
    this.g.c = (this.c ^ this.n);
    Object localObject2 = this.g;
    int i;
    label126:
    label185:
    label193:
    label218:
    int j;
    boolean bool;
    label249:
    label265:
    int i2;
    if ((paramal.i) || (this.d == -1))
    {
      i = 0;
      if (i == 0)
      {
        if (g() == 0) {
          break label1125;
        }
        if (this.i != null) {
          break label933;
        }
        localObject1 = null;
        if (localObject1 == null) {
          break label975;
        }
        ab localab = (ab)((View)localObject1).getLayoutParams();
        if ((localab.a.m()) || (localab.a.c() < 0) || (localab.a.c() >= paramal.a())) {
          break label969;
        }
        ((l)localObject2).a((View)localObject1);
        i = 1;
        if (i == 0) {
          break label975;
        }
        i = 1;
        if (i == 0)
        {
          ((l)localObject2).a();
          if (!this.n) {
            break label1131;
          }
          i = paramal.a() - 1;
          ((l)localObject2).a = i;
        }
      }
      j = g(paramal);
      if (paramal.a >= this.g.a) {
        break label1137;
      }
      bool = true;
      if (bool != this.c) {
        break label1143;
      }
      i = j;
      j = 0;
      i1 = j + this.b.b();
      i2 = i + this.b.f();
      i = i2;
      j = i1;
      if (paramal.i)
      {
        i = i2;
        j = i1;
        if (this.d != -1)
        {
          i = i2;
          j = i1;
          if (this.e != Integer.MIN_VALUE)
          {
            localObject1 = a(this.d);
            i = i2;
            j = i1;
            if (localObject1 != null)
            {
              if (!this.c) {
                break label1149;
              }
              i = this.b.c() - this.b.b((View)localObject1) - this.e;
              label388:
              if (i <= 0) {
                break label1183;
              }
              j = i1 + i;
              i = i2;
            }
          }
        }
      }
      label404:
      i1 = g() - 1;
      label412:
      if (i1 < 0) {
        break label1310;
      }
      localObject1 = d(i1);
      localObject2 = RecyclerView.b((View)localObject1);
      if (!((ao)localObject2).b())
      {
        if ((!((ao)localObject2).i()) || (((ao)localObject2).m()) || (((ao)localObject2).k()) || (RecyclerView.g(this.i).b)) {
          break label1197;
        }
        b(i1);
        paramaf.a((ao)localObject2);
      }
    }
    for (;;)
    {
      i1 -= 1;
      break label412;
      if ((this.d < 0) || (this.d >= paramal.a()))
      {
        this.d = -1;
        this.e = Integer.MIN_VALUE;
        i = 0;
        break;
      }
      ((l)localObject2).a = this.d;
      if ((this.f != null) && (this.f.a()))
      {
        ((l)localObject2).c = this.f.c;
        if (((l)localObject2).c) {}
        for (((l)localObject2).b = (this.b.c() - this.f.b);; ((l)localObject2).b = (this.b.b() + this.f.b))
        {
          i = 1;
          break;
        }
      }
      if (this.e == Integer.MIN_VALUE)
      {
        localObject1 = a(this.d);
        if (localObject1 != null) {
          if (this.b.c((View)localObject1) > this.b.e()) {
            ((l)localObject2).a();
          }
        }
      }
      for (;;)
      {
        i = 1;
        break;
        if (this.b.a((View)localObject1) - this.b.b() < 0)
        {
          ((l)localObject2).b = this.b.b();
          ((l)localObject2).c = false;
        }
        else if (this.b.c() - this.b.b((View)localObject1) < 0)
        {
          ((l)localObject2).b = this.b.c();
          ((l)localObject2).c = true;
        }
        else
        {
          if (((l)localObject2).c) {}
          for (i = this.b.b((View)localObject1) + this.b.a();; i = this.b.a((View)localObject1))
          {
            ((l)localObject2).b = i;
            i = 1;
            break;
          }
          if (g() > 0)
          {
            i = a(d(0));
            if (this.d >= i) {
              break label865;
            }
            bool = true;
            label838:
            if (bool != this.c) {
              break label871;
            }
          }
          label865:
          label871:
          for (bool = true;; bool = false)
          {
            ((l)localObject2).c = bool;
            ((l)localObject2).a();
            break;
            bool = false;
            break label838;
          }
          ((l)localObject2).c = this.c;
          if (this.c) {
            ((l)localObject2).b = (this.b.c() - this.e);
          } else {
            ((l)localObject2).b = (this.b.b() + this.e);
          }
        }
      }
      label933:
      localObject1 = this.i.getFocusedChild();
      if ((localObject1 == null) || (this.h.c.contains(localObject1)))
      {
        localObject1 = null;
        break label126;
      }
      break label126;
      label969:
      i = 0;
      break label185;
      label975:
      if (this.l == this.n)
      {
        if (((l)localObject2).c)
        {
          localObject1 = k(paramal);
          label1000:
          if (localObject1 == null) {
            break label1125;
          }
          ((l)localObject2).a((View)localObject1);
          if ((!paramal.i) && (e()))
          {
            if ((this.b.a((View)localObject1) < this.b.c()) && (this.b.b((View)localObject1) >= this.b.b())) {
              break label1107;
            }
            i = 1;
            label1063:
            if (i != 0) {
              if (!((l)localObject2).c) {
                break label1113;
              }
            }
          }
        }
        label1107:
        label1113:
        for (i = this.b.c();; i = this.b.b())
        {
          ((l)localObject2).b = i;
          i = 1;
          break;
          localObject1 = l(paramal);
          break label1000;
          i = 0;
          break label1063;
        }
      }
      label1125:
      i = 0;
      break label193;
      label1131:
      i = 0;
      break label218;
      label1137:
      bool = false;
      break label249;
      label1143:
      i = 0;
      break label265;
      label1149:
      i = this.b.a((View)localObject1);
      j = this.b.b();
      i = this.e - (i - j);
      break label388;
      label1183:
      i = i2 - i;
      j = i1;
      break label404;
      label1197:
      c(i1);
      localObject1 = RecyclerView.b((View)localObject1);
      ((ao)localObject1).j = paramaf;
      if ((!((ao)localObject1).k()) || (!RecyclerView.h(paramaf.h)))
      {
        if ((((ao)localObject1).i()) && (!((ao)localObject1).m()) && (!RecyclerView.g(paramaf.h).b)) {
          throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
        }
        paramaf.a.add(localObject1);
      }
      else
      {
        if (paramaf.b == null) {
          paramaf.b = new ArrayList();
        }
        paramaf.b.add(localObject1);
      }
    }
    label1310:
    this.k.i = paramal.i;
    if (this.g.c)
    {
      b(this.g);
      this.k.h = j;
      a(paramaf, this.k, paramal, false);
      i1 = this.k.b;
      j = i;
      if (this.k.c > 0) {
        j = i + this.k.c;
      }
      a(this.g);
      this.k.h = j;
      localObject1 = this.k;
      ((n)localObject1).d += this.k.e;
      a(paramaf, this.k, paramal, false);
      i = this.k.b;
      j = i1;
      i1 = i;
      i2 = j;
      if (g() > 0)
      {
        if (!(this.c ^ this.n)) {
          break label1716;
        }
        i1 = a(i, paramaf, paramal, true);
        i2 = j + i1;
        j = b(i2, paramaf, paramal, false);
        i2 += j;
      }
    }
    label1716:
    int i3;
    for (int i1 = i + i1 + j;; i1 = i + i3)
    {
      a(paramaf, paramal, i2, i1);
      if (!paramal.i)
      {
        this.d = -1;
        this.e = Integer.MIN_VALUE;
        paramaf = this.b;
        paramaf.b = paramaf.e();
      }
      this.l = this.n;
      this.f = null;
      return;
      a(this.g);
      this.k.h = i;
      a(paramaf, this.k, paramal, false);
      i1 = this.k.b;
      i = j;
      if (this.k.c > 0) {
        i = j + this.k.c;
      }
      b(this.g);
      this.k.h = i;
      localObject1 = this.k;
      ((n)localObject1).d += this.k.e;
      a(paramaf, this.k, paramal, false);
      j = this.k.b;
      i = i1;
      break;
      i1 = b(j, paramaf, paramal, true);
      i += i1;
      i3 = a(i, paramaf, paramal, false);
      i2 = j + i1 + i3;
    }
  }
  
  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    int j = -1;
    super.a(paramAccessibilityEvent);
    View localView;
    if (g() > 0)
    {
      paramAccessibilityEvent = a.a(paramAccessibilityEvent);
      localView = c(0, g());
      if (localView != null) {
        break label66;
      }
      i = -1;
      paramAccessibilityEvent.b(i);
      localView = c(g() - 1, -1);
      if (localView != null) {
        break label74;
      }
    }
    label66:
    label74:
    for (int i = j;; i = a(localView))
    {
      paramAccessibilityEvent.c(i);
      return;
      i = a(localView);
      break;
    }
  }
  
  public final void a(String paramString)
  {
    if (this.f == null) {
      super.a(paramString);
    }
  }
  
  public final int b(int paramInt, af paramaf, al paramal)
  {
    if (this.a == 0) {
      return 0;
    }
    return d(paramInt, paramaf, paramal);
  }
  
  public final int b(al paramal)
  {
    return h(paramal);
  }
  
  public final Parcelable b()
  {
    if (this.f != null) {
      return new o(this.f);
    }
    o localo = new o();
    if (g() > 0)
    {
      q();
      boolean bool = this.l ^ this.c;
      localo.c = bool;
      if (bool)
      {
        localView = s();
        localo.b = (this.b.c() - this.b.b(localView));
        localo.a = a(localView);
        return localo;
      }
      View localView = r();
      localo.a = a(localView);
      localo.b = (this.b.a(localView) - this.b.b());
      return localo;
    }
    localo.a = -1;
    return localo;
  }
  
  public final int c(al paramal)
  {
    return i(paramal);
  }
  
  public final View c(int paramInt, af paramaf, al paramal)
  {
    o();
    if (g() == 0) {}
    label75:
    View localView;
    label97:
    do
    {
      do
      {
        return null;
        switch (paramInt)
        {
        default: 
          paramInt = Integer.MIN_VALUE;
        }
      } while (paramInt == Integer.MIN_VALUE);
      q();
      if (paramInt != -1) {
        break;
      }
      localView = l(paramal);
    } while (localView == null);
    q();
    a(paramInt, (int)(0.33F * this.b.e()), false, paramal);
    this.k.g = Integer.MIN_VALUE;
    this.k.a = false;
    a(paramaf, this.k, paramal, true);
    if (paramInt == -1) {}
    for (paramaf = r(); (paramaf != localView) && (paramaf.isFocusable()); paramaf = s())
    {
      return paramaf;
      paramInt = -1;
      break label75;
      paramInt = 1;
      break label75;
      if (this.a == 1)
      {
        paramInt = -1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (this.a == 1)
      {
        paramInt = 1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (this.a == 0)
      {
        paramInt = -1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      if (this.a == 0)
      {
        paramInt = 1;
        break label75;
      }
      paramInt = Integer.MIN_VALUE;
      break label75;
      localView = k(paramal);
      break label97;
    }
  }
  
  public final boolean c()
  {
    return this.a == 0;
  }
  
  public final int d(al paramal)
  {
    return i(paramal);
  }
  
  public final boolean d()
  {
    return this.a == 1;
  }
  
  public final int e(al paramal)
  {
    return j(paramal);
  }
  
  public final boolean e()
  {
    return (this.f == null) && (this.l == this.n);
  }
  
  public final int f(al paramal)
  {
    return j(paramal);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */