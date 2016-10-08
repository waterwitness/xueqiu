package com.sleepycat.b.i.f;

import com.sleepycat.b.aa;
import com.sleepycat.b.br;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.av;
import com.sleepycat.b.h.m;
import com.sleepycat.b.l.y;
import com.sleepycat.b.n;
import com.sleepycat.b.n.af;
import com.sleepycat.b.n.aj;
import com.sleepycat.b.n.q;
import com.sleepycat.b.n.z;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import com.sleepycat.b.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class e
  extends z
{
  private final long a = System.currentTimeMillis();
  public long b = 0L;
  public au c = au.a;
  public boolean d = false;
  private int f;
  private Map<Long, e> g;
  private final Logger h;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  public e(com.sleepycat.b.c.ad paramad, br parambr, long paramLong, Map<Long, e> paramMap, Logger paramLogger)
  {
    this(paramad, parambr, paramLong, paramLogger);
    a(paramMap);
  }
  
  public e(com.sleepycat.b.c.ad paramad, br parambr, long paramLong, Logger paramLogger)
  {
    super(paramad, parambr, null, paramLong);
    this.t = ((byte)(this.t | 0x8));
    this.h = paramLogger;
  }
  
  private void a(long paramLong, List<Long> paramList)
  {
    com.sleepycat.b.l.al localal = new com.sleepycat.b.l.al();
    Long localLong1 = Long.valueOf(this.z);
    com.sleepycat.b.n.ad localad = new com.sleepycat.b.n.ad(localLong1.longValue(), this.k, paramLong, this.w, this.i);
    for (;;)
    {
      Long localLong2 = localLong1;
      Long localLong3 = localLong1;
      try
      {
        if (localLong1.longValue() != -1L)
        {
          localLong2 = localLong1;
          localLong3 = localLong1;
          if (j.b(localLong1.longValue(), paramLong) > 0)
          {
            localLong2 = localLong1;
            localLong3 = localLong1;
            com.sleepycat.b.n.al localal1 = com.sleepycat.b.n.al.a(this.i, localLong1.longValue(), this.w);
            localLong2 = localLong1;
            localLong3 = localLong1;
            af localaf = localad.a();
            localLong2 = localLong1;
            localLong3 = localLong1;
            long l = localLong1.longValue();
            localLong2 = localLong1;
            localLong3 = localLong1;
            if (this.h != null)
            {
              localLong2 = localLong1;
              localLong3 = localLong1;
              if (this.h.isLoggable(Level.FINEST))
              {
                localLong2 = localLong1;
                localLong3 = localLong1;
                com.sleepycat.b.p.w.e(this.h, this.i, "undoLsn=" + j.h(l) + " undo=" + localal1 + " revertInfo=" + localaf);
              }
            }
            localLong2 = localLong1;
            localLong3 = localLong1;
            m.a(this.h, Level.FINER, localal1, localaf, localal, localLong1.longValue());
            localLong2 = localLong1;
            localLong3 = localLong1;
            l = localLong1.longValue();
            localLong2 = localLong1;
            localLong3 = localLong1;
            if (!localal1.b.i())
            {
              localLong2 = localLong1;
              localLong3 = localLong1;
              this.i.w.a(l, null, localal1.b.g & 0x7FFFFFFF, localal1.c, false);
            }
            localLong2 = localLong1;
            localLong3 = localLong1;
            paramList.add(localLong1);
            localLong2 = localLong1;
            localLong3 = localLong1;
            localLong1 = Long.valueOf(localal1.a.m().z);
            localLong2 = localLong1;
            localLong3 = localLong1;
            this.z = localLong1.longValue();
          }
        }
      }
      catch (n paramList)
      {
        com.sleepycat.b.p.w.a(this.i, "Txn", "undo", "For LSN=" + j.h(localLong2.longValue()), paramList);
        throw paramList;
        localLong2 = localLong1;
        localLong3 = localLong1;
        this.c = localad.b;
        if (this.z == -1L) {
          c(false);
        }
        a(localad.a);
        return;
      }
      catch (RuntimeException paramList)
      {
        throw aa.a("Txn undo for LSN=" + j.h(localLong3.longValue()), paramList);
      }
    }
  }
  
  public final long a(av paramav, int paramInt)
  {
    this.K = paramav;
    this.f = paramInt;
    long l = super.o();
    this.b = System.currentTimeMillis();
    return l;
  }
  
  protected final long a(aj paramaj, long paramLong)
  {
    return paramLong;
  }
  
  public final long a(u paramu)
  {
    throw aa.c("Replay Txn abort semantics require use of internal commit api");
  }
  
  public final long a(com.sleepycat.b.w paramw, av paramav, int paramInt)
  {
    if (this.h.isLoggable(Level.FINE)) {
      com.sleepycat.b.p.w.d(this.h, this.i, "commit called for " + this.k);
    }
    this.K = paramav;
    if (paramw == com.sleepycat.b.w.a) {
      paramw = u.a;
    }
    for (;;)
    {
      this.f = paramInt;
      long l = super.a(paramw);
      this.b = System.currentTimeMillis();
      return l;
      if (paramw == com.sleepycat.b.w.b)
      {
        paramw = u.b;
      }
      else
      {
        if (paramw != com.sleepycat.b.w.c) {
          break;
        }
        paramw = u.c;
      }
    }
    throw aa.c("Unknown sync policy: " + paramw);
  }
  
  public final void a(Map<Long, e> paramMap)
  {
    if ((!e) && (this.g != null)) {
      throw new AssertionError();
    }
    this.g = paramMap;
    this.g.put(Long.valueOf(this.k), this);
  }
  
  public final Collection<Long> a_(long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    com.sleepycat.b.p.w.e(this.h, this.i, "Partial Rollback of " + this);
    try
    {
      b_(true);
      if (this.z == -1L) {
        return localArrayList;
      }
      if (j.b(this.z, paramLong) <= 0) {
        return localArrayList;
      }
    }
    finally {}
    this.t = ((byte)(this.t | 0x4));
    a(paramLong, localList);
    if (this.z == -1L) {}
    try
    {
      d(false);
      b(false);
      if (this.x != null) {
        throw aa.c("Replay Txn " + this.k + " has a openedDatabaseHandles");
      }
    }
    finally
    {
      b(false);
    }
    return localCollection;
  }
  
  public final void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
    if (this.g != null)
    {
      z localz = (z)this.g.remove(Long.valueOf(this.k));
      if ((!e) && (localz == null)) {
        throw new AssertionError("txn was not in map " + this + " " + com.sleepycat.b.p.w.a());
      }
    }
  }
  
  protected final boolean f_()
  {
    return true;
  }
  
  public final long g_()
  {
    if (this.b > 0L) {}
    for (long l = this.b;; l = System.currentTimeMillis()) {
      return l - this.a;
    }
  }
  
  public final boolean h_()
  {
    return true;
  }
  
  protected final int i()
  {
    return this.f;
  }
  
  protected final long l()
  {
    return this.i.C();
  }
  
  public final long m()
  {
    throw aa.c("Replay Txn abort semantics require use of internal commit api");
  }
  
  public final void n()
  {
    throw aa.c("Replay Txn abort semantics require use of internal abort api");
  }
  
  public final long o()
  {
    throw aa.c("Replay Txn abort semantics require use of internal abort api");
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("<ReplayTxn id=\"");
    localStringBuilder.append(this.k);
    localStringBuilder.append("\">");
    localStringBuilder.append(super.toString());
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\f\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */