package android.support.v7.widget;

import android.support.v4.e.l;
import android.support.v4.e.m;
import java.util.ArrayList;
import java.util.List;

final class a
  implements q
{
  final ArrayList<c> a = new ArrayList();
  final ArrayList<c> b = new ArrayList();
  final b c;
  Runnable d;
  final boolean e;
  final p f;
  private l<c> g = new m();
  
  a(b paramb)
  {
    this(paramb, (byte)0);
  }
  
  private a(b paramb, byte paramByte)
  {
    this.c = paramb;
    this.e = false;
    this.f = new p(this);
  }
  
  private void a(c paramc, int paramInt)
  {
    this.c.a(paramc);
    switch (paramc.a)
    {
    default: 
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 1: 
      this.c.a(paramInt, paramc.c);
      return;
    }
    this.c.c(paramInt, paramc.c);
  }
  
  private void a(List<c> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      a((c)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    int i = this.b.size() - 1;
    c localc;
    if (i >= 0)
    {
      localc = (c)this.b.get(i);
      int k;
      int j;
      if (localc.a == 3) {
        if (localc.b < localc.c)
        {
          k = localc.b;
          j = localc.c;
          label60:
          if ((paramInt1 < k) || (paramInt1 > j)) {
            break label180;
          }
          if (k != localc.b) {
            break label141;
          }
          if (paramInt2 != 0) {
            break label123;
          }
          localc.c += 1;
          label95:
          paramInt1 += 1;
        }
      }
      for (;;)
      {
        i -= 1;
        break;
        k = localc.c;
        j = localc.b;
        break label60;
        label123:
        if (paramInt2 != 1) {
          break label95;
        }
        localc.c -= 1;
        break label95;
        label141:
        if (paramInt2 == 0) {
          localc.b += 1;
        }
        for (;;)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 1) {
            localc.b -= 1;
          }
        }
        label180:
        if (paramInt1 < localc.b)
        {
          if (paramInt2 == 0)
          {
            localc.b += 1;
            localc.c += 1;
            continue;
          }
          if (paramInt2 == 1)
          {
            localc.b -= 1;
            localc.c -= 1;
          }
        }
        continue;
        if (localc.b <= paramInt1)
        {
          if (localc.a == 0) {
            paramInt1 -= localc.c;
          } else if (localc.a == 1) {
            paramInt1 = localc.c + paramInt1;
          }
        }
        else if (paramInt2 == 0) {
          localc.b += 1;
        } else if (paramInt2 == 1) {
          localc.b -= 1;
        }
      }
    }
    paramInt2 = this.b.size() - 1;
    if (paramInt2 >= 0)
    {
      localc = (c)this.b.get(paramInt2);
      if (localc.a == 3) {
        if ((localc.c == localc.b) || (localc.c < 0))
        {
          this.b.remove(paramInt2);
          a(localc);
        }
      }
      for (;;)
      {
        paramInt2 -= 1;
        break;
        if (localc.c <= 0)
        {
          this.b.remove(paramInt2);
          a(localc);
        }
      }
    }
    return paramInt1;
  }
  
  private void b(c paramc)
  {
    if ((paramc.a == 0) || (paramc.a == 3)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int i1 = b(paramc.b, paramc.a);
    int j = paramc.b;
    int k;
    int n;
    int m;
    label105:
    int i2;
    switch (paramc.a)
    {
    default: 
      throw new IllegalArgumentException("op should be remove or update." + paramc);
    case 2: 
      k = 1;
      n = 1;
      m = 1;
      if (m >= paramc.c) {
        break label283;
      }
      i2 = b(paramc.b + k * m, paramc.a);
      switch (paramc.a)
      {
      default: 
        i = 0;
        label162:
        if (i == 0) {}
        break;
      }
      break;
    }
    for (int i = n + 1;; i = n)
    {
      m += 1;
      n = i;
      break label105;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label162;
      }
      i = 0;
      break label162;
      if (i2 == i1)
      {
        i = 1;
        break label162;
      }
      i = 0;
      break label162;
      c localc = a(paramc.a, i1, n);
      a(localc, j);
      a(localc);
      i = j;
      if (paramc.a == 2) {
        i = j + n;
      }
      n = 1;
      i1 = i2;
      j = i;
    }
    label283:
    a(paramc);
    if (n > 0)
    {
      paramc = a(paramc.a, i1, n);
      a(paramc, j);
      a(paramc);
    }
  }
  
  private boolean b(int paramInt)
  {
    int k = this.b.size();
    int i = 0;
    while (i < k)
    {
      c localc = (c)this.b.get(i);
      if (localc.a == 3)
      {
        if (a(localc.c, i + 1) == paramInt) {
          return true;
        }
      }
      else if (localc.a == 0)
      {
        int m = localc.b;
        int n = localc.c;
        int j = localc.b;
        while (j < m + n)
        {
          if (a(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void c(c paramc)
  {
    this.b.add(paramc);
    switch (paramc.a)
    {
    default: 
      throw new IllegalArgumentException("Unknown update op type for " + paramc);
    case 0: 
      this.c.d(paramc.b, paramc.c);
      return;
    case 3: 
      this.c.e(paramc.b, paramc.c);
      return;
    case 1: 
      this.c.b(paramc.b, paramc.c);
      return;
    }
    this.c.c(paramc.b, paramc.c);
  }
  
  final int a(int paramInt)
  {
    return a(paramInt, 0);
  }
  
  final int a(int paramInt1, int paramInt2)
  {
    int k = this.b.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    c localc;
    if (j < k)
    {
      localc = (c)this.b.get(j);
      if (localc.a == 3) {
        if (localc.b == paramInt2) {
          paramInt1 = localc.c;
        }
      }
    }
    for (;;)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (localc.b < paramInt2) {
        i = paramInt2 - 1;
      }
      paramInt1 = i;
      if (localc.c <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (localc.b <= paramInt2) {
          if (localc.a == 1)
          {
            if (paramInt2 < localc.b + localc.c)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - localc.c;
          }
          else
          {
            paramInt1 = paramInt2;
            if (localc.a == 0) {
              paramInt1 = paramInt2 + localc.c;
            }
          }
        }
      }
    }
  }
  
  public final c a(int paramInt1, int paramInt2, int paramInt3)
  {
    c localc = (c)this.g.a();
    if (localc == null) {
      return new c(paramInt1, paramInt2, paramInt3);
    }
    localc.a = paramInt1;
    localc.b = paramInt2;
    localc.c = paramInt3;
    return localc;
  }
  
  final void a()
  {
    a(this.a);
    a(this.b);
  }
  
  public final void a(c paramc)
  {
    if (!this.e) {
      this.g.a(paramc);
    }
  }
  
  final void b()
  {
    p localp = this.f;
    ArrayList localArrayList = this.a;
    int i;
    label25:
    label58:
    int i1;
    c localc2;
    c localc3;
    int k;
    for (;;)
    {
      j = 0;
      i = localArrayList.size() - 1;
      if (i < 0) {
        break label283;
      }
      if (((c)localArrayList.get(i)).a != 3) {
        break;
      }
      if (j == 0) {
        break label1826;
      }
      j = i;
      if (j == -1) {
        break label1252;
      }
      i1 = j + 1;
      localc2 = (c)localArrayList.get(j);
      localc3 = (c)localArrayList.get(i1);
      switch (localc3.a)
      {
      default: 
        break;
      case 0: 
        i = 0;
        if (localc2.c < localc3.b) {
          i = -1;
        }
        k = i;
        if (localc2.b < localc3.b) {
          k = i + 1;
        }
        if (localc3.b <= localc2.b) {
          localc2.b += localc3.c;
        }
        if (localc3.b <= localc2.c) {
          localc2.c += localc3.c;
        }
        localc3.b = (k + localc3.b);
        localArrayList.set(j, localc3);
        localArrayList.set(i1, localc2);
      }
    }
    int j = 1;
    label283:
    label365:
    label390:
    label519:
    label594:
    label679:
    label800:
    label973:
    label1015:
    label1040:
    label1154:
    label1228:
    label1252:
    label1446:
    label1525:
    label1826:
    for (;;)
    {
      i -= 1;
      break label25;
      j = -1;
      break label58;
      c localc1 = null;
      int m = 0;
      int n;
      if (localc2.b < localc2.c)
      {
        n = 0;
        k = n;
        i = m;
        if (localc3.b == localc2.b)
        {
          k = n;
          i = m;
          if (localc3.c == localc2.c - localc2.b)
          {
            i = 1;
            k = n;
          }
        }
        if (localc2.c >= localc3.b) {
          break label519;
        }
        localc3.b -= 1;
        if (localc2.b > localc3.b) {
          break label594;
        }
        localc3.b += 1;
      }
      int i2;
      for (;;)
      {
        if (i == 0) {
          break label679;
        }
        localArrayList.set(j, localc3);
        localArrayList.remove(i1);
        localp.a.a(localc2);
        break;
        n = 1;
        k = n;
        i = m;
        if (localc3.b != localc2.c + 1) {
          break label365;
        }
        k = n;
        i = m;
        if (localc3.c != localc2.b - localc2.c) {
          break label365;
        }
        i = 1;
        k = n;
        break label365;
        if (localc2.c >= localc3.b + localc3.c) {
          break label390;
        }
        localc3.c -= 1;
        localc2.a = 1;
        localc2.c = 1;
        if (localc3.c != 0) {
          break;
        }
        localArrayList.remove(i1);
        localp.a.a(localc3);
        break;
        if (localc2.b < localc3.b + localc3.c)
        {
          m = localc3.b;
          n = localc3.c;
          i2 = localc2.b;
          localc1 = localp.a.a(1, localc2.b + 1, m + n - i2);
          localc3.c = (localc2.b - localc3.b);
        }
      }
      if (k != 0)
      {
        if (localc1 != null)
        {
          if (localc2.b > localc1.b) {
            localc2.b -= localc1.c;
          }
          if (localc2.c > localc1.b) {
            localc2.c -= localc1.c;
          }
        }
        if (localc2.b > localc3.b) {
          localc2.b -= localc3.c;
        }
        if (localc2.c > localc3.b) {
          localc2.c -= localc3.c;
        }
        localArrayList.set(j, localc3);
        if (localc2.b == localc2.c) {
          break label973;
        }
        localArrayList.set(i1, localc2);
      }
      while (localc1 != null)
      {
        localArrayList.add(j, localc1);
        break;
        if (localc1 != null)
        {
          if (localc2.b >= localc1.b) {
            localc2.b -= localc1.c;
          }
          if (localc2.c >= localc1.b) {
            localc2.c -= localc1.c;
          }
        }
        if (localc2.b >= localc3.b) {
          localc2.b -= localc3.c;
        }
        if (localc2.c < localc3.b) {
          break label800;
        }
        localc2.c -= localc3.c;
        break label800;
        localArrayList.remove(i1);
      }
      localc1 = null;
      Object localObject = null;
      if (localc2.c < localc3.b)
      {
        localc3.b -= 1;
        if (localc2.b > localc3.b) {
          break label1154;
        }
        localc3.b += 1;
        localArrayList.set(i1, localc2);
        if (localc3.c <= 0) {
          break label1228;
        }
        localArrayList.set(j, localc3);
      }
      for (;;)
      {
        if (localc1 != null) {
          localArrayList.add(j, localc1);
        }
        if (localObject == null) {
          break;
        }
        localArrayList.add(j, localObject);
        break;
        if (localc2.c >= localc3.b + localc3.c) {
          break label1015;
        }
        localc3.c -= 1;
        localc1 = localp.a.a(2, localc2.b, 1);
        break label1015;
        if (localc2.b >= localc3.b + localc3.c) {
          break label1040;
        }
        i = localc3.b + localc3.c - localc2.b;
        localObject = localp.a.a(2, localc2.b + 1, i);
        localc3.c -= i;
        break label1040;
        localArrayList.remove(j);
        localp.a.a(localc3);
      }
      int i3 = this.a.size();
      i1 = 0;
      if (i1 < i3)
      {
        localc1 = (c)this.a.get(i1);
        switch (localc1.a)
        {
        }
        for (;;)
        {
          if (this.d != null) {
            this.d.run();
          }
          i1 += 1;
          break;
          c(localc1);
          continue;
          int i4 = localc1.b;
          i = localc1.b;
          k = localc1.c + i;
          i2 = -1;
          i = localc1.b;
          n = 0;
          if (i < k)
          {
            j = 0;
            m = 0;
            if ((this.c.a(i) != null) || (b(i)))
            {
              if (i2 == 0)
              {
                b(a(1, i4, n));
                m = 1;
              }
              j = 1;
              if (m == 0) {
                break label1525;
              }
              m = i - n;
              i = k - n;
            }
            for (k = 1;; k = n)
            {
              n = k;
              k = i;
              i = m + 1;
              i2 = j;
              break;
              if (i2 == 1)
              {
                c(a(1, i4, n));
                j = 1;
              }
              i2 = 0;
              m = j;
              j = i2;
              break label1446;
              n += 1;
              m = i;
              i = k;
            }
          }
          localObject = localc1;
          if (n != localc1.c)
          {
            a(localc1);
            localObject = a(1, i4, n);
          }
          if (i2 == 0)
          {
            b((c)localObject);
          }
          else
          {
            c((c)localObject);
            continue;
            k = localc1.b;
            i4 = localc1.b;
            int i5 = localc1.c;
            i = localc1.b;
            j = 0;
            i2 = -1;
            if (i < i4 + i5)
            {
              if ((this.c.a(i) != null) || (b(i)))
              {
                m = j;
                n = k;
                if (i2 == 0)
                {
                  b(a(2, k, j));
                  m = 0;
                  n = i;
                }
                k = n;
              }
              for (j = 1;; j = 0)
              {
                i += 1;
                m += 1;
                i2 = j;
                j = m;
                break;
                m = j;
                n = k;
                if (i2 == 1)
                {
                  c(a(2, k, j));
                  m = 0;
                  n = i;
                }
                k = n;
              }
            }
            localObject = localc1;
            if (j != localc1.c)
            {
              a(localc1);
              localObject = a(2, k, j);
            }
            if (i2 == 0)
            {
              b((c)localObject);
            }
            else
            {
              c((c)localObject);
              continue;
              c(localc1);
            }
          }
        }
      }
      this.a.clear();
      return;
    }
  }
  
  final void c()
  {
    int j = this.b.size();
    int i = 0;
    while (i < j)
    {
      this.c.b((c)this.b.get(i));
      i += 1;
    }
    a(this.b);
  }
  
  final boolean d()
  {
    return this.a.size() > 0;
  }
  
  final void e()
  {
    c();
    int j = this.a.size();
    int i = 0;
    if (i < j)
    {
      c localc = (c)this.a.get(i);
      switch (localc.a)
      {
      }
      for (;;)
      {
        if (this.d != null) {
          this.d.run();
        }
        i += 1;
        break;
        this.c.b(localc);
        this.c.d(localc.b, localc.c);
        continue;
        this.c.b(localc);
        this.c.a(localc.b, localc.c);
        continue;
        this.c.b(localc);
        this.c.c(localc.b, localc.c);
        continue;
        this.c.b(localc);
        this.c.e(localc.b, localc.c);
      }
    }
    a(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */