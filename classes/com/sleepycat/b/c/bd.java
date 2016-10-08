package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.b.d;
import com.sleepycat.b.ba;
import com.sleepycat.b.g.am;
import com.sleepycat.b.h.a;
import com.sleepycat.b.h.l;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.w;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.EnumMap;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class bd
{
  public final Map<bg, ai> a = new EnumMap(bg.class);
  public l b;
  private final Map<bg, bf> c = new EnumMap(bg.class);
  private final Map<bg, be> d = new EnumMap(bg.class);
  private final Logger e;
  private final ad f;
  private long g;
  
  public bd(ad paramad)
  {
    bg[] arrayOfbg = bg.values();
    int j = arrayOfbg.length;
    int i = 0;
    while (i < j)
    {
      bg localbg = arrayOfbg[i];
      this.c.put(localbg, new bf((byte)0));
      i += 1;
    }
    this.f = paramad;
    this.e = w.a(getClass());
    this.g = System.currentTimeMillis();
  }
  
  private static String a(Long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    new Formatter(localStringBuilder).format("%tD,%tH:%tM:%tS:%tL", new Object[] { paramLong, paramLong, paramLong, paramLong, paramLong });
    return localStringBuilder.toString();
  }
  
  private void a(PrintStream paramPrintStream, bg parambg)
  {
    Iterator localIterator = this.d.entrySet().iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (bg.a((bg)localEntry.getKey()) == parambg)
      {
        be localbe = (be)localEntry.getValue();
        if (!be.a(localbe))
        {
          int j = i;
          if (i != 0)
          {
            paramPrintStream.println();
            paramPrintStream.printf("%20s   %s\n", new Object[] { " ", be.d });
            j = 0;
          }
          paramPrintStream.printf("%20s   %s\n", new Object[] { localEntry.getKey(), localbe });
          i = j;
        }
      }
    }
  }
  
  private void a(PrintStream paramPrintStream, bg parambg, bf parambf1, bf parambf2)
  {
    if (bg.b(parambg) == null) {}
    for (;;)
    {
      return;
      if (parambf1.c - parambf1.b != 0L)
      {
        paramPrintStream.println("\n");
        paramPrintStream.printf("%24s  %% of total  %s\n", new Object[] { " ", bf.a });
        paramPrintStream.printf("%20s             %3d %s\n", new Object[] { parambg, Integer.valueOf(bf.a(parambf1, parambf2)), parambf1 });
        paramPrintStream.println("                         -------------------------");
        parambg = bg.b(parambg);
        int j = parambg.length;
        int i = 0;
        while (i < j)
        {
          parambf1 = parambg[i];
          bf localbf = (bf)this.c.get(parambf1);
          if (localbf.b != 0L) {
            paramPrintStream.printf("%24s         %3d %s\n", new Object[] { parambf1, Integer.valueOf(bf.a(localbf, parambf2)), localbf });
          }
          i += 1;
        }
      }
    }
  }
  
  private String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = this.b.h;
    long l2;
    label81:
    long l3;
    label112:
    long l4;
    if (localObject != null)
    {
      localStringBuilder.append("checkpointId = ");
      localStringBuilder.append(((a)localObject).k);
      if (((a)localObject).a == null) {
        localStringBuilder.append(" ");
      }
    }
    else
    {
      l2 = this.f.u.a(d.N);
      if (this.b.d != -1L) {
        break label370;
      }
      l1 = 0L;
      l3 = j.a(l1, this.b.c, l2);
      if (this.b.e != -1L) {
        break label381;
      }
      l1 = 0L;
      l4 = j.a(l1, this.b.d, l2);
      if (this.b.a != -1L) {
        break label392;
      }
    }
    label370:
    label381:
    label392:
    for (long l1 = 0L;; l1 = this.b.a)
    {
      l1 = j.a(l1, this.b.e, l2);
      localStringBuilder.append("firstActive[" + j.h(this.b.c) + "], ckptStart[" + j.h(this.b.d) + "], ckptEnd[" + j.h(this.b.e) + "], lastUsed[" + j.h(this.b.a) + "]\n");
      localObject = new StringBuilder();
      new Formatter((Appendable)localObject).format("%24s bytes = %,d\n%24s bytes = %,d\n%24s bytes = %,d", new Object[] { "firstActive->ckptStart", Long.valueOf(l3), "ckptStart->ckptEnd", Long.valueOf(l4), "ckptEnd->end bytes", Long.valueOf(l1) });
      return localStringBuilder.toString() + "\nApproximate distances:\n" + ((StringBuilder)localObject).toString();
      localStringBuilder.append("[").append(((a)localObject).a);
      localStringBuilder.append("] ");
      break;
      l1 = this.b.d;
      break label81;
      l1 = this.b.e;
      break label112;
    }
  }
  
  private void b(PrintStream paramPrintStream, bg parambg)
  {
    this.g = System.currentTimeMillis();
    Object localObject1 = (bf)this.c.get(parambg);
    paramPrintStream.println("\n=== " + bg.c(parambg) + " Report  ===");
    paramPrintStream.println("start = " + a(Long.valueOf(((bf)localObject1).b)));
    paramPrintStream.println("end   = " + a(Long.valueOf(((bf)localObject1).c)));
    if (parambg == bg.a) {
      paramPrintStream.print(b());
    }
    Object localObject2 = this.c.entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      bg localbg = (bg)localEntry.getKey();
      if (bg.a(localbg) == null) {
        if (localbg != parambg) {
          break;
        }
      } else {
        for (;;)
        {
          a(paramPrintStream, (bg)localEntry.getKey(), (bf)localEntry.getValue(), (bf)localObject1);
          break;
          if (bg.a(localbg) != parambg) {
            break;
          }
        }
      }
    }
    a(paramPrintStream, parambg);
    localObject1 = this.a.entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (bg.a((bg)((Map.Entry)localObject2).getKey()) == parambg)
      {
        paramPrintStream.println(((Map.Entry)localObject2).getKey() + " stats:");
        paramPrintStream.println(((Map.Entry)localObject2).getValue());
      }
    }
  }
  
  private void c(PrintStream paramPrintStream, bg parambg)
  {
    this.g = System.currentTimeMillis();
    paramPrintStream.println("\n=== Interim " + parambg + " Report  ===");
    paramPrintStream.println(b());
    Object localObject1 = this.c.entrySet().iterator();
    int i = 1;
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (Map.Entry)((Iterator)localObject1).next();
      bg localbg = (bg)((Map.Entry)localObject2).getKey();
      localObject2 = (bf)((Map.Entry)localObject2).getValue();
      if (bf.c((bf)localObject2) != 0L)
      {
        int j = i;
        if (i != 0)
        {
          paramPrintStream.println("                             Elapsed(ms)");
          j = 0;
        }
        paramPrintStream.printf("%20s : %s\n", new Object[] { localbg, localObject2 });
        i = j;
      }
    }
    a(paramPrintStream, bg.a(parambg));
    parambg = this.a.entrySet().iterator();
    while (parambg.hasNext())
    {
      localObject1 = (Map.Entry)parambg.next();
      paramPrintStream.println(((Map.Entry)localObject1).getKey() + " stats:");
      paramPrintStream.println(((Map.Entry)localObject1).getValue());
    }
  }
  
  public final void a()
  {
    ba localba = this.f.I;
    if (localba == null) {}
    while (localba.a()) {
      return;
    }
    throw new aa(this.f, ac.s, "EnvironmentConfig.recoveryProgressListener: ");
  }
  
  public final void a(bg parambg)
  {
    String str = "Starting " + parambg;
    Object localObject = str;
    if (this.b != null) {
      localObject = str + " " + this.b;
    }
    w.a(this.e, this.f, Level.CONFIG, (String)localObject);
    bf.a((bf)this.c.get(parambg));
    localObject = new be();
    this.d.put(parambg, localObject);
    if (!parambg.equals(bg.a)) {
      ((be)localObject).b = this.f.w.c();
    }
  }
  
  public final void b(bg parambg)
  {
    bf localbf = (bf)this.c.get(parambg);
    bf.b(localbf);
    c(parambg).c = this.f.w.c();
    String str = "Stopping " + parambg;
    Object localObject = str;
    if (this.b != null) {
      localObject = str + " " + this.b;
    }
    w.a(this.e, this.f, Level.CONFIG, (String)localObject);
    int i = this.f.u.a(d.br);
    if ((bg.a(parambg) == null) && (localbf.c - localbf.b > i))
    {
      localObject = new ByteArrayOutputStream();
      b(new PrintStream((OutputStream)localObject), parambg);
      w.a(this.e, this.f, Level.INFO, ((ByteArrayOutputStream)localObject).toString());
    }
    while (System.currentTimeMillis() - this.g <= i) {
      return;
    }
    localObject = new ByteArrayOutputStream();
    c(new PrintStream((OutputStream)localObject), parambg);
    w.a(this.e, this.f, Level.INFO, ((ByteArrayOutputStream)localObject).toString());
  }
  
  public final be c(bg parambg)
  {
    return (be)this.d.get(parambg);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */