package com.squareup.okhttp.internal;

import c.s;
import java.io.Closeable;

public final class DiskLruCache$Snapshot
  implements Closeable
{
  private final String key;
  private final long[] lengths;
  private final long sequenceNumber;
  private final s[] sources;
  
  private DiskLruCache$Snapshot(DiskLruCache paramDiskLruCache, String paramString, long paramLong, s[] paramArrayOfs, long[] paramArrayOfLong)
  {
    this.key = paramString;
    this.sequenceNumber = paramLong;
    this.sources = paramArrayOfs;
    this.lengths = paramArrayOfLong;
  }
  
  public final void close()
  {
    s[] arrayOfs = this.sources;
    int j = arrayOfs.length;
    int i = 0;
    while (i < j)
    {
      Util.closeQuietly(arrayOfs[i]);
      i += 1;
    }
  }
  
  public final DiskLruCache.Editor edit()
  {
    return DiskLruCache.access$2200(this.this$0, this.key, this.sequenceNumber);
  }
  
  public final long getLength(int paramInt)
  {
    return this.lengths[paramInt];
  }
  
  public final s getSource(int paramInt)
  {
    return this.sources[paramInt];
  }
  
  public final String key()
  {
    return this.key;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\DiskLruCache$Snapshot.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */