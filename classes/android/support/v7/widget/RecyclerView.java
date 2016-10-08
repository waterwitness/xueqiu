package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.at;
import android.support.v4.view.bf;
import android.support.v4.view.bx;
import android.support.v4.widget.r;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView
  extends ViewGroup
{
  private static final Interpolator ab;
  private static final boolean q;
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D;
  private boolean E;
  private final boolean F;
  private final AccessibilityManager G;
  private boolean H = false;
  private boolean I = false;
  private int J = 0;
  private int K = -1;
  private VelocityTracker L;
  private int M;
  private int N;
  private int O;
  private int P;
  private int Q;
  private final int R;
  private final int S;
  private ad T;
  private w U = new x(this, (byte)0);
  private boolean V = false;
  private ap W;
  final af a = new af(this);
  private Runnable aa = new Runnable()
  {
    public final void run()
    {
      if (RecyclerView.this.l != null) {
        RecyclerView.this.l.a();
      }
      RecyclerView.d(RecyclerView.this);
    }
  };
  a b;
  d c;
  final List<View> d = new ArrayList();
  final Rect e = new Rect();
  s f;
  final ArrayList<y> g = new ArrayList();
  r h;
  r i;
  r j;
  r k;
  v l = new g();
  final an m = new an(this);
  final al n = new al();
  boolean o = false;
  boolean p = false;
  private final ah r = new ah(this, (byte)0);
  private ai s;
  private boolean t;
  private final Runnable u = new Runnable()
  {
    public final void run()
    {
      if (!RecyclerView.a(RecyclerView.this)) {}
      do
      {
        return;
        if (RecyclerView.b(RecyclerView.this))
        {
          RecyclerView.this.g();
          return;
        }
      } while (!RecyclerView.this.b.d());
      RecyclerView.this.a();
      RecyclerView.this.b.b();
      if (!RecyclerView.c(RecyclerView.this))
      {
        RecyclerView localRecyclerView = RecyclerView.this;
        int j = localRecyclerView.c.a();
        int i = 0;
        if (i < j)
        {
          ao localao = RecyclerView.b(localRecyclerView.c.b(i));
          if ((localao != null) && (!localao.b()))
          {
            if ((!localao.m()) && (!localao.i())) {
              break label139;
            }
            localRecyclerView.requestLayout();
          }
          for (;;)
          {
            i += 1;
            break;
            label139:
            if (localao.j()) {
              if (localao.e == 0)
              {
                if ((!localao.k()) || (!localRecyclerView.f())) {
                  localRecyclerView.f.b(localao, localao.b);
                } else {
                  localRecyclerView.requestLayout();
                }
              }
              else
              {
                localao.a(4);
                localRecyclerView.requestLayout();
              }
            }
          }
        }
      }
      RecyclerView.this.a(true);
    }
  };
  private aa v;
  private ag w;
  private final ArrayList<ac> x = new ArrayList();
  private ac y;
  private boolean z;
  
  static
  {
    if ((Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      q = bool;
      ab = new Interpolator()
      {
        public final float getInterpolation(float paramAnonymousFloat)
        {
          paramAnonymousFloat -= 1.0F;
          return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
        }
      };
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (Build.VERSION.SDK_INT >= 16) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      this.F = bool1;
      paramContext = ViewConfiguration.get(paramContext);
      this.Q = paramContext.getScaledTouchSlop();
      this.R = paramContext.getScaledMinimumFlingVelocity();
      this.S = paramContext.getScaledMaximumFlingVelocity();
      bool1 = bool2;
      if (ViewCompat.a(this) == 2) {
        bool1 = true;
      }
      setWillNotDraw(bool1);
      this.l.h = this.U;
      this.b = new a(new b()
      {
        private void c(c paramAnonymousc)
        {
          switch (paramAnonymousc.a)
          {
          default: 
            return;
          case 0: 
            RecyclerView.e(RecyclerView.this);
            return;
          case 1: 
            RecyclerView.e(RecyclerView.this);
            return;
          case 2: 
            RecyclerView.e(RecyclerView.this);
            return;
          }
          RecyclerView.e(RecyclerView.this);
        }
        
        public final ao a(int paramAnonymousInt)
        {
          RecyclerView localRecyclerView = RecyclerView.this;
          int j = localRecyclerView.c.b();
          int i = 0;
          while (i < j)
          {
            ao localao = RecyclerView.b(localRecyclerView.c.c(i));
            if ((localao != null) && (!localao.m()) && (localao.b == paramAnonymousInt)) {
              return localao;
            }
            i += 1;
          }
          return null;
        }
        
        public final void a(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          RecyclerView.this.a(paramAnonymousInt1, paramAnonymousInt2, true);
          RecyclerView.this.o = true;
          al localal = RecyclerView.this.n;
          localal.g += paramAnonymousInt2;
        }
        
        public final void a(c paramAnonymousc)
        {
          c(paramAnonymousc);
        }
        
        public final void b(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          RecyclerView.this.a(paramAnonymousInt1, paramAnonymousInt2, false);
          RecyclerView.this.o = true;
        }
        
        public final void b(c paramAnonymousc)
        {
          c(paramAnonymousc);
        }
        
        public final void c(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          int j = 0;
          Object localObject1 = RecyclerView.this;
          int k = ((RecyclerView)localObject1).c.b();
          int i = 0;
          Object localObject2;
          while (i < k)
          {
            localObject2 = ((RecyclerView)localObject1).c.c(i);
            ao localao = RecyclerView.b((View)localObject2);
            if ((localao != null) && (!localao.b()) && (localao.b >= paramAnonymousInt1) && (localao.b < paramAnonymousInt1 + paramAnonymousInt2))
            {
              localao.a(2);
              if (((RecyclerView)localObject1).f()) {
                localao.a(64);
              }
              ((ab)((View)localObject2).getLayoutParams()).c = true;
            }
            i += 1;
          }
          localObject1 = ((RecyclerView)localObject1).a;
          k = ((af)localObject1).c.size();
          i = j;
          while (i < k)
          {
            localObject2 = (ao)((af)localObject1).c.get(i);
            if (localObject2 != null)
            {
              j = ((ao)localObject2).c();
              if ((j >= paramAnonymousInt1) && (j < paramAnonymousInt1 + paramAnonymousInt2)) {
                ((ao)localObject2).a(2);
              }
            }
            i += 1;
          }
          RecyclerView.this.p = true;
        }
        
        public final void d(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          RecyclerView localRecyclerView = RecyclerView.this;
          int j = localRecyclerView.c.b();
          int i = 0;
          while (i < j)
          {
            localObject = RecyclerView.b(localRecyclerView.c.c(i));
            if ((localObject != null) && (!((ao)localObject).b()) && (((ao)localObject).b >= paramAnonymousInt1))
            {
              ((ao)localObject).a(paramAnonymousInt2, false);
              localRecyclerView.n.h = true;
            }
            i += 1;
          }
          Object localObject = localRecyclerView.a;
          j = ((af)localObject).c.size();
          i = 0;
          while (i < j)
          {
            ao localao = (ao)((af)localObject).c.get(i);
            if ((localao != null) && (localao.c() >= paramAnonymousInt1)) {
              localao.a(paramAnonymousInt2, true);
            }
            i += 1;
          }
          localRecyclerView.requestLayout();
          RecyclerView.this.o = true;
        }
        
        public final void e(int paramAnonymousInt1, int paramAnonymousInt2)
        {
          int n = -1;
          RecyclerView localRecyclerView = RecyclerView.this;
          int i1 = localRecyclerView.c.b();
          int i;
          int j;
          int k;
          int m;
          if (paramAnonymousInt1 < paramAnonymousInt2)
          {
            i = -1;
            j = paramAnonymousInt2;
            k = paramAnonymousInt1;
            m = 0;
            label34:
            if (m >= i1) {
              break label138;
            }
            localObject = RecyclerView.b(localRecyclerView.c.c(m));
            if ((localObject != null) && (((ao)localObject).b >= k) && (((ao)localObject).b <= j))
            {
              if (((ao)localObject).b != paramAnonymousInt1) {
                break label127;
              }
              ((ao)localObject).a(paramAnonymousInt2 - paramAnonymousInt1, false);
            }
          }
          for (;;)
          {
            localRecyclerView.n.h = true;
            m += 1;
            break label34;
            i = 1;
            j = paramAnonymousInt1;
            k = paramAnonymousInt2;
            break;
            label127:
            ((ao)localObject).a(i, false);
          }
          label138:
          Object localObject = localRecyclerView.a;
          label172:
          ao localao;
          if (paramAnonymousInt1 < paramAnonymousInt2)
          {
            j = paramAnonymousInt2;
            k = paramAnonymousInt1;
            i = n;
            n = ((af)localObject).c.size();
            m = 0;
            if (m >= n) {
              break label269;
            }
            localao = (ao)((af)localObject).c.get(m);
            if ((localao != null) && (localao.b >= k) && (localao.b <= j))
            {
              if (localao.b != paramAnonymousInt1) {
                break label258;
              }
              localao.a(paramAnonymousInt2 - paramAnonymousInt1, false);
            }
          }
          for (;;)
          {
            m += 1;
            break label172;
            i = 1;
            j = paramAnonymousInt1;
            k = paramAnonymousInt2;
            break;
            label258:
            localao.a(i, false);
          }
          label269:
          localRecyclerView.requestLayout();
          RecyclerView.this.o = true;
        }
      });
      this.c = new d(new f()
      {
        public final int a()
        {
          return RecyclerView.this.getChildCount();
        }
        
        public final int a(View paramAnonymousView)
        {
          return RecyclerView.this.indexOfChild(paramAnonymousView);
        }
        
        public final void a(int paramAnonymousInt)
        {
          View localView = RecyclerView.this.getChildAt(paramAnonymousInt);
          if (localView != null) {
            RecyclerView.b(RecyclerView.this, localView);
          }
          RecyclerView.this.removeViewAt(paramAnonymousInt);
        }
        
        public final void a(View paramAnonymousView, int paramAnonymousInt)
        {
          RecyclerView.this.addView(paramAnonymousView, paramAnonymousInt);
          RecyclerView.a(RecyclerView.this, paramAnonymousView);
        }
        
        public final void a(View paramAnonymousView, int paramAnonymousInt, ViewGroup.LayoutParams paramAnonymousLayoutParams)
        {
          ao localao = RecyclerView.b(paramAnonymousView);
          if (localao != null)
          {
            if ((!localao.n()) && (!localao.b())) {
              throw new IllegalArgumentException("Called attach on a child which is not detached: " + localao);
            }
            localao.h();
          }
          RecyclerView.a(RecyclerView.this, paramAnonymousView, paramAnonymousInt, paramAnonymousLayoutParams);
        }
        
        public final ao b(View paramAnonymousView)
        {
          return RecyclerView.b(paramAnonymousView);
        }
        
        public final View b(int paramAnonymousInt)
        {
          return RecyclerView.this.getChildAt(paramAnonymousInt);
        }
        
        public final void b()
        {
          int j = RecyclerView.this.getChildCount();
          int i = 0;
          while (i < j)
          {
            RecyclerView.b(RecyclerView.this, b(i));
            i += 1;
          }
          RecyclerView.this.removeAllViews();
        }
        
        public final void c(int paramAnonymousInt)
        {
          Object localObject = b(paramAnonymousInt);
          if (localObject != null)
          {
            localObject = RecyclerView.b((View)localObject);
            if (localObject != null)
            {
              if ((((ao)localObject).n()) && (!((ao)localObject).b())) {
                throw new IllegalArgumentException("called detach on an already detached child " + localObject);
              }
              ((ao)localObject).a(256);
            }
          }
          RecyclerView.a(RecyclerView.this, paramAnonymousInt);
        }
      });
      if (ViewCompat.e(this) == 0) {
        ViewCompat.c(this, 1);
      }
      this.G = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new ap(this));
      return;
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    j();
    int i2;
    int i1;
    int i3;
    int i4;
    if (this.f != null)
    {
      a();
      this.I = true;
      if (paramInt1 != 0)
      {
        i2 = this.v.a(paramInt1, this.a, this.n);
        i1 = paramInt1 - i2;
        if (paramInt2 != 0)
        {
          i3 = this.v.b(paramInt2, this.a, this.n);
          i4 = paramInt2 - i3;
          label76:
          if (f())
          {
            i6 = this.c.a();
            i5 = 0;
            if (i5 < i6)
            {
              View localView = this.c.b(i5);
              Object localObject = a(localView);
              if ((localObject != null) && (((ao)localObject).h != null))
              {
                localObject = ((ao)localObject).h;
                if (localObject == null) {
                  break label212;
                }
              }
              label212:
              for (localObject = ((ao)localObject).a;; localObject = null)
              {
                if (localObject != null)
                {
                  int i7 = localView.getLeft();
                  int i8 = localView.getTop();
                  if ((i7 != ((View)localObject).getLeft()) || (i8 != ((View)localObject).getTop())) {
                    ((View)localObject).layout(i7, i8, ((View)localObject).getWidth() + i7, ((View)localObject).getHeight() + i8);
                  }
                }
                i5 += 1;
                break;
              }
            }
          }
          this.I = false;
          a(false);
          int i5 = i4;
          int i6 = i2;
          i4 = i1;
          i2 = i5;
          i1 = i6;
        }
      }
    }
    for (;;)
    {
      if (!this.g.isEmpty()) {
        invalidate();
      }
      if (ViewCompat.a(this) != 2)
      {
        b(paramInt1, paramInt2);
        if (i4 >= 0) {
          break label373;
        }
        b();
        this.h.a(-i4 / getWidth());
        if (i2 >= 0) {
          break label402;
        }
        d();
        this.i.a(-i2 / getHeight());
      }
      for (;;)
      {
        if ((i4 != 0) || (i2 != 0)) {
          ViewCompat.d(this);
        }
        if ((i1 != 0) || (i3 != 0)) {
          onScrollChanged(0, 0, 0, 0);
        }
        if (!awakenScrollBars()) {
          invalidate();
        }
        return;
        label373:
        if (i4 <= 0) {
          break;
        }
        c();
        this.j.a(i4 / getWidth());
        break;
        label402:
        if (i2 > 0)
        {
          e();
          this.k.a(i2 / getHeight());
        }
      }
      i3 = 0;
      i4 = 0;
      break label76;
      i2 = 0;
      i1 = 0;
      break;
      i3 = 0;
      i1 = 0;
      i2 = 0;
      i4 = 0;
    }
  }
  
  private void a(android.support.v4.e.a<View, Rect> parama)
  {
    int i2 = this.d.size();
    int i1 = 0;
    if (i1 < i2)
    {
      View localView = (View)this.d.get(i1);
      Object localObject1 = b(localView);
      Object localObject2 = (z)this.n.b.remove(localObject1);
      if (!this.n.i) {
        this.n.c.remove(localObject1);
      }
      if (parama.remove(localView) != null)
      {
        localObject2 = this.v;
        localObject1 = this.a;
        localObject2 = ((aa)localObject2).h;
        int i3 = ((d)localObject2).a.a(localView);
        if (i3 >= 0)
        {
          ((d)localObject2).a.a(i3);
          if (((d)localObject2).b.c(i3)) {
            ((d)localObject2).c.remove(localView);
          }
        }
        ((af)localObject1).a(localView);
      }
      for (;;)
      {
        i1 += 1;
        break;
        if (localObject2 != null) {
          a((z)localObject2);
        } else {
          a(new z((ao)localObject1, localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
        }
      }
    }
    this.d.clear();
  }
  
  private void a(ao paramao)
  {
    View localView = paramao.a;
    if (localView.getParent() == this) {}
    for (int i1 = 1;; i1 = 0)
    {
      this.a.b(a(localView));
      if (!paramao.n()) {
        break;
      }
      this.c.a(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i1 == 0)
    {
      this.c.a(localView, -1, true);
      return;
    }
    paramao = this.c;
    i1 = paramao.a.a(localView);
    if (i1 < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + localView);
    }
    paramao.b.a(i1);
    paramao.c.add(localView);
  }
  
  private void a(z paramz)
  {
    View localView = paramz.a.a;
    a(paramz.a);
    int i1 = paramz.b;
    int i2 = paramz.c;
    int i3 = localView.getLeft();
    int i4 = localView.getTop();
    if ((i1 != i3) || (i2 != i4))
    {
      paramz.a.a(false);
      localView.layout(i3, i4, localView.getWidth() + i3, localView.getHeight() + i4);
      if (this.l.a(paramz.a, i1, i2, i3, i4)) {
        o();
      }
      return;
    }
    paramz.a.a(false);
    this.l.a(paramz.a);
    o();
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    int i1 = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, i1) == this.K) {
      if (i1 != 0) {
        break label75;
      }
    }
    label75:
    for (i1 = 1;; i1 = 0)
    {
      this.K = at.b(paramMotionEvent, i1);
      int i2 = (int)(at.c(paramMotionEvent, i1) + 0.5F);
      this.O = i2;
      this.M = i2;
      i1 = (int)(at.d(paramMotionEvent, i1) + 0.5F);
      this.P = i1;
      this.N = i1;
      return;
    }
  }
  
  private long b(ao paramao)
  {
    if (this.f.b) {
      return paramao.d;
    }
    return paramao.b;
  }
  
  static ao b(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return ((ab)paramView.getLayoutParams()).a;
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.h != null)
    {
      bool1 = bool2;
      if (!this.h.a())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = this.h.c();
        }
      }
    }
    bool2 = bool1;
    if (this.j != null)
    {
      bool2 = bool1;
      if (!this.j.a())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | this.j.c();
        }
      }
    }
    bool1 = bool2;
    if (this.i != null)
    {
      bool1 = bool2;
      if (!this.i.a())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | this.i.c();
        }
      }
    }
    bool2 = bool1;
    if (this.k != null)
    {
      bool2 = bool1;
      if (!this.k.a())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | this.k.c();
        }
      }
    }
    if (bool2) {
      ViewCompat.d(this);
    }
  }
  
  public static int c(View paramView)
  {
    paramView = b(paramView);
    if (paramView != null) {
      return paramView.c();
    }
    return -1;
  }
  
  private void d(View paramView)
  {
    if (this.f != null) {
      b(paramView);
    }
  }
  
  private void j()
  {
    this.u.run();
  }
  
  private void k()
  {
    an localan = this.m;
    localan.d.removeCallbacks(localan);
    localan.c.h();
    this.v.n();
  }
  
  private void l()
  {
    boolean bool2 = false;
    if (this.h != null) {
      bool2 = this.h.c();
    }
    boolean bool1 = bool2;
    if (this.i != null) {
      bool1 = bool2 | this.i.c();
    }
    bool2 = bool1;
    if (this.j != null) {
      bool2 = bool1 | this.j.c();
    }
    bool1 = bool2;
    if (this.k != null) {
      bool1 = bool2 | this.k.c();
    }
    if (bool1) {
      ViewCompat.d(this);
    }
  }
  
  private void m()
  {
    this.k = null;
    this.i = null;
    this.j = null;
    this.h = null;
  }
  
  private void n()
  {
    if (this.L != null) {
      this.L.clear();
    }
    l();
    setScrollState(0);
  }
  
  private void o()
  {
    if ((!this.V) && (this.z))
    {
      ViewCompat.a(this, this.aa);
      this.V = true;
    }
  }
  
  private void p()
  {
    boolean bool2 = true;
    if (this.H)
    {
      this.b.a();
      s();
    }
    int i1;
    label82:
    al localal;
    if ((this.l != null) && (this.v.e()))
    {
      this.b.b();
      if (((!this.o) || (this.p)) && (!this.o) && ((!this.p) || (!f()))) {
        break label214;
      }
      i1 = 1;
      localal = this.n;
      if ((!this.B) || (this.l == null) || ((!this.H) && (i1 == 0) && (!aa.a(this.v))) || ((this.H) && (!this.f.b))) {
        break label219;
      }
      bool1 = true;
      label141:
      localal.j = bool1;
      localal = this.n;
      if ((!this.n.j) || (i1 == 0) || (this.H)) {
        break label229;
      }
      if ((this.l == null) || (!this.v.e())) {
        break label224;
      }
      i1 = 1;
      label191:
      if (i1 == 0) {
        break label229;
      }
    }
    label214:
    label219:
    label224:
    label229:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localal.k = bool1;
      return;
      this.b.e();
      break;
      i1 = 0;
      break label82;
      bool1 = false;
      break label141;
      i1 = 0;
      break label191;
    }
  }
  
  private void q()
  {
    int i2 = 0;
    int i3 = this.c.b();
    int i1 = 0;
    while (i1 < i3)
    {
      ((ab)this.c.c(i1).getLayoutParams()).c = true;
      i1 += 1;
    }
    af localaf = this.a;
    i3 = localaf.c.size();
    i1 = i2;
    while (i1 < i3)
    {
      ab localab = (ab)((ao)localaf.c.get(i1)).a.getLayoutParams();
      if (localab != null) {
        localab.c = true;
      }
      i1 += 1;
    }
  }
  
  private void r()
  {
    int i2 = 0;
    int i3 = this.c.b();
    int i1 = 0;
    while (i1 < i3)
    {
      localObject = b(this.c.c(i1));
      if (!((ao)localObject).b()) {
        ((ao)localObject).a();
      }
      i1 += 1;
    }
    Object localObject = this.a;
    i3 = ((af)localObject).c.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((ao)((af)localObject).c.get(i1)).a();
      i1 += 1;
    }
    i3 = ((af)localObject).a.size();
    i1 = 0;
    while (i1 < i3)
    {
      ((ao)((af)localObject).a.get(i1)).a();
      i1 += 1;
    }
    if (((af)localObject).b != null)
    {
      i3 = ((af)localObject).b.size();
      i1 = i2;
      while (i1 < i3)
      {
        ((ao)((af)localObject).b.get(i1)).a();
        i1 += 1;
      }
    }
  }
  
  private void s()
  {
    int i2 = this.c.b();
    int i1 = 0;
    while (i1 < i2)
    {
      localObject = b(this.c.c(i1));
      if ((localObject != null) && (!((ao)localObject).b())) {
        ((ao)localObject).a(6);
      }
      i1 += 1;
    }
    q();
    Object localObject = this.a;
    if ((((af)localObject).h.f != null) && (((af)localObject).h.f.b))
    {
      i2 = ((af)localObject).c.size();
      i1 = 0;
    }
    while (i1 < i2)
    {
      ao localao = (ao)((af)localObject).c.get(i1);
      if (localao != null) {
        localao.a(6);
      }
      i1 += 1;
      continue;
      i1 = ((af)localObject).c.size() - 1;
      while (i1 >= 0)
      {
        if (!((af)localObject).b(i1)) {
          ((ao)((af)localObject).c.get(i1)).a(6);
        }
        i1 -= 1;
      }
    }
  }
  
  private void setScrollState(int paramInt)
  {
    if (paramInt == this.J) {}
    do
    {
      return;
      this.J = paramInt;
    } while (paramInt == 2);
    k();
  }
  
  public final ao a(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return b(paramView);
  }
  
  final void a()
  {
    if (!this.C)
    {
      this.C = true;
      this.D = false;
    }
  }
  
  final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i2 = this.c.b();
    int i1 = 0;
    if (i1 < i2)
    {
      localObject = b(this.c.c(i1));
      if ((localObject != null) && (!((ao)localObject).b()))
      {
        if (((ao)localObject).b < paramInt1 + paramInt2) {
          break label82;
        }
        ((ao)localObject).a(-paramInt2, paramBoolean);
        this.n.h = true;
      }
      for (;;)
      {
        i1 += 1;
        break;
        label82:
        if (((ao)localObject).b >= paramInt1)
        {
          int i3 = -paramInt2;
          ((ao)localObject).a(8);
          ((ao)localObject).a(i3, paramBoolean);
          ((ao)localObject).b = (paramInt1 - 1);
          this.n.h = true;
        }
      }
    }
    Object localObject = this.a;
    i1 = ((af)localObject).c.size() - 1;
    if (i1 >= 0)
    {
      ao localao = (ao)((af)localObject).c.get(i1);
      if (localao != null)
      {
        if (localao.c() < paramInt1 + paramInt2) {
          break label200;
        }
        localao.a(-paramInt2, paramBoolean);
      }
      for (;;)
      {
        i1 -= 1;
        break;
        label200:
        if ((localao.c() >= paramInt1) && (!((af)localObject).b(i1))) {
          localao.a(4);
        }
      }
    }
    requestLayout();
  }
  
  public final void a(y paramy)
  {
    if (this.v != null) {
      this.v.a("Cannot add item decoration during a scroll  or layout");
    }
    if (this.g.isEmpty()) {
      setWillNotDraw(false);
    }
    this.g.add(paramy);
    q();
    requestLayout();
  }
  
  final void a(String paramString)
  {
    if (this.I)
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  final void a(boolean paramBoolean)
  {
    if (this.C)
    {
      if ((paramBoolean) && (this.D) && (this.v != null) && (this.f != null)) {
        g();
      }
      this.C = false;
      this.D = false;
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    super.addFocusables(paramArrayList, paramInt1, paramInt2);
  }
  
  final void b()
  {
    if (this.h != null) {
      return;
    }
    this.h = new r(getContext());
    if (this.t)
    {
      this.h.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.h.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  final void c()
  {
    if (this.j != null) {
      return;
    }
    this.j = new r(getContext());
    if (this.t)
    {
      this.j.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    this.j.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ab)) && (aa.a((ab)paramLayoutParams));
  }
  
  protected int computeHorizontalScrollExtent()
  {
    if (this.v.c()) {
      return this.v.c(this.n);
    }
    return 0;
  }
  
  protected int computeHorizontalScrollOffset()
  {
    if (this.v.c()) {
      return this.v.a(this.n);
    }
    return 0;
  }
  
  protected int computeHorizontalScrollRange()
  {
    if (this.v.c()) {
      return this.v.e(this.n);
    }
    return 0;
  }
  
  protected int computeVerticalScrollExtent()
  {
    if (this.v.d()) {
      return this.v.d(this.n);
    }
    return 0;
  }
  
  protected int computeVerticalScrollOffset()
  {
    if (this.v.d()) {
      return this.v.b(this.n);
    }
    return 0;
  }
  
  protected int computeVerticalScrollRange()
  {
    if (this.v.d()) {
      return this.v.f(this.n);
    }
    return 0;
  }
  
  final void d()
  {
    if (this.i != null) {
      return;
    }
    this.i = new r(getContext());
    if (this.t)
    {
      this.i.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.i.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public void draw(Canvas paramCanvas)
  {
    int i3 = 1;
    int i4 = 0;
    super.draw(paramCanvas);
    int i2 = this.g.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((y)this.g.get(i1)).a(paramCanvas, this, this.n);
      i1 += 1;
    }
    int i5;
    if ((this.h != null) && (!this.h.a()))
    {
      i5 = paramCanvas.save();
      if (this.t)
      {
        i1 = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i1 + -getHeight(), 0.0F);
        if ((this.h == null) || (!this.h.a(paramCanvas))) {
          break label456;
        }
        i2 = 1;
        label128:
        paramCanvas.restoreToCount(i5);
      }
    }
    for (;;)
    {
      i1 = i2;
      if (this.i != null)
      {
        i1 = i2;
        if (!this.i.a())
        {
          i5 = paramCanvas.save();
          if (this.t) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((this.i == null) || (!this.i.a(paramCanvas))) {
            break label461;
          }
          i1 = 1;
          label202:
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      i2 = i1;
      if (this.j != null)
      {
        i2 = i1;
        if (!this.j.a())
        {
          i5 = paramCanvas.save();
          int i6 = getWidth();
          if (!this.t) {
            break label466;
          }
          i2 = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-i2, -i6);
          if ((this.j == null) || (!this.j.a(paramCanvas))) {
            break label471;
          }
          i2 = 1;
          label295:
          i2 = i1 | i2;
          paramCanvas.restoreToCount(i5);
        }
      }
      i1 = i2;
      if (this.k != null)
      {
        i1 = i2;
        if (!this.k.a())
        {
          i5 = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!this.t) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i1 = i4;
          if (this.k != null)
          {
            i1 = i4;
            if (this.k.a(paramCanvas)) {
              i1 = 1;
            }
          }
          i1 = i2 | i1;
          paramCanvas.restoreToCount(i5);
        }
      }
      if ((i1 == 0) && (this.l != null) && (this.g.size() > 0) && (this.l.b())) {
        i1 = i3;
      }
      for (;;)
      {
        if (i1 != 0) {
          ViewCompat.d(this);
        }
        return;
        i1 = 0;
        break;
        label456:
        i2 = 0;
        break label128;
        label461:
        i1 = 0;
        break label202;
        label466:
        i2 = 0;
        break label257;
        label471:
        i2 = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      i2 = 0;
    }
  }
  
  final void e()
  {
    if (this.k != null) {
      return;
    }
    this.k = new r(getContext());
    if (this.t)
    {
      this.k.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    this.k.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  final boolean f()
  {
    return (this.l != null) && (this.l.m);
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    View localView2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
    View localView1 = localView2;
    if (localView2 == null)
    {
      localView1 = localView2;
      if (this.f != null)
      {
        a();
        localView1 = this.v.c(paramInt, this.a, this.n);
        a(false);
      }
    }
    if (localView1 != null) {
      return localView1;
    }
    return super.focusSearch(paramView, paramInt);
  }
  
  final void g()
  {
    if (this.f == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    this.d.clear();
    a();
    this.I = true;
    p();
    Object localObject2 = this.n;
    if ((this.n.j) && (this.p) && (f())) {}
    int i1;
    for (Object localObject1 = new android.support.v4.e.a();; localObject1 = null)
    {
      ((al)localObject2).d = ((android.support.v4.e.a)localObject1);
      this.p = false;
      this.o = false;
      this.n.i = this.n.k;
      this.n.e = this.f.a();
      if (!this.n.j) {
        break;
      }
      this.n.b.clear();
      this.n.c.clear();
      i2 = this.c.a();
      i1 = 0;
      while (i1 < i2)
      {
        localObject1 = b(this.c.b(i1));
        if ((!((ao)localObject1).b()) && ((!((ao)localObject1).i()) || (this.f.b)))
        {
          localObject2 = ((ao)localObject1).a;
          this.n.b.put(localObject1, new z((ao)localObject1, ((View)localObject2).getLeft(), ((View)localObject2).getTop(), ((View)localObject2).getRight(), ((View)localObject2).getBottom()));
        }
        i1 += 1;
      }
    }
    long l1;
    boolean bool;
    if (this.n.k)
    {
      i2 = this.c.b();
      i1 = 0;
      while (i1 < i2)
      {
        localObject1 = b(this.c.c(i1));
        if ((!((ao)localObject1).b()) && (((ao)localObject1).c == -1)) {
          ((ao)localObject1).c = ((ao)localObject1).b;
        }
        i1 += 1;
      }
      if (this.n.d != null)
      {
        i2 = this.c.a();
        i1 = 0;
        while (i1 < i2)
        {
          localObject1 = b(this.c.b(i1));
          if ((((ao)localObject1).k()) && (!((ao)localObject1).m()) && (!((ao)localObject1).b()))
          {
            l1 = b((ao)localObject1);
            this.n.d.put(Long.valueOf(l1), localObject1);
            this.n.b.remove(localObject1);
          }
          i1 += 1;
        }
      }
      bool = this.n.h;
      this.n.h = false;
      this.v.a(this.a, this.n);
      this.n.h = bool;
      localObject2 = new android.support.v4.e.a();
      i1 = 0;
      if (i1 < this.c.a())
      {
        localObject1 = this.c.b(i1);
        if (!b((View)localObject1).b())
        {
          i2 = 0;
          label530:
          if (i2 >= this.n.b.size()) {
            break label1844;
          }
          if (((ao)this.n.b.b(i2)).a != localObject1) {
            break label613;
          }
        }
      }
    }
    label613:
    label750:
    label762:
    label969:
    label974:
    label1017:
    label1245:
    label1324:
    label1329:
    label1530:
    label1715:
    label1746:
    label1839:
    label1844:
    for (int i2 = 1;; i2 = 0)
    {
      if (i2 == 0) {
        ((android.support.v4.e.a)localObject2).put(localObject1, new Rect(((View)localObject1).getLeft(), ((View)localObject1).getTop(), ((View)localObject1).getRight(), ((View)localObject1).getBottom()));
      }
      i1 += 1;
      break;
      i2 += 1;
      break label530;
      r();
      this.b.c();
      for (;;)
      {
        this.n.e = this.f.a();
        this.n.g = 0;
        this.n.i = false;
        this.v.a(this.a, this.n);
        this.n.h = false;
        this.s = null;
        localObject1 = this.n;
        Object localObject3;
        Object localObject4;
        if ((this.n.j) && (this.l != null))
        {
          bool = true;
          ((al)localObject1).j = bool;
          if (!this.n.j) {
            break label1746;
          }
          if (this.n.d == null) {
            break label969;
          }
          localObject1 = new android.support.v4.e.a();
          i2 = this.c.a();
          i1 = 0;
          if (i1 >= i2) {
            break label1017;
          }
          localObject3 = b(this.c.b(i1));
          if (!((ao)localObject3).b())
          {
            localObject4 = ((ao)localObject3).a;
            l1 = b((ao)localObject3);
            if ((localObject1 == null) || (this.n.d.get(Long.valueOf(l1)) == null)) {
              break label974;
            }
            ((android.support.v4.e.a)localObject1).put(Long.valueOf(l1), localObject3);
          }
        }
        for (;;)
        {
          i1 += 1;
          break label762;
          r();
          this.b.e();
          if (this.n.d == null) {
            break label1839;
          }
          i2 = this.c.a();
          i1 = 0;
          while (i1 < i2)
          {
            localObject1 = b(this.c.b(i1));
            if ((((ao)localObject1).k()) && (!((ao)localObject1).m()) && (!((ao)localObject1).b()))
            {
              l1 = b((ao)localObject1);
              this.n.d.put(Long.valueOf(l1), localObject1);
              this.n.b.remove(localObject1);
            }
            i1 += 1;
          }
          bool = false;
          break;
          localObject1 = null;
          break label750;
          this.n.c.put(localObject3, new z((ao)localObject3, ((View)localObject4).getLeft(), ((View)localObject4).getTop(), ((View)localObject4).getRight(), ((View)localObject4).getBottom()));
        }
        a((android.support.v4.e.a)localObject2);
        i1 = this.n.b.size() - 1;
        while (i1 >= 0)
        {
          localObject3 = (ao)this.n.b.b(i1);
          if (!this.n.c.containsKey(localObject3))
          {
            localObject3 = (z)this.n.b.c(i1);
            this.n.b.d(i1);
            this.a.b(((z)localObject3).a);
            a((z)localObject3);
          }
          i1 -= 1;
        }
        i1 = this.n.c.size();
        int i3;
        if (i1 > 0)
        {
          i1 -= 1;
          if (i1 >= 0)
          {
            localObject4 = (ao)this.n.c.b(i1);
            z localz = (z)this.n.c.c(i1);
            if ((this.n.b.isEmpty()) || (!this.n.b.containsKey(localObject4)))
            {
              this.n.c.d(i1);
              if (localObject2 == null) {
                break label1324;
              }
              localObject3 = (Rect)((android.support.v4.e.a)localObject2).get(((ao)localObject4).a);
              i2 = localz.b;
              i3 = localz.c;
              if ((localObject3 == null) || ((((Rect)localObject3).left == i2) && (((Rect)localObject3).top == i3))) {
                break label1329;
              }
              ((ao)localObject4).a(false);
              if (this.l.a((ao)localObject4, ((Rect)localObject3).left, ((Rect)localObject3).top, i2, i3)) {
                o();
              }
            }
            for (;;)
            {
              i1 -= 1;
              break;
              localObject3 = null;
              break label1245;
              ((ao)localObject4).a(false);
              this.l.b((ao)localObject4);
              o();
            }
          }
        }
        i2 = this.n.c.size();
        i1 = 0;
        while (i1 < i2)
        {
          localObject2 = (ao)this.n.c.b(i1);
          localObject3 = (z)this.n.c.c(i1);
          localObject4 = (z)this.n.b.get(localObject2);
          if ((localObject4 != null) && (localObject3 != null) && ((((z)localObject4).b != ((z)localObject3).b) || (((z)localObject4).c != ((z)localObject3).c)))
          {
            ((ao)localObject2).a(false);
            if (this.l.a((ao)localObject2, ((z)localObject4).b, ((z)localObject4).c, ((z)localObject3).b, ((z)localObject3).c)) {
              o();
            }
          }
          i1 += 1;
        }
        int i4;
        int i5;
        if (this.n.d != null)
        {
          i1 = this.n.d.size();
          i1 -= 1;
          if (i1 < 0) {
            break label1746;
          }
          l1 = ((Long)this.n.d.b(i1)).longValue();
          localObject2 = (ao)this.n.d.get(Long.valueOf(l1));
          if ((!((ao)localObject2).b()) && (this.a.b != null) && (this.a.b.contains(localObject2)))
          {
            localObject3 = (ao)((android.support.v4.e.a)localObject1).get(Long.valueOf(l1));
            ((ao)localObject2).a(false);
            a((ao)localObject2);
            ((ao)localObject2).g = ((ao)localObject3);
            this.a.b((ao)localObject2);
            i4 = ((ao)localObject2).a.getLeft();
            i5 = ((ao)localObject2).a.getTop();
            if ((localObject3 != null) && (!((ao)localObject3).b())) {
              break label1715;
            }
            i3 = i5;
            i2 = i4;
          }
        }
        for (;;)
        {
          this.l.a((ao)localObject2, (ao)localObject3, i4, i5, i2, i3);
          o();
          i1 -= 1;
          break label1530;
          i1 = 0;
          break;
          i2 = ((ao)localObject3).a.getLeft();
          i3 = ((ao)localObject3).a.getTop();
          ((ao)localObject3).a(false);
          ((ao)localObject3).h = ((ao)localObject2);
        }
        a(false);
        this.v.a(this.a);
        this.n.f = this.n.e;
        this.H = false;
        this.n.j = false;
        this.n.k = false;
        this.I = false;
        aa.b(this.v);
        if (this.a.b != null) {
          this.a.b.clear();
        }
        this.n.d = null;
        return;
        localObject2 = null;
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (this.v == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return this.v.a();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (this.v == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return aa.a(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.v == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return aa.a(paramLayoutParams);
  }
  
  public s getAdapter()
  {
    return this.f;
  }
  
  public ap getCompatAccessibilityDelegate()
  {
    return this.W;
  }
  
  public v getItemAnimator()
  {
    return this.l;
  }
  
  public aa getLayoutManager()
  {
    return this.v;
  }
  
  public ae getRecycledViewPool()
  {
    return this.a.b();
  }
  
  public int getScrollState()
  {
    return this.J;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.z = true;
    this.B = false;
    this.V = false;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.l != null) {
      this.l.d();
    }
    this.B = false;
    setScrollState(0);
    k();
    this.z = false;
    if (this.v != null) {
      this.v.a(this, this.a);
    }
    removeCallbacks(this.aa);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int i2 = this.g.size();
    int i1 = 0;
    while (i1 < i2)
    {
      this.g.get(i1);
      i1 += 1;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    int i2 = paramMotionEvent.getAction();
    if ((i2 == 3) || (i2 == 0)) {
      this.y = null;
    }
    int i4 = this.x.size();
    int i1 = 0;
    if (i1 < i4)
    {
      ac localac = (ac)this.x.get(i1);
      if ((localac.a()) && (i2 != 3)) {
        this.y = localac;
      }
    }
    for (i1 = 1;; i1 = 0)
    {
      if (i1 == 0) {
        break label98;
      }
      n();
      return true;
      i1 += 1;
      break;
    }
    label98:
    boolean bool1 = this.v.c();
    boolean bool2 = this.v.d();
    if (this.L == null) {
      this.L = VelocityTracker.obtain();
    }
    this.L.addMovement(paramMotionEvent);
    i2 = at.a(paramMotionEvent);
    i1 = at.b(paramMotionEvent);
    label192:
    int i5;
    switch (i2)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
    case 2: 
      for (;;)
      {
        if (this.J != 1)
        {
          return false;
          this.K = at.b(paramMotionEvent, 0);
          i1 = (int)(paramMotionEvent.getX() + 0.5F);
          this.O = i1;
          this.M = i1;
          i1 = (int)(paramMotionEvent.getY() + 0.5F);
          this.P = i1;
          this.N = i1;
          if (this.J == 2)
          {
            getParent().requestDisallowInterceptTouchEvent(true);
            setScrollState(1);
            continue;
            this.K = at.b(paramMotionEvent, i1);
            i2 = (int)(at.c(paramMotionEvent, i1) + 0.5F);
            this.O = i2;
            this.M = i2;
            i1 = (int)(at.d(paramMotionEvent, i1) + 0.5F);
            this.P = i1;
            this.N = i1;
            continue;
            i2 = at.a(paramMotionEvent, this.K);
            if (i2 < 0)
            {
              Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.K + " not found. Did any MotionEvents get skipped?");
              return false;
            }
            i1 = (int)(at.c(paramMotionEvent, i2) + 0.5F);
            i2 = (int)(at.d(paramMotionEvent, i2) + 0.5F);
            if (this.J != 1)
            {
              i1 -= this.M;
              i4 = i2 - this.N;
              if ((!bool1) || (Math.abs(i1) <= this.Q)) {
                break label595;
              }
              i2 = this.M;
              i5 = this.Q;
              if (i1 < 0)
              {
                i1 = -1;
                label467:
                this.O = (i1 * i5 + i2);
              }
            }
          }
        }
      }
    }
    label565:
    label595:
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2)
      {
        i2 = i1;
        if (Math.abs(i4) > this.Q)
        {
          i2 = this.N;
          i5 = this.Q;
          if (i4 >= 0) {
            break label565;
          }
        }
      }
      for (i1 = i3;; i1 = 1)
      {
        this.P = (i2 + i1 * i5);
        i2 = 1;
        if (i2 == 0) {
          break;
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
        break;
        i1 = 1;
        break label467;
      }
      a(paramMotionEvent);
      break label192;
      this.L.clear();
      break label192;
      n();
      break label192;
      break;
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a();
    g();
    a(false);
    this.B = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.E)
    {
      a();
      p();
      if (this.n.k)
      {
        this.n.i = true;
        this.E = false;
        a(false);
      }
    }
    else
    {
      if (this.f == null) {
        break label200;
      }
    }
    label200:
    for (this.n.e = this.f.a();; this.n.e = 0)
    {
      aa localaa = this.v;
      int i2 = View.MeasureSpec.getMode(paramInt1);
      int i1 = View.MeasureSpec.getMode(paramInt2);
      paramInt1 = View.MeasureSpec.getSize(paramInt1);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      switch (i2)
      {
      default: 
        paramInt1 = ViewCompat.m(localaa.i);
      }
      switch (i1)
      {
      default: 
        paramInt2 = ViewCompat.n(localaa.i);
      }
      localaa.i.setMeasuredDimension(paramInt1, paramInt2);
      this.n.i = false;
      return;
      this.b.e();
      this.n.i = false;
      break;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    this.s = ((ai)paramParcelable);
    super.onRestoreInstanceState(this.s.getSuperState());
    if ((this.v != null) && (this.s.a != null)) {
      this.v.a(this.s.a);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    ai localai = new ai(super.onSaveInstanceState());
    if (this.s != null)
    {
      ai.a(localai, this.s);
      return localai;
    }
    if (this.v != null)
    {
      localai.a = this.v.b();
      return localai;
    }
    localai.a = null;
    return localai;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      m();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = -1;
    int i1 = paramMotionEvent.getAction();
    if (this.y != null)
    {
      if (i1 == 0) {
        this.y = null;
      }
    }
    else
    {
      if (i1 == 0) {
        break label126;
      }
      i2 = this.x.size();
      i1 = 0;
      if (i1 >= i2) {
        break label126;
      }
      ac localac = (ac)this.x.get(i1);
      if (!localac.a()) {
        break label117;
      }
      this.y = localac;
      i1 = 1;
    }
    for (;;)
    {
      if (i1 == 0) {
        break label132;
      }
      n();
      return true;
      if ((i1 == 3) || (i1 == 1)) {
        this.y = null;
      }
      i1 = 1;
      continue;
      label117:
      i1 += 1;
      break;
      label126:
      i1 = 0;
    }
    label132:
    boolean bool1 = this.v.c();
    boolean bool2 = this.v.d();
    if (this.L == null) {
      this.L = VelocityTracker.obtain();
    }
    this.L.addMovement(paramMotionEvent);
    int i2 = at.a(paramMotionEvent);
    i1 = at.b(paramMotionEvent);
    int i4;
    int i5;
    int i6;
    int i7;
    switch (i2)
    {
    case 4: 
    default: 
      return true;
    case 0: 
      this.K = at.b(paramMotionEvent, 0);
      i1 = (int)(paramMotionEvent.getX() + 0.5F);
      this.O = i1;
      this.M = i1;
      i1 = (int)(paramMotionEvent.getY() + 0.5F);
      this.P = i1;
      this.N = i1;
      return true;
    case 5: 
      this.K = at.b(paramMotionEvent, i1);
      i2 = (int)(at.c(paramMotionEvent, i1) + 0.5F);
      this.O = i2;
      this.M = i2;
      i1 = (int)(at.d(paramMotionEvent, i1) + 0.5F);
      this.P = i1;
      this.N = i1;
      return true;
    case 2: 
      i1 = at.a(paramMotionEvent, this.K);
      if (i1 < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.K + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i4 = (int)(at.c(paramMotionEvent, i1) + 0.5F);
      i5 = (int)(at.d(paramMotionEvent, i1) + 0.5F);
      if (this.J != 1)
      {
        i1 = i4 - this.M;
        i6 = i5 - this.N;
        if ((!bool1) || (Math.abs(i1) <= this.Q)) {
          break label926;
        }
        i2 = this.M;
        i7 = this.Q;
        if (i1 >= 0) {
          break label652;
        }
        i1 = -1;
        this.O = (i1 * i7 + i2);
      }
      break;
    }
    label549:
    label617:
    label652:
    label658:
    label664:
    label670:
    label734:
    label909:
    label914:
    label926:
    for (i1 = 1;; i1 = 0)
    {
      i2 = i1;
      if (bool2)
      {
        i2 = i1;
        if (Math.abs(i6) > this.Q)
        {
          i2 = this.N;
          i7 = this.Q;
          if (i6 >= 0) {
            break label658;
          }
          i1 = i3;
          this.P = (i2 + i1 * i7);
          i2 = 1;
        }
      }
      if (i2 != 0)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      if (this.J == 1)
      {
        i1 = this.O;
        i2 = this.P;
        if (!bool1) {
          break label664;
        }
        i1 = -(i4 - i1);
        if (!bool2) {
          break label670;
        }
      }
      for (i2 = -(i5 - i2);; i2 = 0)
      {
        a(i1, i2);
        this.O = i4;
        this.P = i5;
        return true;
        i1 = 1;
        break;
        i1 = 1;
        break label549;
        i1 = 0;
        break label617;
      }
      a(paramMotionEvent);
      return true;
      this.L.computeCurrentVelocity(1000, this.S);
      float f1;
      float f2;
      if (bool1)
      {
        f1 = -bf.a(this.L, this.K);
        if (!bool2) {
          break label909;
        }
        f2 = -bf.b(this.L, this.K);
        if ((f1 != 0.0F) || (f2 != 0.0F))
        {
          i2 = (int)f1;
          i3 = (int)f2;
          i1 = i2;
          if (Math.abs(i2) < this.R) {
            i1 = 0;
          }
          i2 = i3;
          if (Math.abs(i3) < this.R) {
            i2 = 0;
          }
          i1 = Math.max(-this.S, Math.min(i1, this.S));
          i2 = Math.max(-this.S, Math.min(i2, this.S));
          if ((i1 == 0) && (i2 == 0)) {
            break label914;
          }
          paramMotionEvent = this.m;
          paramMotionEvent.d.setScrollState(2);
          paramMotionEvent.b = 0;
          paramMotionEvent.a = 0;
          paramMotionEvent.c.a(i1, i2);
          paramMotionEvent.a();
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          setScrollState(0);
        }
        this.L.clear();
        l();
        return true;
        f1 = 0.0F;
        break;
        f2 = 0.0F;
        break label734;
      }
      n();
      return true;
    }
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    ao localao = b(paramView);
    if (localao != null)
    {
      if (!localao.n()) {
        break label32;
      }
      localao.h();
    }
    label32:
    while (localao.b())
    {
      d(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localao);
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    boolean bool = true;
    Object localObject = this.v;
    int i1;
    if ((((aa)localObject).j != null) && (((aa)localObject).j.c))
    {
      i1 = 1;
      if ((i1 == 0) && (!this.I)) {
        break label121;
      }
      i1 = 1;
      label43:
      if ((i1 == 0) && (paramView2 != null))
      {
        this.e.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
        offsetDescendantRectToMyCoords(paramView2, this.e);
        offsetRectIntoDescendantCoords(paramView1, this.e);
        localObject = this.e;
        if (this.B) {
          break label127;
        }
      }
    }
    for (;;)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
      i1 = 0;
      break;
      label121:
      i1 = 0;
      break label43;
      label127:
      bool = false;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    aa localaa = this.v;
    int i2 = localaa.j();
    int i4 = localaa.k();
    int i3 = localaa.h();
    int i8 = localaa.l();
    int i1 = localaa.i();
    int i5 = localaa.m();
    int i9 = paramView.getLeft() + paramRect.left;
    int i6 = paramView.getTop() + paramRect.top;
    int i10 = paramRect.width();
    int i7 = paramRect.height();
    i2 = Math.min(0, i9 - i2);
    i4 = Math.min(0, i6 - i4);
    i3 = Math.max(0, i10 + i9 - (i3 - i8));
    i5 = Math.max(0, i7 + i6 - (i1 - i5));
    if (ViewCompat.h(this) == 1) {
      if (i3 != 0)
      {
        i1 = i3;
        if (i4 == 0) {
          break label211;
        }
        i2 = i4;
        label164:
        if ((i1 == 0) && (i2 == 0)) {
          break label242;
        }
        if (!paramBoolean) {
          break label218;
        }
        scrollBy(i1, i2);
      }
    }
    for (;;)
    {
      return true;
      i1 = i2;
      break;
      i1 = i2;
      if (i2 != 0) {
        break;
      }
      i1 = i3;
      break;
      label211:
      i2 = i5;
      break label164;
      label218:
      if ((i1 != 0) || (i2 != 0)) {
        this.m.a(i1, i2);
      }
    }
    label242:
    return false;
  }
  
  public void requestLayout()
  {
    if (!this.C)
    {
      super.requestLayout();
      return;
    }
    this.D = true;
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (this.v == null) {
      throw new IllegalStateException("Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    boolean bool1 = this.v.c();
    boolean bool2 = this.v.d();
    if ((bool1) || (bool2))
    {
      if (!bool1) {
        break label60;
      }
      if (!bool2) {
        break label65;
      }
    }
    for (;;)
    {
      a(paramInt1, paramInt2);
      return;
      label60:
      paramInt1 = 0;
      break;
      label65:
      paramInt2 = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
  }
  
  public void setAccessibilityDelegateCompat(ap paramap)
  {
    this.W = paramap;
    ViewCompat.a(this, this.W);
  }
  
  public void setAdapter(s params)
  {
    if (this.f != null)
    {
      locals = this.f;
      localObject = this.r;
      locals.a.unregisterObserver(localObject);
    }
    if (this.l != null) {
      this.l.d();
    }
    if (this.v != null)
    {
      this.v.b(this.a);
      this.v.a(this.a);
    }
    this.b.a();
    s locals = this.f;
    this.f = params;
    if (params != null)
    {
      localObject = this.r;
      params.a.registerObserver(localObject);
    }
    Object localObject = this.a;
    params = this.f;
    ((af)localObject).a();
    localObject = ((af)localObject).b();
    if (locals != null) {
      ((ae)localObject).b();
    }
    if (((ae)localObject).b == 0) {
      ((ae)localObject).a.clear();
    }
    if (params != null) {
      ((ae)localObject).a();
    }
    this.n.h = true;
    s();
    requestLayout();
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != this.t) {
      m();
    }
    this.t = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (this.B) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    this.A = paramBoolean;
  }
  
  public void setItemAnimator(v paramv)
  {
    if (this.l != null)
    {
      this.l.d();
      this.l.h = null;
    }
    this.l = paramv;
    if (this.l != null) {
      this.l.h = this.U;
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    af localaf = this.a;
    localaf.e = paramInt;
    int i1 = localaf.c.size() - 1;
    while ((i1 >= 0) && (localaf.c.size() > paramInt))
    {
      localaf.b(i1);
      i1 -= 1;
    }
    while (localaf.c.size() > paramInt) {
      localaf.c.remove(localaf.c.size() - 1);
    }
  }
  
  public void setLayoutManager(aa paramaa)
  {
    if (paramaa == this.v) {
      return;
    }
    if (this.v != null)
    {
      if (this.z) {
        this.v.a(this, this.a);
      }
      this.v.a(null);
    }
    this.a.a();
    d locald = this.c;
    locald.a.b();
    for (e locale = locald.b;; locale = locale.b)
    {
      locale.a = 0L;
      if (locale.b == null) {
        break;
      }
    }
    locald.c.clear();
    this.v = paramaa;
    if (paramaa != null)
    {
      if (paramaa.i != null) {
        throw new IllegalArgumentException("LayoutManager " + paramaa + " is already attached to a RecyclerView: " + paramaa.i);
      }
      this.v.a(this);
    }
    requestLayout();
  }
  
  public void setOnScrollListener(ad paramad)
  {
    this.T = paramad;
  }
  
  public void setRecycledViewPool(ae paramae)
  {
    af localaf = this.a;
    if (localaf.f != null) {
      localaf.f.b();
    }
    localaf.f = paramae;
    if (paramae != null)
    {
      paramae = localaf.f;
      localaf.h.getAdapter();
      paramae.a();
    }
  }
  
  public void setRecyclerListener(ag paramag)
  {
    this.w = paramag;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0: 
      this.Q = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    this.Q = bx.a(localViewConfiguration);
  }
  
  public void setViewCacheExtension(am paramam)
  {
    this.a.g = paramam;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */