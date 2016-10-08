package com.sleepycat.b;

import com.sleepycat.b.p.ai;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public final class ae
  implements Serializable
{
  public ai a = new ai("Node Compression", "Removal and compression of internal btree nodes.");
  public ai b = new ai("Cache", "Current size, allocations, and eviction activity.");
  public ai c = new ai("Checkpoints", "Frequency and extent of checkpointing activity.");
  public ai d = new ai("Cleaning", "Frequency and extent of log file cleaning activity.");
  public ai e = new ai("I/O", "Log file opens, fsyncs, reads, writes, cache misses.");
  public ai f = new ai("Locks", "Locks held by data operations, latching contention on lock table.");
  public ai g = new ai("Environment", "General environment wide statistics.");
  public ai h = new ai("Op", "Thoughput statistics for JE calls.");
  
  public final Map<String, ai> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(this.b.a, this.b);
    localHashMap.put(this.c.a, this.c);
    localHashMap.put(this.d.a, this.d);
    localHashMap.put(this.e.a, this.e);
    localHashMap.put(this.f.a, this.f);
    localHashMap.put(this.g.a, this.g);
    localHashMap.put(this.a.a, this.a);
    localHashMap.put(this.h.a, this.h);
    return localHashMap;
  }
  
  public final void a(ai paramai)
  {
    if (paramai.a.equals("Node Compression"))
    {
      this.a = paramai;
      return;
    }
    if (paramai.a.equals("Cache"))
    {
      this.b = paramai;
      return;
    }
    if (paramai.a.equals("Checkpoints"))
    {
      this.c = paramai;
      return;
    }
    if (paramai.a.equals("Cleaning"))
    {
      this.d = paramai;
      return;
    }
    if (paramai.a.equals("I/O"))
    {
      this.e = paramai;
      return;
    }
    if (paramai.a.equals("Locks"))
    {
      this.f = paramai;
      return;
    }
    if (paramai.a.equals("Environment"))
    {
      this.g = paramai;
      return;
    }
    if (paramai.a.equals("Op"))
    {
      this.h = paramai;
      return;
    }
    throw aa.c("Invalid stat group name in setStatGroup " + paramai.a);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.e.toString());
    localStringBuilder.append(this.b.toString());
    localStringBuilder.append(this.d.toString());
    localStringBuilder.append(this.a.toString());
    localStringBuilder.append(this.c.toString());
    localStringBuilder.append(this.g.toString());
    localStringBuilder.append(this.f.toString());
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */