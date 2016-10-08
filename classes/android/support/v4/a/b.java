package android.support.v4.a;

import android.os.Build.VERSION;
import android.support.v4.e.a;
import android.support.v4.e.e;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

final class b
  extends ac
  implements Runnable
{
  static final boolean a;
  final r b;
  c c;
  c d;
  int e;
  int f;
  int g;
  int h;
  int i;
  int j;
  int k;
  boolean l;
  boolean m = true;
  String n;
  boolean o;
  int p = -1;
  int q;
  CharSequence r;
  int s;
  CharSequence t;
  ArrayList<String> u;
  ArrayList<String> v;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public b(r paramr)
  {
    this.b = paramr;
  }
  
  private int a(boolean paramBoolean)
  {
    if (this.o) {
      throw new IllegalStateException("commit already called");
    }
    if (r.a)
    {
      Log.v("FragmentManager", "Commit: " + this);
      a("  ", new PrintWriter(new android.support.v4.e.d("FragmentManager")));
    }
    this.o = true;
    if (this.l) {}
    for (this.p = this.b.a(this);; this.p = -1)
    {
      this.b.a(this, paramBoolean);
      return this.p;
    }
  }
  
  private d a(SparseArray<i> paramSparseArray1, SparseArray<i> paramSparseArray2, boolean paramBoolean)
  {
    int i5 = 0;
    d locald = new d(this);
    locald.d = new View(this.b.o.c);
    int i2 = 0;
    int i1 = 0;
    int i3 = i5;
    int i4 = i1;
    if (i2 < paramSparseArray1.size())
    {
      if (!a(paramSparseArray1.keyAt(i2), locald, paramBoolean, paramSparseArray1, paramSparseArray2)) {
        break label164;
      }
      i1 = 1;
    }
    label164:
    for (;;)
    {
      i2 += 1;
      break;
      while (i3 < paramSparseArray2.size())
      {
        i2 = paramSparseArray2.keyAt(i3);
        i1 = i4;
        if (paramSparseArray1.get(i2) == null)
        {
          i1 = i4;
          if (a(i2, locald, paramBoolean, paramSparseArray1, paramSparseArray2)) {
            i1 = 1;
          }
        }
        i3 += 1;
        i4 = i1;
      }
      paramSparseArray1 = locald;
      if (i4 == 0) {
        paramSparseArray1 = null;
      }
      return paramSparseArray1;
    }
  }
  
  private a<String, View> a(d paramd, i parami, boolean paramBoolean)
  {
    a locala2 = new a();
    a locala1 = locala2;
    if (this.u != null)
    {
      ad.a(locala2, parami.T);
      if (!paramBoolean) {
        break label74;
      }
      e.a(locala2, this.v);
    }
    label74:
    for (locala1 = locala2; paramBoolean; locala1 = a(this.u, this.v, locala2))
    {
      if (parami.ai != null) {
        parami = parami.ai;
      }
      a(paramd, locala1, false);
      return locala1;
    }
    if (parami.aj != null) {
      parami = parami.aj;
    }
    b(paramd, locala1, false);
    return locala1;
  }
  
  private static a<String, View> a(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, a<String, View> parama)
  {
    if (parama.isEmpty()) {
      return parama;
    }
    a locala = new a();
    int i2 = paramArrayList1.size();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = (View)parama.get(paramArrayList1.get(i1));
      if (localView != null) {
        locala.put(paramArrayList2.get(i1), localView);
      }
      i1 += 1;
    }
    return locala;
  }
  
  private static Object a(Object paramObject, i parami, ArrayList<View> paramArrayList, a<String, View> parama, View paramView)
  {
    Object localObject = paramObject;
    if (paramObject != null)
    {
      parami = parami.T;
      localObject = paramObject;
      if (paramObject != null)
      {
        ad.a(paramArrayList, parami);
        if (parama != null) {
          paramArrayList.removeAll(parama.values());
        }
        if (!paramArrayList.isEmpty()) {
          break label52;
        }
        localObject = null;
      }
    }
    return localObject;
    label52:
    paramArrayList.add(paramView);
    ad.b((Transition)paramObject, paramArrayList);
    return paramObject;
  }
  
  private void a(int paramInt1, i parami, String paramString, int paramInt2)
  {
    parami.C = this.b;
    if (paramString != null)
    {
      if ((parami.I != null) && (!paramString.equals(parami.I))) {
        throw new IllegalStateException("Can't change tag of fragment " + parami + ": was " + parami.I + " now " + paramString);
      }
      parami.I = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((parami.G != 0) && (parami.G != paramInt1)) {
        throw new IllegalStateException("Can't change container ID of fragment " + parami + ": was " + parami.G + " now " + paramInt1);
      }
      parami.G = paramInt1;
      parami.H = paramInt1;
    }
    paramString = new c();
    paramString.c = paramInt2;
    paramString.d = parami;
    a(paramString);
  }
  
  private void a(d paramd, int paramInt, Object paramObject)
  {
    if (this.b.g != null)
    {
      int i1 = 0;
      if (i1 < this.b.g.size())
      {
        i locali = (i)this.b.g.get(i1);
        if ((locali.T != null) && (locali.S != null) && (locali.H == paramInt))
        {
          if (!locali.J) {
            break label125;
          }
          if (!paramd.b.contains(locali.T))
          {
            ad.a(paramObject, locali.T, true);
            paramd.b.add(locali.T);
          }
        }
        for (;;)
        {
          i1 += 1;
          break;
          label125:
          ad.a(paramObject, locali.T, false);
          paramd.b.remove(locali.T);
        }
      }
    }
  }
  
  private void a(d paramd, a<String, View> parama, boolean paramBoolean)
  {
    int i1;
    int i2;
    label13:
    String str;
    Object localObject;
    if (this.v == null)
    {
      i1 = 0;
      i2 = 0;
      if (i2 >= i1) {
        return;
      }
      str = (String)this.u.get(i2);
      localObject = (View)parama.get((String)this.v.get(i2));
      if (localObject != null)
      {
        localObject = ((View)localObject).getTransitionName();
        if (!paramBoolean) {
          break label103;
        }
        a(paramd.a, str, (String)localObject);
      }
    }
    for (;;)
    {
      i2 += 1;
      break label13;
      i1 = this.v.size();
      break;
      label103:
      a(paramd.a, (String)localObject, str);
    }
  }
  
  private static void a(d paramd, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if (paramArrayList1 != null)
    {
      int i1 = 0;
      while (i1 < paramArrayList1.size())
      {
        String str1 = (String)paramArrayList1.get(i1);
        String str2 = (String)paramArrayList2.get(i1);
        a(paramd.a, str1, str2);
        i1 += 1;
      }
    }
  }
  
  private static void a(a<String, String> parama, String paramString1, String paramString2)
  {
    int i1;
    if ((paramString1 != null) && (paramString2 != null)) {
      i1 = 0;
    }
    while (i1 < parama.size())
    {
      if (paramString1.equals(parama.c(i1)))
      {
        parama.a(i1, paramString2);
        return;
      }
      i1 += 1;
    }
    parama.put(paramString1, paramString2);
  }
  
  private static void a(SparseArray<i> paramSparseArray, i parami)
  {
    if (parami != null)
    {
      int i1 = parami.H;
      if ((i1 != 0) && (!parami.J) && (parami.j()) && (parami.T != null) && (paramSparseArray.get(i1) == null)) {
        paramSparseArray.put(i1, parami);
      }
    }
  }
  
  private boolean a(final int paramInt, final d paramd, final boolean paramBoolean, final SparseArray<i> paramSparseArray1, SparseArray<i> paramSparseArray2)
  {
    final ViewGroup localViewGroup = (ViewGroup)this.b.p.a(paramInt);
    if (localViewGroup == null) {
      return false;
    }
    final Object localObject4 = (i)paramSparseArray2.get(paramInt);
    final Object localObject5 = (i)paramSparseArray1.get(paramInt);
    Object localObject2;
    label66:
    Object localObject3;
    final ArrayList localArrayList1;
    Object localObject1;
    if (localObject4 == null)
    {
      localObject2 = null;
      if ((localObject4 != null) && (localObject5 != null)) {
        break label181;
      }
      paramSparseArray1 = null;
      if (localObject5 != null) {
        break label272;
      }
      localObject3 = null;
      localArrayList1 = new ArrayList();
      if (paramSparseArray1 == null) {
        break label1036;
      }
      localObject1 = a(paramd, (i)localObject5, paramBoolean);
      if (!((a)localObject1).isEmpty()) {
        break label324;
      }
      localObject1 = null;
      paramSparseArray2 = null;
    }
    for (;;)
    {
      if ((localObject2 == null) && (paramSparseArray2 == null) && (localObject3 == null))
      {
        return false;
        if (paramBoolean) {
          if (((i)localObject4).ad == i.j) {
            paramSparseArray1 = ((i)localObject4).ac;
          }
        }
        for (;;)
        {
          localObject2 = ad.a(paramSparseArray1);
          break;
          paramSparseArray1 = ((i)localObject4).ad;
          continue;
          paramSparseArray1 = ((i)localObject4).aa;
        }
        label181:
        if (paramBoolean) {
          if (((i)localObject5).af == i.j) {
            paramSparseArray1 = ((i)localObject5).ae;
          }
        }
        for (;;)
        {
          if (paramSparseArray1 != null) {
            break label234;
          }
          paramSparseArray1 = null;
          break;
          paramSparseArray1 = ((i)localObject5).af;
          continue;
          paramSparseArray1 = ((i)localObject4).ae;
        }
        label234:
        paramSparseArray2 = (Transition)paramSparseArray1;
        if (paramSparseArray2 == null)
        {
          paramSparseArray1 = null;
          break label66;
        }
        paramSparseArray1 = new TransitionSet();
        paramSparseArray1.addTransition(paramSparseArray2);
        break label66;
        label272:
        if (paramBoolean) {
          if (((i)localObject5).ab == i.j) {
            paramSparseArray2 = ((i)localObject5).aa;
          }
        }
        for (;;)
        {
          localObject3 = ad.a(paramSparseArray2);
          break;
          paramSparseArray2 = ((i)localObject5).ab;
          continue;
          paramSparseArray2 = ((i)localObject5).ac;
        }
        label324:
        if (paramBoolean) {}
        for (paramSparseArray2 = ((i)localObject5).ai;; paramSparseArray2 = ((i)localObject4).ai)
        {
          if (paramSparseArray2 != null)
          {
            new ArrayList(((a)localObject1).keySet());
            new ArrayList(((a)localObject1).values());
          }
          localViewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
          {
            public final boolean onPreDraw()
            {
              localViewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
              if (paramSparseArray1 != null)
              {
                ad.a(paramSparseArray1, localArrayList1);
                localArrayList1.clear();
                a locala = b.a(b.this, paramd, paramBoolean, localObject4);
                ad.a(paramSparseArray1, paramd.d, locala, localArrayList1);
                b.a(b.this, locala, paramd);
                b.a(localObject4, localObject5, paramBoolean, locala);
              }
              return true;
            }
          });
          paramSparseArray2 = paramSparseArray1;
          break;
        }
      }
      ArrayList localArrayList2 = new ArrayList();
      Object localObject6 = a(localObject3, (i)localObject5, localArrayList2, (a)localObject1, paramd.d);
      if ((this.v != null) && (localObject1 != null))
      {
        paramSparseArray1 = (View)((a)localObject1).get(this.v.get(0));
        if (paramSparseArray1 != null)
        {
          if (localObject6 != null) {
            ad.a(localObject6, paramSparseArray1);
          }
          if (paramSparseArray2 != null) {
            ad.a(paramSparseArray2, paramSparseArray1);
          }
        }
      }
      af local1 = new af()
      {
        public final View a()
        {
          return localObject4.T;
        }
      };
      localObject5 = new ArrayList();
      a locala = new a();
      if (localObject4 != null) {
        if (paramBoolean) {
          if (((i)localObject4).ag == null) {
            paramBoolean = true;
          }
        }
      }
      for (;;)
      {
        localObject3 = (Transition)localObject2;
        paramSparseArray1 = (Transition)localObject6;
        Object localObject7 = (Transition)paramSparseArray2;
        if ((localObject3 != null) && (paramSparseArray1 != null)) {}
        for (;;)
        {
          if (paramBoolean)
          {
            localObject4 = new TransitionSet();
            if (localObject3 != null) {
              ((TransitionSet)localObject4).addTransition((Transition)localObject3);
            }
            if (paramSparseArray1 != null) {
              ((TransitionSet)localObject4).addTransition(paramSparseArray1);
            }
            if (localObject7 != null) {
              ((TransitionSet)localObject4).addTransition((Transition)localObject7);
            }
            paramSparseArray1 = (SparseArray<i>)localObject4;
          }
          label1021:
          for (;;)
          {
            if (paramSparseArray1 != null)
            {
              localObject3 = paramd.d;
              localObject4 = paramd.c;
              localObject7 = paramd.a;
              if ((localObject2 != null) || (paramSparseArray2 != null))
              {
                Transition localTransition = (Transition)localObject2;
                if (localTransition != null) {
                  localTransition.addTarget((View)localObject3);
                }
                if (paramSparseArray2 != null) {
                  ad.a(paramSparseArray2, (View)localObject3, (Map)localObject1, localArrayList1);
                }
                localViewGroup.getViewTreeObserver().addOnPreDrawListener(new ad.2(localViewGroup, localTransition, (View)localObject3, local1, (Map)localObject7, locala, (ArrayList)localObject5));
                if (localTransition != null) {
                  localTransition.setEpicenterCallback(new ad.3((ae)localObject4));
                }
              }
              localViewGroup.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
              {
                public final boolean onPreDraw()
                {
                  localViewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
                  b.a(b.this, paramd, paramInt, paramSparseArray1);
                  return true;
                }
              });
              ad.a(paramSparseArray1, paramd.d, true);
              a(paramd, paramInt, paramSparseArray1);
              TransitionManager.beginDelayedTransition(localViewGroup, (Transition)paramSparseArray1);
              localObject1 = paramd.d;
              paramd = paramd.b;
              localObject2 = (Transition)localObject2;
              localObject3 = (Transition)localObject6;
              paramSparseArray2 = (Transition)paramSparseArray2;
              localObject4 = (Transition)paramSparseArray1;
              if (localObject4 != null) {
                localViewGroup.getViewTreeObserver().addOnPreDrawListener(new ad.4(localViewGroup, (Transition)localObject2, (ArrayList)localObject5, (Transition)localObject3, localArrayList2, paramSparseArray2, localArrayList1, locala, paramd, (Transition)localObject4, (View)localObject1));
              }
            }
            if (paramSparseArray1 == null) {
              break label1024;
            }
            return true;
            paramBoolean = ((i)localObject4).ag.booleanValue();
            break;
            if (((i)localObject4).ah == null)
            {
              paramBoolean = true;
              break;
            }
            paramBoolean = ((i)localObject4).ah.booleanValue();
            break;
            if ((paramSparseArray1 != null) && (localObject3 != null)) {
              paramSparseArray1 = new TransitionSet().addTransition(paramSparseArray1).addTransition((Transition)localObject3).setOrdering(1);
            }
            for (;;)
            {
              if (localObject7 == null) {
                break label1021;
              }
              localObject3 = new TransitionSet();
              if (paramSparseArray1 != null) {
                ((TransitionSet)localObject3).addTransition(paramSparseArray1);
              }
              ((TransitionSet)localObject3).addTransition((Transition)localObject7);
              paramSparseArray1 = (SparseArray<i>)localObject3;
              break;
              if (paramSparseArray1 == null)
              {
                paramSparseArray1 = (SparseArray<i>)localObject3;
                if (localObject3 == null) {
                  paramSparseArray1 = null;
                }
              }
            }
          }
          label1024:
          return false;
          paramBoolean = true;
        }
        paramBoolean = true;
      }
      label1036:
      localObject1 = null;
      paramSparseArray2 = paramSparseArray1;
    }
  }
  
  private static void b(d paramd, a<String, View> parama, boolean paramBoolean)
  {
    int i2 = parama.size();
    int i1 = 0;
    if (i1 < i2)
    {
      String str1 = (String)parama.b(i1);
      String str2 = ((View)parama.c(i1)).getTransitionName();
      if (paramBoolean) {
        a(paramd.a, str1, str2);
      }
      for (;;)
      {
        i1 += 1;
        break;
        a(paramd.a, str2, str1);
      }
    }
  }
  
  private static void b(SparseArray<i> paramSparseArray, i parami)
  {
    if (parami != null)
    {
      int i1 = parami.H;
      if (i1 != 0) {
        paramSparseArray.put(i1, parami);
      }
    }
  }
  
  private void b(SparseArray<i> paramSparseArray1, SparseArray<i> paramSparseArray2)
  {
    if (!this.b.p.a()) {}
    c localc;
    do
    {
      return;
      localc = this.c;
    } while (localc == null);
    switch (localc.c)
    {
    }
    for (;;)
    {
      localc = localc.a;
      break;
      b(paramSparseArray2, localc.d);
      continue;
      Object localObject1 = localc.d;
      Object localObject2;
      if (this.b.g != null)
      {
        int i1 = 0;
        localObject2 = localObject1;
        if (i1 < this.b.g.size())
        {
          i locali = (i)this.b.g.get(i1);
          if (localObject1 != null)
          {
            localObject2 = localObject1;
            if (locali.H != ((i)localObject1).H) {}
          }
          else
          {
            if (locali != localObject1) {
              break label188;
            }
          }
          for (localObject2 = null;; localObject2 = localObject1)
          {
            i1 += 1;
            localObject1 = localObject2;
            break;
            label188:
            a(paramSparseArray1, locali);
          }
        }
      }
      else
      {
        localObject2 = localObject1;
      }
      b(paramSparseArray2, (i)localObject2);
      continue;
      a(paramSparseArray1, localc.d);
      continue;
      a(paramSparseArray1, localc.d);
      continue;
      b(paramSparseArray2, localc.d);
      continue;
      a(paramSparseArray1, localc.d);
      continue;
      b(paramSparseArray2, localc.d);
    }
  }
  
  public final ac a()
  {
    return a(2130968584, 0, 0);
  }
  
  public final ac a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.f = 2130968598;
    this.g = paramInt1;
    this.h = paramInt2;
    this.i = paramInt3;
    return this;
  }
  
  public final ac a(int paramInt, i parami)
  {
    a(paramInt, parami, null, 1);
    return this;
  }
  
  public final ac a(int paramInt, i parami, String paramString)
  {
    a(paramInt, parami, paramString, 1);
    return this;
  }
  
  public final ac a(i parami)
  {
    return b(2131623960, parami, null);
  }
  
  public final ac a(i parami, String paramString)
  {
    a(0, parami, paramString, 1);
    return this;
  }
  
  public final d a(boolean paramBoolean, d paramd, SparseArray<i> paramSparseArray1, SparseArray<i> paramSparseArray2)
  {
    if (r.a)
    {
      Log.v("FragmentManager", "popFromBackStack: " + this);
      a("  ", new PrintWriter(new android.support.v4.e.d("FragmentManager")));
    }
    d locald = paramd;
    if (a)
    {
      if (paramd != null) {
        break label212;
      }
      if (paramSparseArray1.size() == 0)
      {
        locald = paramd;
        if (paramSparseArray2.size() == 0) {}
      }
      else
      {
        locald = a(paramSparseArray1, paramSparseArray2, true);
      }
    }
    label92:
    a(-1);
    int i1;
    label105:
    int i2;
    label113:
    int i3;
    if (locald != null)
    {
      i1 = 0;
      if (locald == null) {
        break label246;
      }
      i2 = 0;
      paramd = this.d;
      if (paramd == null) {
        break label535;
      }
      if (locald == null) {
        break label255;
      }
      i3 = 0;
      label130:
      if (locald == null) {
        break label264;
      }
    }
    label212:
    label246:
    label255:
    label264:
    for (int i4 = 0;; i4 = paramd.h) {
      switch (paramd.c)
      {
      default: 
        throw new IllegalArgumentException("Unknown cmd: " + paramd.c);
        locald = paramd;
        if (paramBoolean) {
          break label92;
        }
        a(paramd, this.v, this.u);
        locald = paramd;
        break label92;
        i1 = this.k;
        break label105;
        i2 = this.j;
        break label113;
        i3 = paramd.g;
        break label130;
      }
    }
    paramSparseArray1 = paramd.d;
    paramSparseArray1.R = i4;
    this.b.a(paramSparseArray1, r.d(i2), i1);
    for (;;)
    {
      paramd = paramd.b;
      break;
      paramSparseArray1 = paramd.d;
      if (paramSparseArray1 != null)
      {
        paramSparseArray1.R = i4;
        this.b.a(paramSparseArray1, r.d(i2), i1);
      }
      if (paramd.i != null)
      {
        i4 = 0;
        while (i4 < paramd.i.size())
        {
          paramSparseArray1 = (i)paramd.i.get(i4);
          paramSparseArray1.R = i3;
          this.b.a(paramSparseArray1, false);
          i4 += 1;
        }
        paramSparseArray1 = paramd.d;
        paramSparseArray1.R = i3;
        this.b.a(paramSparseArray1, false);
        continue;
        paramSparseArray1 = paramd.d;
        paramSparseArray1.R = i3;
        this.b.c(paramSparseArray1, r.d(i2), i1);
        continue;
        paramSparseArray1 = paramd.d;
        paramSparseArray1.R = i4;
        this.b.b(paramSparseArray1, r.d(i2), i1);
        continue;
        paramSparseArray1 = paramd.d;
        paramSparseArray1.R = i3;
        this.b.e(paramSparseArray1, r.d(i2), i1);
        continue;
        paramSparseArray1 = paramd.d;
        paramSparseArray1.R = i3;
        this.b.d(paramSparseArray1, r.d(i2), i1);
      }
    }
    label535:
    if (paramBoolean)
    {
      this.b.a(this.b.n, r.d(i2), i1, true);
      locald = null;
    }
    if (this.p >= 0)
    {
      paramd = this.b;
      i1 = this.p;
    }
    try
    {
      paramd.k.set(i1, null);
      if (paramd.l == null) {
        paramd.l = new ArrayList();
      }
      if (r.a) {
        Log.v("FragmentManager", "Freeing back stack index " + i1);
      }
      paramd.l.add(Integer.valueOf(i1));
      this.p = -1;
      return locald;
    }
    finally {}
  }
  
  final void a(int paramInt)
  {
    if (!this.l) {}
    for (;;)
    {
      return;
      if (r.a) {
        Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
      }
      for (c localc = this.c; localc != null; localc = localc.a)
      {
        i locali;
        if (localc.d != null)
        {
          locali = localc.d;
          locali.B += paramInt;
          if (r.a) {
            Log.v("FragmentManager", "Bump nesting of " + localc.d + " to " + localc.d.B);
          }
        }
        if (localc.i != null)
        {
          int i1 = localc.i.size() - 1;
          while (i1 >= 0)
          {
            locali = (i)localc.i.get(i1);
            locali.B += paramInt;
            if (r.a) {
              Log.v("FragmentManager", "Bump nesting of " + locali + " to " + locali.B);
            }
            i1 -= 1;
          }
        }
      }
    }
  }
  
  final void a(c paramc)
  {
    if (this.c == null)
    {
      this.d = paramc;
      this.c = paramc;
    }
    for (;;)
    {
      paramc.e = this.f;
      paramc.f = this.g;
      paramc.g = this.h;
      paramc.h = this.i;
      this.e += 1;
      return;
      paramc.b = this.d;
      this.d.a = paramc;
      this.d = paramc;
    }
  }
  
  public final void a(SparseArray<i> paramSparseArray1, SparseArray<i> paramSparseArray2)
  {
    if (!this.b.p.a()) {}
    c localc;
    do
    {
      return;
      localc = this.c;
    } while (localc == null);
    switch (localc.c)
    {
    }
    for (;;)
    {
      localc = localc.a;
      break;
      a(paramSparseArray1, localc.d);
      continue;
      if (localc.i != null)
      {
        int i1 = localc.i.size() - 1;
        while (i1 >= 0)
        {
          b(paramSparseArray2, (i)localc.i.get(i1));
          i1 -= 1;
        }
      }
      a(paramSparseArray1, localc.d);
      continue;
      b(paramSparseArray2, localc.d);
      continue;
      b(paramSparseArray2, localc.d);
      continue;
      a(paramSparseArray1, localc.d);
      continue;
      b(paramSparseArray2, localc.d);
      continue;
      a(paramSparseArray1, localc.d);
    }
  }
  
  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    a(paramString, paramPrintWriter, true);
  }
  
  public final void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(this.n);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(this.p);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(this.o);
      if (this.j != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(this.j));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(this.k));
      }
      if ((this.f != 0) || (this.g != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.f));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.g));
      }
      if ((this.h != 0) || (this.i != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.h));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.i));
      }
      if ((this.q != 0) || (this.r != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.q));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(this.r);
      }
      if ((this.s != 0) || (this.t != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.s));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(this.t);
      }
    }
    if (this.c != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str2 = paramString + "    ";
      c localc = this.c;
      int i1 = 0;
      while (localc != null)
      {
        String str1;
        int i2;
        switch (localc.c)
        {
        default: 
          str1 = "cmd=" + localc.c;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str1);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(localc.d);
          if (paramBoolean)
          {
            if ((localc.e != 0) || (localc.f != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localc.e));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localc.f));
            }
            if ((localc.g != 0) || (localc.h != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localc.g));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localc.h));
            }
          }
          if ((localc.i == null) || (localc.i.size() <= 0)) {
            break label804;
          }
          i2 = 0;
          label638:
          if (i2 >= localc.i.size()) {
            break label804;
          }
          paramPrintWriter.print(str2);
          if (localc.i.size() == 1) {
            paramPrintWriter.print("Removed: ");
          }
          break;
        }
        for (;;)
        {
          paramPrintWriter.println(localc.i.get(i2));
          i2 += 1;
          break label638;
          str1 = "NULL";
          break;
          str1 = "ADD";
          break;
          str1 = "REPLACE";
          break;
          str1 = "REMOVE";
          break;
          str1 = "HIDE";
          break;
          str1 = "SHOW";
          break;
          str1 = "DETACH";
          break;
          str1 = "ATTACH";
          break;
          if (i2 == 0) {
            paramPrintWriter.println("Removed:");
          }
          paramPrintWriter.print(str2);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i2);
          paramPrintWriter.print(": ");
        }
        label804:
        localc = localc.a;
        i1 += 1;
      }
    }
  }
  
  public final ac b()
  {
    this.j = 4097;
    return this;
  }
  
  public final ac b(int paramInt, i parami, String paramString)
  {
    if (paramInt == 0) {
      throw new IllegalArgumentException("Must use non-zero containerViewId");
    }
    a(paramInt, parami, paramString, 2);
    return this;
  }
  
  public final ac b(i parami)
  {
    c localc = new c();
    localc.c = 3;
    localc.d = parami;
    a(localc);
    return this;
  }
  
  public final ac c()
  {
    if (this.l) {
      throw new IllegalStateException("This transaction is already being added to the back stack");
    }
    this.m = false;
    return this;
  }
  
  public final ac c(i parami)
  {
    c localc = new c();
    localc.c = 4;
    localc.d = parami;
    a(localc);
    return this;
  }
  
  public final int d()
  {
    return a(false);
  }
  
  public final ac d(i parami)
  {
    c localc = new c();
    localc.c = 5;
    localc.d = parami;
    a(localc);
    return this;
  }
  
  public final int e()
  {
    return a(true);
  }
  
  public final ac e(i parami)
  {
    c localc = new c();
    localc.c = 6;
    localc.d = parami;
    a(localc);
    return this;
  }
  
  public final ac f(i parami)
  {
    c localc = new c();
    localc.c = 7;
    localc.d = parami;
    a(localc);
    return this;
  }
  
  public final boolean f()
  {
    return this.e == 0;
  }
  
  public final void run()
  {
    if (r.a) {
      Log.v("FragmentManager", "Run: " + this);
    }
    if ((this.l) && (this.p < 0)) {
      throw new IllegalStateException("addToBackStack() called after commit()");
    }
    a(1);
    Object localObject1;
    if (a)
    {
      localObject1 = new SparseArray();
      localObject2 = new SparseArray();
      b((SparseArray)localObject1, (SparseArray)localObject2);
    }
    for (Object localObject2 = a((SparseArray)localObject1, (SparseArray)localObject2, false);; localObject2 = null)
    {
      int i1;
      label102:
      int i2;
      label109:
      c localc;
      int i3;
      if (localObject2 != null)
      {
        i1 = 0;
        if (localObject2 == null) {
          break label217;
        }
        i2 = 0;
        localc = this.c;
        if (localc == null) {
          break label685;
        }
        if (localObject2 == null) {
          break label226;
        }
        i3 = 0;
        label125:
        if (localObject2 == null) {
          break label235;
        }
      }
      label217:
      label226:
      label235:
      for (int i4 = 0;; i4 = localc.f) {
        switch (localc.c)
        {
        default: 
          throw new IllegalArgumentException("Unknown cmd: " + localc.c);
          i1 = this.k;
          break label102;
          i2 = this.j;
          break label109;
          i3 = localc.e;
          break label125;
        }
      }
      localObject1 = localc.d;
      ((i)localObject1).R = i3;
      this.b.a((i)localObject1, false);
      for (;;)
      {
        localc = localc.a;
        break;
        localObject1 = localc.d;
        int i6 = ((i)localObject1).H;
        Object localObject3;
        if (this.b.g != null)
        {
          int i5 = 0;
          localObject3 = localObject1;
          if (i5 < this.b.g.size())
          {
            i locali = (i)this.b.g.get(i5);
            if (r.a) {
              Log.v("FragmentManager", "OP_REPLACE: adding=" + localObject1 + " old=" + locali);
            }
            localObject3 = localObject1;
            if (locali.H == i6)
            {
              if (locali != localObject1) {
                break label410;
              }
              localObject3 = null;
              localc.d = null;
            }
            for (;;)
            {
              i5 += 1;
              localObject1 = localObject3;
              break;
              label410:
              if (localc.i == null) {
                localc.i = new ArrayList();
              }
              localc.i.add(locali);
              locali.R = i4;
              if (this.l)
              {
                locali.B += 1;
                if (r.a) {
                  Log.v("FragmentManager", "Bump nesting of " + locali + " to " + locali.B);
                }
              }
              this.b.a(locali, i2, i1);
              localObject3 = localObject1;
            }
          }
        }
        else
        {
          localObject3 = localObject1;
        }
        if (localObject3 != null)
        {
          ((i)localObject3).R = i3;
          this.b.a((i)localObject3, false);
          continue;
          localObject1 = localc.d;
          ((i)localObject1).R = i4;
          this.b.a((i)localObject1, i2, i1);
          continue;
          localObject1 = localc.d;
          ((i)localObject1).R = i4;
          this.b.b((i)localObject1, i2, i1);
          continue;
          localObject1 = localc.d;
          ((i)localObject1).R = i3;
          this.b.c((i)localObject1, i2, i1);
          continue;
          localObject1 = localc.d;
          ((i)localObject1).R = i4;
          this.b.d((i)localObject1, i2, i1);
          continue;
          localObject1 = localc.d;
          ((i)localObject1).R = i3;
          this.b.e((i)localObject1, i2, i1);
        }
      }
      label685:
      this.b.a(this.b.n, i2, i1, true);
      if (this.l)
      {
        localObject1 = this.b;
        if (((r)localObject1).i == null) {
          ((r)localObject1).i = new ArrayList();
        }
        ((r)localObject1).i.add(this);
        ((r)localObject1).g();
      }
      return;
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.p >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.p);
    }
    if (this.n != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.n);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */