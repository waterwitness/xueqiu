package com.c.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class q
{
  int a;
  n b;
  n c;
  Interpolator d;
  ArrayList<n> e;
  w f;
  
  public q(n... paramVarArgs)
  {
    this.a = paramVarArgs.length;
    this.e = new ArrayList();
    this.e.addAll(Arrays.asList(paramVarArgs));
    this.b = ((n)this.e.get(0));
    this.c = ((n)this.e.get(this.a - 1));
    this.d = this.c.c;
  }
  
  public q a()
  {
    ArrayList localArrayList = this.e;
    int j = this.e.size();
    n[] arrayOfn = new n[j];
    int i = 0;
    while (i < j)
    {
      arrayOfn[i] = ((n)localArrayList.get(i)).b();
      i += 1;
    }
    return new q(arrayOfn);
  }
  
  public Object a(float paramFloat)
  {
    float f1;
    if (this.a == 2)
    {
      f1 = paramFloat;
      if (this.d != null) {
        f1 = this.d.getInterpolation(paramFloat);
      }
      return this.f.a(f1, this.b.a(), this.c.a());
    }
    Object localObject2;
    if (paramFloat <= 0.0F)
    {
      localObject1 = (n)this.e.get(1);
      localObject2 = ((n)localObject1).c;
      f1 = paramFloat;
      if (localObject2 != null) {
        f1 = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = this.b.a;
      paramFloat = (f1 - paramFloat) / (((n)localObject1).a - paramFloat);
      return this.f.a(paramFloat, this.b.a(), ((n)localObject1).a());
    }
    if (paramFloat >= 1.0F)
    {
      localObject1 = (n)this.e.get(this.a - 2);
      localObject2 = this.c.c;
      f1 = paramFloat;
      if (localObject2 != null) {
        f1 = ((Interpolator)localObject2).getInterpolation(paramFloat);
      }
      paramFloat = ((n)localObject1).a;
      paramFloat = (f1 - paramFloat) / (this.c.a - paramFloat);
      return this.f.a(paramFloat, ((n)localObject1).a(), this.c.a());
    }
    Object localObject1 = this.b;
    int i = 1;
    while (i < this.a)
    {
      localObject2 = (n)this.e.get(i);
      if (paramFloat < ((n)localObject2).a)
      {
        Interpolator localInterpolator = ((n)localObject2).c;
        f1 = paramFloat;
        if (localInterpolator != null) {
          f1 = localInterpolator.getInterpolation(paramFloat);
        }
        paramFloat = ((n)localObject1).a;
        paramFloat = (f1 - paramFloat) / (((n)localObject2).a - paramFloat);
        return this.f.a(paramFloat, ((n)localObject1).a(), ((n)localObject2).a());
      }
      i += 1;
      localObject1 = localObject2;
    }
    return this.c.a();
  }
  
  public String toString()
  {
    String str = " ";
    int i = 0;
    while (i < this.a)
    {
      str = str + ((n)this.e.get(i)).a() + "  ";
      i += 1;
    }
    return str;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */