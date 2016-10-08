package com.c.a;

import android.view.View;
import com.c.b.c;
import com.c.c.a.a;
import java.util.HashMap;
import java.util.Map;

public final class r
  extends x
{
  private static final Map<String, c> h;
  private Object i;
  private String j;
  private c k;
  
  static
  {
    HashMap localHashMap = new HashMap();
    h = localHashMap;
    localHashMap.put("alpha", s.a);
    h.put("pivotX", s.b);
    h.put("pivotY", s.c);
    h.put("translationX", s.d);
    h.put("translationY", s.e);
    h.put("rotation", s.f);
    h.put("rotationX", s.g);
    h.put("rotationY", s.h);
    h.put("scaleX", s.i);
    h.put("scaleY", s.j);
    h.put("scrollX", s.k);
    h.put("scrollY", s.l);
    h.put("x", s.m);
    h.put("y", s.n);
  }
  
  public r() {}
  
  private r(Object paramObject, String paramString)
  {
    this.i = paramObject;
    if (this.f != null)
    {
      paramObject = this.f[0];
      String str = ((t)paramObject).a;
      ((t)paramObject).a = paramString;
      this.g.remove(str);
      this.g.put(paramString, paramObject);
    }
    this.j = paramString;
    this.e = false;
  }
  
  public static r a(Object paramObject, String paramString, float... paramVarArgs)
  {
    paramObject = new r(paramObject, paramString);
    ((r)paramObject).a(paramVarArgs);
    return (r)paramObject;
  }
  
  public final void a()
  {
    super.a();
  }
  
  final void a(float paramFloat)
  {
    super.a(paramFloat);
    int n = this.f.length;
    int m = 0;
    while (m < n)
    {
      this.f[m].b(this.i);
      m += 1;
    }
  }
  
  public final void a(float... paramVarArgs)
  {
    if ((this.f == null) || (this.f.length == 0))
    {
      if (this.k != null)
      {
        a(new t[] { t.a(this.k, paramVarArgs) });
        return;
      }
      a(new t[] { t.a(this.j, paramVarArgs) });
      return;
    }
    super.a(paramVarArgs);
  }
  
  public final void a(int... paramVarArgs)
  {
    if ((this.f == null) || (this.f.length == 0))
    {
      if (this.k != null)
      {
        a(new t[] { t.a(this.k, paramVarArgs) });
        return;
      }
      a(new t[] { t.a(this.j, paramVarArgs) });
      return;
    }
    super.a(paramVarArgs);
  }
  
  final void c()
  {
    if (!this.e)
    {
      if ((this.k == null) && (a.a) && ((this.i instanceof View)) && (h.containsKey(this.j)))
      {
        c localc = (c)h.get(this.j);
        if (this.f != null)
        {
          t localt = this.f[0];
          String str = localt.a;
          localt.a(localc);
          this.g.remove(str);
          this.g.put(this.j, localt);
        }
        if (this.k != null) {
          this.j = localc.a;
        }
        this.k = localc;
        this.e = false;
      }
      int n = this.f.length;
      int m = 0;
      while (m < n)
      {
        this.f[m].a(this.i);
        m += 1;
      }
      super.c();
    }
  }
  
  public final String toString()
  {
    String str1 = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.i;
    String str2 = str1;
    if (this.f != null)
    {
      int m = 0;
      for (;;)
      {
        str2 = str1;
        if (m >= this.f.length) {
          break;
        }
        str1 = str1 + "\n    " + this.f[m].toString();
        m += 1;
      }
    }
    return str2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */