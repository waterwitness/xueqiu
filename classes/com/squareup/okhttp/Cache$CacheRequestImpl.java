package com.squareup.okhttp;

import c.i;
import c.r;
import com.squareup.okhttp.internal.DiskLruCache.Editor;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.CacheRequest;
import java.io.IOException;

final class Cache$CacheRequestImpl
  implements CacheRequest
{
  private r body;
  private r cacheOut;
  private boolean done;
  private final DiskLruCache.Editor editor;
  
  public Cache$CacheRequestImpl(final Cache paramCache, final DiskLruCache.Editor paramEditor)
  {
    this.editor = paramEditor;
    this.cacheOut = paramEditor.newSink(1);
    this.body = new i(this.cacheOut)
    {
      public void close()
      {
        synchronized (Cache.CacheRequestImpl.this.this$0)
        {
          if (Cache.CacheRequestImpl.this.done) {
            return;
          }
          Cache.CacheRequestImpl.access$702(Cache.CacheRequestImpl.this, true);
          Cache.access$808(Cache.CacheRequestImpl.this.this$0);
          super.close();
          paramEditor.commit();
          return;
        }
      }
    };
  }
  
  public final void abort()
  {
    synchronized (this.this$0)
    {
      if (this.done) {
        return;
      }
      this.done = true;
      Cache.access$908(this.this$0);
      Util.closeQuietly(this.cacheOut);
      try
      {
        this.editor.abort();
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public final r body()
  {
    return this.body;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Cache$CacheRequestImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */