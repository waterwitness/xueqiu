package android.support.v7.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.dc;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
  extends v
{
  ArrayList<ArrayList<ao>> a = new ArrayList();
  ArrayList<ArrayList<i>> b = new ArrayList();
  ArrayList<ArrayList<h>> c = new ArrayList();
  ArrayList<ao> d = new ArrayList();
  ArrayList<ao> e = new ArrayList();
  ArrayList<ao> f = new ArrayList();
  ArrayList<ao> g = new ArrayList();
  private ArrayList<ao> n = new ArrayList();
  private ArrayList<ao> o = new ArrayList();
  private ArrayList<i> p = new ArrayList();
  private ArrayList<h> q = new ArrayList();
  
  private void a(h paramh)
  {
    if (paramh.a != null) {
      a(paramh, paramh.a);
    }
    if (paramh.b != null) {
      a(paramh, paramh.b);
    }
  }
  
  private static void a(List<ao> paramList)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      ViewCompat.o(((ao)paramList.get(i)).a).a();
      i -= 1;
    }
  }
  
  private void a(List<h> paramList, ao paramao)
  {
    int i = paramList.size() - 1;
    while (i >= 0)
    {
      h localh = (h)paramList.get(i);
      if ((a(localh, paramao)) && (localh.a == null) && (localh.b == null)) {
        paramList.remove(localh);
      }
      i -= 1;
    }
  }
  
  private boolean a(h paramh, ao paramao)
  {
    if (paramh.b == paramao) {
      paramh.b = null;
    }
    for (;;)
    {
      ViewCompat.c(paramao.a, 1.0F);
      ViewCompat.a(paramao.a, 0.0F);
      ViewCompat.b(paramao.a, 0.0F);
      g(paramao);
      return true;
      if (paramh.a != paramao) {
        break;
      }
      paramh.a = null;
    }
    return false;
  }
  
  public final void a()
  {
    int i;
    int j;
    label26:
    int k;
    if (!this.n.isEmpty())
    {
      i = 1;
      if (this.p.isEmpty()) {
        break label79;
      }
      j = 1;
      if (this.q.isEmpty()) {
        break label85;
      }
      k = 1;
      label39:
      if (this.o.isEmpty()) {
        break label91;
      }
    }
    label79:
    label85:
    label91:
    for (int m = 1;; m = 0)
    {
      if ((i != 0) || (j != 0) || (m != 0) || (k != 0)) {
        break label97;
      }
      return;
      i = 0;
      break;
      j = 0;
      break label26;
      k = 0;
      break label39;
    }
    label97:
    final Object localObject1 = this.n.iterator();
    final Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ao)((Iterator)localObject1).next();
      final dc localdc = ViewCompat.o(((ao)localObject2).a);
      localdc.a(this.j).a(0.0F).a(new j((ao)localObject2)
      {
        public final void a(View paramAnonymousView) {}
        
        public final void b(View paramAnonymousView)
        {
          localdc.a(null);
          ViewCompat.c(paramAnonymousView, 1.0F);
          g.this.d(localObject2);
          g.this.f.remove(localObject2);
          g.this.c();
        }
      }).b();
      this.f.add(localObject2);
    }
    this.n.clear();
    label254:
    label329:
    long l1;
    label403:
    long l2;
    if (j != 0)
    {
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.p);
      this.b.add(localObject1);
      this.p.clear();
      localObject2 = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            Object localObject = (i)localIterator.next();
            g localg = g.this;
            ao localao = ((i)localObject).a;
            int k = ((i)localObject).b;
            int i = ((i)localObject).c;
            int m = ((i)localObject).d;
            int j = ((i)localObject).e;
            localObject = localao.a;
            k = m - k;
            i = j - i;
            if (k != 0) {
              ViewCompat.o((View)localObject).b(0.0F);
            }
            if (i != 0) {
              ViewCompat.o((View)localObject).c(0.0F);
            }
            localg.e.add(localao);
            localObject = ViewCompat.o((View)localObject);
            ((dc)localObject).a(localg.k).a(new g.6(localg, localao, k, i, (dc)localObject)).b();
          }
          localObject1.clear();
          g.this.b.remove(localObject1);
        }
      };
      if (i != 0) {
        ViewCompat.a(((i)((ArrayList)localObject1).get(0)).a.a, (Runnable)localObject2, this.j);
      }
    }
    else
    {
      if (k != 0)
      {
        localObject1 = new ArrayList();
        ((ArrayList)localObject1).addAll(this.q);
        this.c.add(localObject1);
        this.q.clear();
        localObject2 = new Runnable()
        {
          public final void run()
          {
            Iterator localIterator = localObject1.iterator();
            if (localIterator.hasNext())
            {
              h localh = (h)localIterator.next();
              g localg = g.this;
              Object localObject1 = localh.a;
              if (localObject1 == null)
              {
                localObject1 = null;
                label46:
                localObject2 = localh.b;
                if (localObject2 == null) {
                  break label223;
                }
              }
              label223:
              for (Object localObject2 = ((ao)localObject2).a;; localObject2 = null)
              {
                if (localObject1 != null)
                {
                  localg.g.add(localh.a);
                  localObject1 = ViewCompat.o((View)localObject1).a(localg.l);
                  ((dc)localObject1).b(localh.e - localh.c);
                  ((dc)localObject1).c(localh.f - localh.d);
                  ((dc)localObject1).a(0.0F).a(new g.7(localg, localh, (dc)localObject1)).b();
                }
                if (localObject2 == null) {
                  break;
                }
                localg.g.add(localh.b);
                localObject1 = ViewCompat.o((View)localObject2);
                ((dc)localObject1).b(0.0F).c(0.0F).a(localg.l).a(1.0F).a(new g.8(localg, localh, (dc)localObject1, (View)localObject2)).b();
                break;
                localObject1 = ((ao)localObject1).a;
                break label46;
              }
            }
            localObject1.clear();
            g.this.c.remove(localObject1);
          }
        };
        if (i == 0) {
          break label464;
        }
        ViewCompat.a(((h)((ArrayList)localObject1).get(0)).a.a, (Runnable)localObject2, this.j);
      }
      if (m == 0) {
        break label471;
      }
      localObject1 = new ArrayList();
      ((ArrayList)localObject1).addAll(this.o);
      this.a.add(localObject1);
      this.o.clear();
      localObject2 = new Runnable()
      {
        public final void run()
        {
          Iterator localIterator = localObject1.iterator();
          while (localIterator.hasNext())
          {
            ao localao = (ao)localIterator.next();
            g localg = g.this;
            Object localObject = localao.a;
            localg.d.add(localao);
            localObject = ViewCompat.o((View)localObject);
            ((dc)localObject).a(1.0F).a(localg.i).a(new g.5(localg, localao, (dc)localObject)).b();
          }
          localObject1.clear();
          localObject1.remove(localObject1);
        }
      };
      if ((i == 0) && (j == 0) && (k == 0)) {
        break label491;
      }
      if (i == 0) {
        break label473;
      }
      l1 = this.j;
      if (j == 0) {
        break label479;
      }
      l2 = this.k;
      label414:
      if (k == 0) {
        break label485;
      }
    }
    label464:
    label471:
    label473:
    label479:
    label485:
    for (long l3 = this.l;; l3 = 0L)
    {
      l2 = Math.max(l2, l3);
      ViewCompat.a(((ao)((ArrayList)localObject1).get(0)).a, (Runnable)localObject2, l1 + l2);
      return;
      ((Runnable)localObject2).run();
      break label254;
      ((Runnable)localObject2).run();
      break label329;
      break;
      l1 = 0L;
      break label403;
      l2 = 0L;
      break label414;
    }
    label491:
    ((Runnable)localObject2).run();
  }
  
  public final boolean a(ao paramao)
  {
    c(paramao);
    this.n.add(paramao);
    return true;
  }
  
  public final boolean a(ao paramao, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = paramao.a;
    paramInt1 = (int)(paramInt1 + ViewCompat.k(paramao.a));
    paramInt2 = (int)(paramInt2 + ViewCompat.l(paramao.a));
    c(paramao);
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    if ((i == 0) && (j == 0))
    {
      e(paramao);
      return false;
    }
    if (i != 0) {
      ViewCompat.a(localView, -i);
    }
    if (j != 0) {
      ViewCompat.b(localView, -j);
    }
    this.p.add(new i(paramao, paramInt1, paramInt2, paramInt3, paramInt4, (byte)0));
    return true;
  }
  
  public final boolean a(ao paramao1, ao paramao2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = ViewCompat.k(paramao1.a);
    float f2 = ViewCompat.l(paramao1.a);
    float f3 = ViewCompat.f(paramao1.a);
    c(paramao1);
    int i = (int)(paramInt3 - paramInt1 - f1);
    int j = (int)(paramInt4 - paramInt2 - f2);
    ViewCompat.a(paramao1.a, f1);
    ViewCompat.b(paramao1.a, f2);
    ViewCompat.c(paramao1.a, f3);
    if ((paramao2 != null) && (paramao2.a != null))
    {
      c(paramao2);
      ViewCompat.a(paramao2.a, -i);
      ViewCompat.b(paramao2.a, -j);
      ViewCompat.c(paramao2.a, 0.0F);
    }
    this.q.add(new h(paramao1, paramao2, paramInt1, paramInt2, paramInt3, paramInt4, (byte)0));
    return true;
  }
  
  public final boolean b()
  {
    return (!this.o.isEmpty()) || (!this.q.isEmpty()) || (!this.p.isEmpty()) || (!this.n.isEmpty()) || (!this.e.isEmpty()) || (!this.f.isEmpty()) || (!this.d.isEmpty()) || (!this.g.isEmpty()) || (!this.b.isEmpty()) || (!this.a.isEmpty()) || (!this.c.isEmpty());
  }
  
  public final boolean b(ao paramao)
  {
    c(paramao);
    ViewCompat.c(paramao.a, 0.0F);
    this.o.add(paramao);
    return true;
  }
  
  final void c()
  {
    if (!b()) {
      e();
    }
  }
  
  public final void c(ao paramao)
  {
    View localView = paramao.a;
    ViewCompat.o(localView).a();
    int i = this.p.size() - 1;
    while (i >= 0)
    {
      if (((i)this.p.get(i)).a == paramao)
      {
        ViewCompat.b(localView, 0.0F);
        ViewCompat.a(localView, 0.0F);
        e(paramao);
        this.p.remove(i);
      }
      i -= 1;
    }
    a(this.q, paramao);
    if (this.n.remove(paramao))
    {
      ViewCompat.c(localView, 1.0F);
      d(paramao);
    }
    if (this.o.remove(paramao))
    {
      ViewCompat.c(localView, 1.0F);
      f(paramao);
    }
    i = this.c.size() - 1;
    ArrayList localArrayList;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.c.get(i);
      a(localArrayList, paramao);
      if (localArrayList.isEmpty()) {
        this.c.remove(i);
      }
      i -= 1;
    }
    i = this.b.size() - 1;
    if (i >= 0)
    {
      localArrayList = (ArrayList)this.b.get(i);
      int j = localArrayList.size() - 1;
      for (;;)
      {
        if (j >= 0)
        {
          if (((i)localArrayList.get(j)).a != paramao) {
            break label299;
          }
          ViewCompat.b(localView, 0.0F);
          ViewCompat.a(localView, 0.0F);
          e(paramao);
          localArrayList.remove(j);
          if (localArrayList.isEmpty()) {
            this.b.remove(i);
          }
        }
        i -= 1;
        break;
        label299:
        j -= 1;
      }
    }
    i = this.a.size() - 1;
    while (i >= 0)
    {
      localArrayList = (ArrayList)this.a.get(i);
      if (localArrayList.remove(paramao))
      {
        ViewCompat.c(localView, 1.0F);
        f(paramao);
        if (localArrayList.isEmpty()) {
          this.a.remove(i);
        }
      }
      i -= 1;
    }
    this.f.remove(paramao);
    this.d.remove(paramao);
    this.g.remove(paramao);
    this.e.remove(paramao);
    c();
  }
  
  public final void d()
  {
    int i = this.p.size() - 1;
    Object localObject1;
    Object localObject2;
    while (i >= 0)
    {
      localObject1 = (i)this.p.get(i);
      localObject2 = ((i)localObject1).a.a;
      ViewCompat.b((View)localObject2, 0.0F);
      ViewCompat.a((View)localObject2, 0.0F);
      e(((i)localObject1).a);
      this.p.remove(i);
      i -= 1;
    }
    i = this.n.size() - 1;
    while (i >= 0)
    {
      d((ao)this.n.get(i));
      this.n.remove(i);
      i -= 1;
    }
    i = this.o.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ao)this.o.get(i);
      ViewCompat.c(((ao)localObject1).a, 1.0F);
      f((ao)localObject1);
      this.o.remove(i);
      i -= 1;
    }
    i = this.q.size() - 1;
    while (i >= 0)
    {
      a((h)this.q.get(i));
      i -= 1;
    }
    this.q.clear();
    if (!b()) {
      return;
    }
    i = this.b.size() - 1;
    int j;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.b.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (i)((ArrayList)localObject1).get(j);
        View localView = ((i)localObject2).a.a;
        ViewCompat.b(localView, 0.0F);
        ViewCompat.a(localView, 0.0F);
        e(((i)localObject2).a);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          this.b.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = this.a.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.a.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        localObject2 = (ao)((ArrayList)localObject1).get(j);
        ViewCompat.c(((ao)localObject2).a, 1.0F);
        f((ao)localObject2);
        ((ArrayList)localObject1).remove(j);
        if (((ArrayList)localObject1).isEmpty()) {
          this.a.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    i = this.c.size() - 1;
    while (i >= 0)
    {
      localObject1 = (ArrayList)this.c.get(i);
      j = ((ArrayList)localObject1).size() - 1;
      while (j >= 0)
      {
        a((h)((ArrayList)localObject1).get(j));
        if (((ArrayList)localObject1).isEmpty()) {
          this.c.remove(localObject1);
        }
        j -= 1;
      }
      i -= 1;
    }
    a(this.f);
    a(this.e);
    a(this.d);
    a(this.g);
    e();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */