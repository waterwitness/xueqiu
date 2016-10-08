package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.a.a.c;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class v
  implements Serializable, Cloneable, org.apache.a.b<v, w>
{
  public static final Map<w, org.apache.a.a.b> g;
  private static final m h = new m("XmPushActionSendFeedback");
  private static final org.apache.a.b.e i = new org.apache.a.b.e("debug", (byte)11, (short)1);
  private static final org.apache.a.b.e j = new org.apache.a.b.e("target", (byte)12, (short)2);
  private static final org.apache.a.b.e k = new org.apache.a.b.e("id", (byte)11, (short)3);
  private static final org.apache.a.b.e l = new org.apache.a.b.e("appId", (byte)11, (short)4);
  private static final org.apache.a.b.e m = new org.apache.a.b.e("feedbacks", (byte)13, (short)5);
  private static final org.apache.a.b.e n = new org.apache.a.b.e("category", (byte)11, (short)6);
  public String a;
  public f b;
  public String c;
  public String d;
  public Map<String, String> e;
  public String f;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(w.class);
    localEnumMap.put(w.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(w.b, new org.apache.a.a.b("target", (byte)2, new org.apache.a.a.g(f.class)));
    localEnumMap.put(w.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(w.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(w.e, new org.apache.a.a.b("feedbacks", (byte)2, new org.apache.a.a.e(new c((byte)11), new c((byte)11))));
    localEnumMap.put(w.f, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    g = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(v.class, g);
  }
  
  private boolean a()
  {
    return this.a != null;
  }
  
  private boolean b()
  {
    return this.b != null;
  }
  
  private boolean c()
  {
    return this.c != null;
  }
  
  private boolean d()
  {
    return this.d != null;
  }
  
  private boolean e()
  {
    return this.e != null;
  }
  
  private boolean f()
  {
    return this.f != null;
  }
  
  private void g()
  {
    if (this.c == null) {
      throw new i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new i("Required field 'appId' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final void a(h paramh)
  {
    paramh.d();
    for (;;)
    {
      Object localObject = paramh.f();
      if (((org.apache.a.b.e)localObject).b == 0) {
        break;
      }
      switch (((org.apache.a.b.e)localObject).c)
      {
      default: 
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 1: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.a = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 2: 
        if (((org.apache.a.b.e)localObject).b == 12)
        {
          this.b = new f();
          this.b.a(paramh);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 3: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.c = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 4: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.d = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 5: 
        if (((org.apache.a.b.e)localObject).b == 13)
        {
          localObject = paramh.g();
          this.e = new HashMap(((org.apache.a.b.g)localObject).c * 2);
          int i1 = 0;
          while (i1 < ((org.apache.a.b.g)localObject).c)
          {
            String str1 = paramh.p();
            String str2 = paramh.p();
            this.e.put(str1, str2);
            i1 += 1;
          }
        }
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 6: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.f = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    g();
  }
  
  public final boolean a(v paramv)
  {
    if (paramv == null) {}
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
            do
            {
              do
              {
                return false;
                bool1 = a();
                bool2 = paramv.a();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramv.a))));
              bool1 = b();
              bool2 = paramv.b();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(paramv.b))));
            bool1 = c();
            bool2 = paramv.c();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramv.c))));
          bool1 = d();
          bool2 = paramv.d();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramv.d))));
        bool1 = e();
        bool2 = paramv.e();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramv.e))));
      bool1 = f();
      bool2 = paramv.f();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(paramv.f))));
    return true;
  }
  
  public final void b(h paramh)
  {
    g();
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(i);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(j);
      this.b.b(paramh);
    }
    if (this.c != null)
    {
      paramh.a(k);
      paramh.a(this.c);
    }
    if (this.d != null)
    {
      paramh.a(l);
      paramh.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramh.a(m);
      paramh.a(new org.apache.a.b.g((byte)11, (byte)11, this.e.size()));
      Iterator localIterator = this.e.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramh.a((String)localEntry.getKey());
        paramh.a((String)localEntry.getValue());
      }
    }
    if ((this.f != null) && (f()))
    {
      paramh.a(n);
      paramh.a(this.f);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof v)) {
      return false;
    }
    return a((v)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionSendFeedback(");
    int i1 = 1;
    if (a())
    {
      localStringBuilder.append("debug:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        i1 = 0;
      }
    }
    else
    {
      if (!b()) {
        break label320;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label258;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label157:
    label195:
    label258:
    label284:
    label296:
    label308:
    label320:
    for (;;)
    {
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("id:");
      if (this.c == null)
      {
        localStringBuilder.append("null");
        localStringBuilder.append(", ");
        localStringBuilder.append("appId:");
        if (this.d != null) {
          break label284;
        }
        localStringBuilder.append("null");
        if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("feedbacks:");
          if (this.e != null) {
            break label296;
          }
          localStringBuilder.append("null");
        }
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.f != null) {
            break label308;
          }
          localStringBuilder.append("null");
        }
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        localStringBuilder.append(this.b);
        i1 = i2;
        break label91;
        localStringBuilder.append(this.c);
        break label126;
        localStringBuilder.append(this.d);
        break label157;
        localStringBuilder.append(this.e);
        break label195;
        localStringBuilder.append(this.f);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */