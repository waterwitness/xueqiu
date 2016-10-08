package com.c.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;

final class k
  extends q
{
  private float g;
  private float h;
  private float i;
  private boolean j = true;
  
  public k(o... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  private k b()
  {
    ArrayList localArrayList = this.e;
    int m = this.e.size();
    o[] arrayOfo = new o[m];
    int k = 0;
    while (k < m)
    {
      arrayOfo[k] = ((o)((n)localArrayList.get(k)).b());
      k += 1;
    }
    return new k(arrayOfo);
  }
  
  public final Object a(float paramFloat)
  {
    return Float.valueOf(b(paramFloat));
  }
  
  public final float b(float paramFloat)
  {
    int k = 1;
    float f1;
    if (this.a == 2)
    {
      if (this.j)
      {
        this.j = false;
        this.g = ((o)this.e.get(0)).e;
        this.h = ((o)this.e.get(1)).e;
        this.i = (this.h - this.g);
      }
      f1 = paramFloat;
      if (this.d != null) {
        f1 = this.d.getInterpolation(paramFloat);
      }
      if (this.f == null) {
        return this.g + this.i * f1;
      }
      return ((Number)this.f.a(f1, Float.valueOf(this.g), Float.valueOf(this.h))).floatValue();
    }
    o localo;
    float f2;
    float f3;
    float f4;
    float f5;
    if (paramFloat <= 0.0F)
    {
      localObject = (o)this.e.get(0);
      localo = (o)this.e.get(1);
      f2 = ((o)localObject).e;
      f3 = localo.e;
      f4 = ((n)localObject).a;
      f5 = localo.a;
      localObject = localo.c;
      f1 = paramFloat;
      if (localObject != null) {
        f1 = ((Interpolator)localObject).getInterpolation(paramFloat);
      }
      paramFloat = (f1 - f4) / (f5 - f4);
      if (this.f == null) {
        return paramFloat * (f3 - f2) + f2;
      }
      return ((Number)this.f.a(paramFloat, Float.valueOf(f2), Float.valueOf(f3))).floatValue();
    }
    if (paramFloat >= 1.0F)
    {
      localObject = (o)this.e.get(this.a - 2);
      localo = (o)this.e.get(this.a - 1);
      f2 = ((o)localObject).e;
      f3 = localo.e;
      f4 = ((n)localObject).a;
      f5 = localo.a;
      localObject = localo.c;
      f1 = paramFloat;
      if (localObject != null) {
        f1 = ((Interpolator)localObject).getInterpolation(paramFloat);
      }
      paramFloat = (f1 - f4) / (f5 - f4);
      if (this.f == null) {
        return paramFloat * (f3 - f2) + f2;
      }
      return ((Number)this.f.a(paramFloat, Float.valueOf(f2), Float.valueOf(f3))).floatValue();
    }
    for (Object localObject = (o)this.e.get(0); k < this.a; localObject = localo)
    {
      localo = (o)this.e.get(k);
      if (paramFloat < localo.a)
      {
        Interpolator localInterpolator = localo.c;
        f1 = paramFloat;
        if (localInterpolator != null) {
          f1 = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = (f1 - ((n)localObject).a) / (localo.a - ((n)localObject).a);
        f1 = ((o)localObject).e;
        f2 = localo.e;
        if (this.f == null) {
          return (f2 - f1) * paramFloat + f1;
        }
        return ((Number)this.f.a(paramFloat, Float.valueOf(f1), Float.valueOf(f2))).floatValue();
      }
      k += 1;
    }
    return ((Number)((n)this.e.get(this.a - 1)).a()).floatValue();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */