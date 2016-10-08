package com.squareup.okhttp.internal;

import c.r;
import c.s;
import com.squareup.okhttp.internal.io.FileSystem;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public final class DiskLruCache$Editor
{
  private boolean committed;
  private final DiskLruCache.Entry entry;
  private boolean hasErrors;
  private final boolean[] written;
  
  private DiskLruCache$Editor(DiskLruCache paramDiskLruCache, DiskLruCache.Entry paramEntry)
  {
    this.entry = paramEntry;
    if (DiskLruCache.Entry.access$800(paramEntry)) {}
    for (paramDiskLruCache = null;; paramDiskLruCache = new boolean[DiskLruCache.access$2300(paramDiskLruCache)])
    {
      this.written = paramDiskLruCache;
      return;
    }
  }
  
  public final void abort()
  {
    synchronized (this.this$0)
    {
      DiskLruCache.access$2600(this.this$0, this, false);
      return;
    }
  }
  
  public final void abortUnlessCommitted()
  {
    synchronized (this.this$0)
    {
      boolean bool = this.committed;
      if (bool) {}
    }
    try
    {
      DiskLruCache.access$2600(this.this$0, this, false);
      return;
      localObject = finally;
      throw ((Throwable)localObject);
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public final void commit()
  {
    synchronized (this.this$0)
    {
      if (this.hasErrors)
      {
        DiskLruCache.access$2600(this.this$0, this, false);
        DiskLruCache.access$2700(this.this$0, this.entry);
        this.committed = true;
        return;
      }
      DiskLruCache.access$2600(this.this$0, this, true);
    }
  }
  
  public final r newSink(int paramInt)
  {
    synchronized (this.this$0)
    {
      if (DiskLruCache.Entry.access$900(this.entry) != this) {
        throw new IllegalStateException();
      }
    }
    if (!DiskLruCache.Entry.access$800(this.entry)) {
      this.written[paramInt] = true;
    }
    Object localObject2 = DiskLruCache.Entry.access$1400(this.entry)[paramInt];
    try
    {
      localObject2 = DiskLruCache.access$2400(this.this$0).sink((File)localObject2);
      localObject2 = new FaultHidingSink((r)localObject2)
      {
        protected void onException(IOException arg1)
        {
          synchronized (DiskLruCache.Editor.this.this$0)
          {
            DiskLruCache.Editor.access$1902(DiskLruCache.Editor.this, true);
            return;
          }
        }
      };
      return (r)localObject2;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      r localr = DiskLruCache.access$2500();
      return localr;
    }
  }
  
  public final s newSource(int paramInt)
  {
    synchronized (this.this$0)
    {
      if (DiskLruCache.Entry.access$900(this.entry) != this) {
        throw new IllegalStateException();
      }
    }
    if (!DiskLruCache.Entry.access$800(this.entry)) {
      return null;
    }
    try
    {
      s locals = DiskLruCache.access$2400(this.this$0).source(DiskLruCache.Entry.access$1300(this.entry)[paramInt]);
      return locals;
    }
    catch (FileNotFoundException localFileNotFoundException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\DiskLruCache$Editor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */