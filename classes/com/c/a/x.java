package com.c.a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.HashMap;

public class x
  extends a
{
  private static ThreadLocal<y> h = new ThreadLocal();
  private static final ThreadLocal<ArrayList<x>> i = new ThreadLocal() {};
  private static final ThreadLocal<ArrayList<x>> j = new ThreadLocal() {};
  private static final ThreadLocal<ArrayList<x>> k = new ThreadLocal() {};
  private static final ThreadLocal<ArrayList<x>> l = new ThreadLocal() {};
  private static final ThreadLocal<ArrayList<x>> m = new ThreadLocal() {};
  private static final Interpolator n = new AccelerateDecelerateInterpolator();
  private static final w o = new l();
  private static final w p = new j();
  private static long z = 10L;
  private int A = 0;
  private int B = 1;
  private Interpolator C = n;
  private ArrayList<z> D = null;
  long b;
  long c = -1L;
  int d = 0;
  boolean e = false;
  t[] f;
  HashMap<String, t> g;
  private boolean q = false;
  private int r = 0;
  private float s = 0.0F;
  private boolean t = false;
  private long u;
  private boolean v = false;
  private boolean w = false;
  private long x = 300L;
  private long y = 0L;
  
  public static x b(float... paramVarArgs)
  {
    x localx = new x();
    localx.a(paramVarArgs);
    return localx;
  }
  
  public static x b(int... paramVarArgs)
  {
    x localx = new x();
    localx.a(paramVarArgs);
    return localx;
  }
  
  private void d(long paramLong)
  {
    c();
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    if (this.d != 1)
    {
      this.c = paramLong;
      this.d = 2;
    }
    this.b = (l1 - paramLong);
    c(l1);
  }
  
  public void a()
  {
    if (Looper.myLooper() == null) {
      throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    }
    this.q = false;
    this.r = 0;
    this.d = 0;
    this.w = true;
    this.t = false;
    ((ArrayList)j.get()).add(this);
    if (this.y == 0L)
    {
      if ((!this.e) || (this.d == 0)) {}
      for (long l1 = 0L;; l1 = AnimationUtils.currentAnimationTimeMillis() - this.b)
      {
        d(l1);
        this.d = 0;
        this.v = true;
        if (this.a == null) {
          break;
        }
        localObject = (ArrayList)this.a.clone();
        int i2 = ((ArrayList)localObject).size();
        int i1 = 0;
        while (i1 < i2)
        {
          ((b)((ArrayList)localObject).get(i1)).b(this);
          i1 += 1;
        }
      }
    }
    y localy = (y)h.get();
    Object localObject = localy;
    if (localy == null)
    {
      localObject = new y((byte)0);
      h.set(localObject);
    }
    ((y)localObject).sendEmptyMessage(0);
  }
  
  void a(float paramFloat)
  {
    paramFloat = this.C.getInterpolation(paramFloat);
    this.s = paramFloat;
    int i2 = this.f.length;
    int i1 = 0;
    while (i1 < i2)
    {
      this.f[i1].a(paramFloat);
      i1 += 1;
    }
    if (this.D != null)
    {
      i2 = this.D.size();
      i1 = 0;
      while (i1 < i2)
      {
        ((z)this.D.get(i1)).a(this);
        i1 += 1;
      }
    }
  }
  
  public final void a(z paramz)
  {
    if (this.D == null) {
      this.D = new ArrayList();
    }
    this.D.add(paramz);
  }
  
  public void a(float... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return;
    }
    if ((this.f == null) || (this.f.length == 0)) {
      a(new t[] { t.a("", paramVarArgs) });
    }
    for (;;)
    {
      this.e = false;
      return;
      this.f[0].a(paramVarArgs);
    }
  }
  
  public void a(int... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return;
    }
    if ((this.f == null) || (this.f.length == 0)) {
      a(new t[] { t.a("", paramVarArgs) });
    }
    for (;;)
    {
      this.e = false;
      return;
      this.f[0].a(paramVarArgs);
    }
  }
  
  public final void a(t... paramVarArgs)
  {
    this.f = paramVarArgs;
    this.g = new HashMap(1);
    int i1 = 0;
    while (i1 <= 0)
    {
      t localt = paramVarArgs[0];
      this.g.put(localt.a, localt);
      i1 += 1;
    }
    this.e = false;
  }
  
  public x b(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    }
    this.x = paramLong;
    return this;
  }
  
  void c()
  {
    if (!this.e)
    {
      int i2 = this.f.length;
      int i1 = 0;
      if (i1 < i2)
      {
        t localt = this.f[i1];
        w localw;
        if (localt.j == null)
        {
          if (localt.d != Integer.class) {
            break label80;
          }
          localw = t.f;
        }
        for (;;)
        {
          localt.j = localw;
          if (localt.j != null) {
            localt.e.f = localt.j;
          }
          i1 += 1;
          break;
          label80:
          if (localt.d == Float.class) {
            localw = t.g;
          } else {
            localw = null;
          }
        }
      }
      this.e = true;
    }
  }
  
  final boolean c(long paramLong)
  {
    boolean bool1 = true;
    boolean bool2 = false;
    if (this.d == 0)
    {
      this.d = 1;
      if (this.c >= 0L) {
        break label62;
      }
      this.b = paramLong;
    }
    for (;;)
    {
      switch (this.d)
      {
      default: 
        return false;
        label62:
        this.b = (paramLong - this.c);
        this.c = -1L;
      }
    }
    float f1;
    if (this.x > 0L) {
      f1 = (float)(paramLong - this.b) / (float)this.x;
    }
    for (;;)
    {
      if (f1 >= 1.0F) {
        if ((this.r < this.A) || (this.A == -1))
        {
          if (this.a != null)
          {
            int i2 = this.a.size();
            int i1 = 0;
            for (;;)
            {
              if (i1 < i2)
              {
                this.a.get(i1);
                i1 += 1;
                continue;
                f1 = 1.0F;
                break;
              }
            }
          }
          if (this.B == 2)
          {
            if (this.q) {
              bool1 = false;
            }
            this.q = bool1;
          }
          this.r += (int)f1;
          f1 %= 1.0F;
          this.b += this.x;
          bool1 = bool2;
        }
      }
    }
    for (;;)
    {
      float f2 = f1;
      if (this.q) {
        f2 = 1.0F - f1;
      }
      a(f2);
      return bool1;
      f1 = Math.min(f1, 1.0F);
      bool1 = true;
      continue;
      bool1 = bool2;
    }
  }
  
  public x d()
  {
    int i2 = 0;
    x localx = (x)super.b();
    int i3;
    int i1;
    if (this.D != null)
    {
      localObject = this.D;
      localx.D = new ArrayList();
      i3 = ((ArrayList)localObject).size();
      i1 = 0;
      while (i1 < i3)
      {
        localx.D.add(((ArrayList)localObject).get(i1));
        i1 += 1;
      }
    }
    localx.c = -1L;
    localx.q = false;
    localx.r = 0;
    localx.e = false;
    localx.d = 0;
    localx.t = false;
    Object localObject = this.f;
    if (localObject != null)
    {
      i3 = localObject.length;
      localx.f = new t[i3];
      localx.g = new HashMap(i3);
      i1 = i2;
      while (i1 < i3)
      {
        t localt = localObject[i1].a();
        localx.f[i1] = localt;
        localx.g.put(localt.a, localt);
        i1 += 1;
      }
    }
    return localx;
  }
  
  public final Object e()
  {
    if ((this.f != null) && (this.f.length > 0)) {
      return this.f[0].b();
    }
    return null;
  }
  
  public String toString()
  {
    String str1 = "ValueAnimator@" + Integer.toHexString(hashCode());
    String str2 = str1;
    if (this.f != null)
    {
      int i1 = 0;
      for (;;)
      {
        str2 = str1;
        if (i1 >= this.f.length) {
          break;
        }
        str1 = str1 + "\n    " + this.f[i1].toString();
        i1 += 1;
      }
    }
    return str2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */