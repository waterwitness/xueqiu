package com.c.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;

final class m
  extends q
{
  private int g;
  private int h;
  private int i;
  private boolean j = true;
  
  public m(p... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  private m b()
  {
    ArrayList localArrayList = this.e;
    int m = this.e.size();
    p[] arrayOfp = new p[m];
    int k = 0;
    while (k < m)
    {
      arrayOfp[k] = ((p)((n)localArrayList.get(k)).b());
      k += 1;
    }
    return new m(arrayOfp);
  }
  
  public final Object a(float paramFloat)
  {
    return Integer.valueOf(b(paramFloat));
  }
  
  public final int b(float paramFloat)
  {
    int k = 1;
    float f1;
    if (this.a == 2)
    {
      if (this.j)
      {
        this.j = false;
        this.g = ((p)this.e.get(0)).e;
        this.h = ((p)this.e.get(1)).e;
        this.i = (this.h - this.g);
      }
      f1 = paramFloat;
      if (this.d != null) {
        f1 = this.d.getInterpolation(paramFloat);
      }
      if (this.f == null) {
        return this.g + (int)(this.i * f1);
      }
      return ((Number)this.f.a(f1, Integer.valueOf(this.g), Integer.valueOf(this.h))).intValue();
    }
    p localp;
    int m;
    float f2;
    float f3;
    if (paramFloat <= 0.0F)
    {
      localObject = (p)this.e.get(0);
      localp = (p)this.e.get(1);
      k = ((p)localObject).e;
      m = localp.e;
      f2 = ((n)localObject).a;
      f3 = localp.a;
      localObject = localp.c;
      f1 = paramFloat;
      if (localObject != null) {
        f1 = ((Interpolator)localObject).getInterpolation(paramFloat);
      }
      paramFloat = (f1 - f2) / (f3 - f2);
      if (this.f == null) {
        return (int)(paramFloat * (m - k)) + k;
      }
      return ((Number)this.f.a(paramFloat, Integer.valueOf(k), Integer.valueOf(m))).intValue();
    }
    if (paramFloat >= 1.0F)
    {
      localObject = (p)this.e.get(this.a - 2);
      localp = (p)this.e.get(this.a - 1);
      k = ((p)localObject).e;
      m = localp.e;
      f2 = ((n)localObject).a;
      f3 = localp.a;
      localObject = localp.c;
      f1 = paramFloat;
      if (localObject != null) {
        f1 = ((Interpolator)localObject).getInterpolation(paramFloat);
      }
      paramFloat = (f1 - f2) / (f3 - f2);
      if (this.f == null) {
        return (int)(paramFloat * (m - k)) + k;
      }
      return ((Number)this.f.a(paramFloat, Integer.valueOf(k), Integer.valueOf(m))).intValue();
    }
    for (Object localObject = (p)this.e.get(0); k < this.a; localObject = localp)
    {
      localp = (p)this.e.get(k);
      if (paramFloat < localp.a)
      {
        Interpolator localInterpolator = localp.c;
        f1 = paramFloat;
        if (localInterpolator != null) {
          f1 = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = (f1 - ((n)localObject).a) / (localp.a - ((n)localObject).a);
        k = ((p)localObject).e;
        m = localp.e;
        if (this.f == null) {
          return (int)((m - k) * paramFloat) + k;
        }
        return ((Number)this.f.a(paramFloat, Integer.valueOf(k), Integer.valueOf(m))).intValue();
      }
      k += 1;
    }
    return ((Number)((n)this.e.get(this.a - 1)).a()).intValue();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */