package com.xiaomi.push.b;

import com.google.a.a.a;
import com.google.a.a.e;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class b
  extends e
{
  public int a = 0;
  public boolean b;
  public boolean c = false;
  public List<String> d = Collections.emptyList();
  private boolean e;
  private boolean f;
  private int g = 0;
  private boolean h;
  private boolean i = false;
  private int j = -1;
  
  public static b b(a parama)
  {
    return new b().c(parama);
  }
  
  private b c(a parama)
  {
    for (;;)
    {
      k = parama.a();
      boolean bool;
      switch (k)
      {
      default: 
        if (parama.b(k)) {}
        break;
      case 0: 
        return this;
      case 8: 
        k = parama.c();
        this.e = true;
        this.a = k;
        break;
      case 16: 
        bool = parama.b();
        this.b = true;
        this.c = bool;
        break;
      case 24: 
        k = parama.c();
        this.f = true;
        this.g = k;
        break;
      case 32: 
        bool = parama.b();
        this.h = true;
        this.i = bool;
      }
    }
    int k = parama.c();
    String str;
    if ((k <= parama.b - parama.c) && (k > 0))
    {
      str = new String(parama.a, parama.c, k, "UTF-8");
      parama.c = (k + parama.c);
    }
    for (;;)
    {
      if (this.d.isEmpty()) {
        this.d = new ArrayList();
      }
      this.d.add(str);
      break;
      str = new String(parama.c(k), "UTF-8");
    }
  }
  
  public final int a()
  {
    int n = 0;
    int k;
    if (this.e)
    {
      k = this.a;
      m = com.google.a.a.b.a(1);
    }
    for (int m = com.google.a.a.b.c(k) + m + 0;; m = 0)
    {
      k = m;
      if (this.b) {
        k = m + (com.google.a.a.b.a(2) + 1);
      }
      m = k;
      if (this.f) {
        m = k + com.google.a.a.b.b(3, this.g);
      }
      if (this.h) {}
      for (k = m + (com.google.a.a.b.a(4) + 1);; k = m)
      {
        Iterator localIterator = this.d.iterator();
        m = n;
        while (localIterator.hasNext()) {
          m += com.google.a.a.b.a((String)localIterator.next());
        }
        k = k + m + this.d.size() * 1;
        this.j = k;
        return k;
      }
    }
  }
  
  public final void a(com.google.a.a.b paramb)
  {
    int k;
    if (this.e)
    {
      k = this.a;
      paramb.c(1, 0);
      paramb.b(k);
    }
    if (this.b) {
      paramb.a(2, this.c);
    }
    if (this.f) {
      paramb.a(3, this.g);
    }
    if (this.h) {
      paramb.a(4, this.i);
    }
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      paramb.c(5, 2);
      localObject = ((String)localObject).getBytes("UTF-8");
      paramb.b(localObject.length);
      int m = localObject.length;
      if (paramb.b - paramb.c >= m)
      {
        System.arraycopy(localObject, 0, paramb.a, paramb.c, m);
        paramb.c += m;
      }
      else
      {
        int n = paramb.b - paramb.c;
        System.arraycopy(localObject, 0, paramb.a, paramb.c, n);
        k = n + 0;
        m -= n;
        paramb.c = paramb.b;
        paramb.a();
        if (m <= paramb.b)
        {
          System.arraycopy(localObject, k, paramb.a, 0, m);
          paramb.c = m;
        }
        else
        {
          paramb.d.write((byte[])localObject, k, m);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */