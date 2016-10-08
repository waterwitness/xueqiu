package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

public class ij
  extends kr
{
  private static final String c = ij.class.getName();
  public ArrayList<ik> a;
  public in b;
  private final int d = 1000;
  private final int e = 30000;
  private final long f;
  private final int g;
  private final int h;
  private final iq i;
  private final Map<String, String> j;
  private long k;
  private int l;
  private int m;
  private String n;
  private String o;
  private boolean p;
  
  public ij(String paramString1, long paramLong1, String paramString2, long paramLong2, int paramInt1, int paramInt2, iq paramiq, Map<String, String> paramMap, int paramInt3, int paramInt4, String paramString3)
  {
    a(paramString2);
    a(paramLong2);
    a_();
    this.o = paramString1;
    this.f = paramLong1;
    c(paramInt1);
    this.g = paramInt1;
    this.h = paramInt2;
    this.i = paramiq;
    this.j = paramMap;
    this.l = paramInt3;
    this.m = paramInt4;
    this.n = paramString3;
    this.k = 30000L;
    this.a = new ArrayList();
  }
  
  public void a(ik paramik)
  {
    this.a.add(paramik);
  }
  
  public void a(in paramin)
  {
    this.b = paramin;
  }
  
  public void a(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }
  
  public boolean a(int paramInt)
  {
    return paramInt > this.h;
  }
  
  public void a_()
  {
    super.a_();
    if (super.r() != 1) {
      this.k *= 3L;
    }
  }
  
  public void b()
  {
    try
    {
      this.b.g();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean c()
  {
    return r() >= this.g;
  }
  
  public long e()
  {
    return this.f;
  }
  
  public iq f()
  {
    return this.i;
  }
  
  public long g()
  {
    return this.k;
  }
  
  public Map<String, String> h()
  {
    return this.j;
  }
  
  public String i()
  {
    return this.o;
  }
  
  public int j()
  {
    return this.l;
  }
  
  public int k()
  {
    return this.m;
  }
  
  public String l()
  {
    return this.n;
  }
  
  public String m()
  {
    return this.b.c();
  }
  
  public boolean n()
  {
    return this.p;
  }
  
  public void o()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((ik)localIterator.next()).l = this;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ij.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */