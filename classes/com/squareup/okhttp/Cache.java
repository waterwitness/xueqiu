package com.squareup.okhttp;

import c.f;
import c.m;
import com.squareup.okhttp.internal.DiskLruCache;
import com.squareup.okhttp.internal.DiskLruCache.Editor;
import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.CacheStrategy;
import com.squareup.okhttp.internal.io.FileSystem;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class Cache
{
  private static final int ENTRY_BODY = 1;
  private static final int ENTRY_COUNT = 2;
  private static final int ENTRY_METADATA = 0;
  private static final int VERSION = 201105;
  private final DiskLruCache cache;
  private int hitCount;
  final InternalCache internalCache = new InternalCache()
  {
    public Response get(Request paramAnonymousRequest)
    {
      return Cache.this.get(paramAnonymousRequest);
    }
    
    public CacheRequest put(Response paramAnonymousResponse)
    {
      return Cache.this.put(paramAnonymousResponse);
    }
    
    public void remove(Request paramAnonymousRequest)
    {
      Cache.this.remove(paramAnonymousRequest);
    }
    
    public void trackConditionalCacheHit()
    {
      Cache.this.trackConditionalCacheHit();
    }
    
    public void trackResponse(CacheStrategy paramAnonymousCacheStrategy)
    {
      Cache.this.trackResponse(paramAnonymousCacheStrategy);
    }
    
    public void update(Response paramAnonymousResponse1, Response paramAnonymousResponse2)
    {
      Cache.this.update(paramAnonymousResponse1, paramAnonymousResponse2);
    }
  };
  private int networkCount;
  private int requestCount;
  private int writeAbortCount;
  private int writeSuccessCount;
  
  public Cache(File paramFile, long paramLong)
  {
    this.cache = DiskLruCache.create(FileSystem.SYSTEM, paramFile, 201105, 2, paramLong);
  }
  
  private void abortQuietly(DiskLruCache.Editor paramEditor)
  {
    if (paramEditor != null) {}
    try
    {
      paramEditor.abort();
      return;
    }
    catch (IOException paramEditor) {}
  }
  
  /* Error */
  private CacheRequest put(Response paramResponse)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 108	com/squareup/okhttp/Response:request	()Lcom/squareup/okhttp/Request;
    //   4: invokevirtual 114	com/squareup/okhttp/Request:method	()Ljava/lang/String;
    //   7: astore_2
    //   8: aload_1
    //   9: invokevirtual 108	com/squareup/okhttp/Response:request	()Lcom/squareup/okhttp/Request;
    //   12: invokevirtual 114	com/squareup/okhttp/Request:method	()Ljava/lang/String;
    //   15: invokestatic 120	com/squareup/okhttp/internal/http/HttpMethod:invalidatesCache	(Ljava/lang/String;)Z
    //   18: ifeq +13 -> 31
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 108	com/squareup/okhttp/Response:request	()Lcom/squareup/okhttp/Request;
    //   26: invokespecial 72	com/squareup/okhttp/Cache:remove	(Lcom/squareup/okhttp/Request;)V
    //   29: aconst_null
    //   30: areturn
    //   31: aload_2
    //   32: ldc 122
    //   34: invokevirtual 128	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   37: ifeq -8 -> 29
    //   40: aload_1
    //   41: invokestatic 134	com/squareup/okhttp/internal/http/OkHeaders:hasVaryAll	(Lcom/squareup/okhttp/Response;)Z
    //   44: ifne -15 -> 29
    //   47: new 136	com/squareup/okhttp/Cache$Entry
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 139	com/squareup/okhttp/Cache$Entry:<init>	(Lcom/squareup/okhttp/Response;)V
    //   55: astore_2
    //   56: aload_0
    //   57: getfield 50	com/squareup/okhttp/Cache:cache	Lcom/squareup/okhttp/internal/DiskLruCache;
    //   60: aload_1
    //   61: invokevirtual 108	com/squareup/okhttp/Response:request	()Lcom/squareup/okhttp/Request;
    //   64: invokestatic 143	com/squareup/okhttp/Cache:urlToKey	(Lcom/squareup/okhttp/Request;)Ljava/lang/String;
    //   67: invokevirtual 147	com/squareup/okhttp/internal/DiskLruCache:edit	(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    //   70: astore_1
    //   71: aload_1
    //   72: ifnull -43 -> 29
    //   75: aload_2
    //   76: aload_1
    //   77: invokevirtual 150	com/squareup/okhttp/Cache$Entry:writeTo	(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    //   80: new 152	com/squareup/okhttp/Cache$CacheRequestImpl
    //   83: dup
    //   84: aload_0
    //   85: aload_1
    //   86: invokespecial 155	com/squareup/okhttp/Cache$CacheRequestImpl:<init>	(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    //   89: astore_2
    //   90: aload_2
    //   91: areturn
    //   92: astore_1
    //   93: aconst_null
    //   94: astore_1
    //   95: aload_0
    //   96: aload_1
    //   97: invokespecial 157	com/squareup/okhttp/Cache:abortQuietly	(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    //   100: aconst_null
    //   101: areturn
    //   102: astore_2
    //   103: goto -8 -> 95
    //   106: astore_1
    //   107: aconst_null
    //   108: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Cache
    //   0	109	1	paramResponse	Response
    //   7	84	2	localObject	Object
    //   102	1	2	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   56	71	92	java/io/IOException
    //   75	90	102	java/io/IOException
    //   21	29	106	java/io/IOException
  }
  
  private static int readInt(f paramf)
  {
    long l;
    try
    {
      l = paramf.k();
      paramf = paramf.n();
      if ((l < 0L) || (l > 2147483647L) || (!paramf.isEmpty())) {
        throw new IOException("expected an int but was \"" + l + paramf + "\"");
      }
    }
    catch (NumberFormatException paramf)
    {
      throw new IOException(paramf.getMessage());
    }
    return (int)l;
  }
  
  private void remove(Request paramRequest)
  {
    this.cache.remove(urlToKey(paramRequest));
  }
  
  private void trackConditionalCacheHit()
  {
    try
    {
      this.hitCount += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private void trackResponse(CacheStrategy paramCacheStrategy)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 203	com/squareup/okhttp/Cache:requestCount	I
    //   7: iconst_1
    //   8: iadd
    //   9: putfield 203	com/squareup/okhttp/Cache:requestCount	I
    //   12: aload_1
    //   13: getfield 209	com/squareup/okhttp/internal/http/CacheStrategy:networkRequest	Lcom/squareup/okhttp/Request;
    //   16: ifnull +16 -> 32
    //   19: aload_0
    //   20: aload_0
    //   21: getfield 211	com/squareup/okhttp/Cache:networkCount	I
    //   24: iconst_1
    //   25: iadd
    //   26: putfield 211	com/squareup/okhttp/Cache:networkCount	I
    //   29: aload_0
    //   30: monitorexit
    //   31: return
    //   32: aload_1
    //   33: getfield 215	com/squareup/okhttp/internal/http/CacheStrategy:cacheResponse	Lcom/squareup/okhttp/Response;
    //   36: ifnull -7 -> 29
    //   39: aload_0
    //   40: aload_0
    //   41: getfield 201	com/squareup/okhttp/Cache:hitCount	I
    //   44: iconst_1
    //   45: iadd
    //   46: putfield 201	com/squareup/okhttp/Cache:hitCount	I
    //   49: goto -20 -> 29
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	Cache
    //   0	57	1	paramCacheStrategy	CacheStrategy
    // Exception table:
    //   from	to	target	type
    //   2	29	52	finally
    //   32	49	52	finally
  }
  
  private void update(Response paramResponse1, Response paramResponse2)
  {
    Cache.Entry localEntry = new Cache.Entry(paramResponse2);
    paramResponse2 = Cache.CacheResponseBody.access$500((Cache.CacheResponseBody)paramResponse1.body());
    paramResponse1 = null;
    try
    {
      paramResponse2 = paramResponse2.edit();
      if (paramResponse2 != null)
      {
        paramResponse1 = paramResponse2;
        localEntry.writeTo(paramResponse2);
        paramResponse1 = paramResponse2;
        paramResponse2.commit();
      }
      return;
    }
    catch (IOException paramResponse2)
    {
      abortQuietly(paramResponse1);
    }
  }
  
  private static String urlToKey(Request paramRequest)
  {
    return Util.md5Hex(paramRequest.urlString());
  }
  
  public final void close()
  {
    this.cache.close();
  }
  
  public final void delete()
  {
    this.cache.delete();
  }
  
  public final void evictAll()
  {
    this.cache.evictAll();
  }
  
  public final void flush()
  {
    this.cache.flush();
  }
  
  final Response get(Request paramRequest)
  {
    Object localObject = urlToKey(paramRequest);
    try
    {
      localObject = this.cache.get((String)localObject);
      if (localObject == null) {
        return null;
      }
      try
      {
        Cache.Entry localEntry = new Cache.Entry(((DiskLruCache.Snapshot)localObject).getSource(0));
        localObject = localEntry.response(paramRequest, (DiskLruCache.Snapshot)localObject);
        if (!localEntry.matches(paramRequest, (Response)localObject))
        {
          Util.closeQuietly(((Response)localObject).body());
          return null;
        }
      }
      catch (IOException paramRequest)
      {
        Util.closeQuietly((Closeable)localObject);
        return null;
      }
      return (Response)localObject;
    }
    catch (IOException paramRequest) {}
    return null;
  }
  
  public final File getDirectory()
  {
    return this.cache.getDirectory();
  }
  
  public final int getHitCount()
  {
    try
    {
      int i = this.hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final long getMaxSize()
  {
    return this.cache.getMaxSize();
  }
  
  public final int getNetworkCount()
  {
    try
    {
      int i = this.networkCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int getRequestCount()
  {
    try
    {
      int i = this.requestCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final long getSize()
  {
    return this.cache.size();
  }
  
  public final int getWriteAbortCount()
  {
    try
    {
      int i = this.writeAbortCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int getWriteSuccessCount()
  {
    try
    {
      int i = this.writeSuccessCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean isClosed()
  {
    return this.cache.isClosed();
  }
  
  public final Iterator<String> urls()
  {
    new Iterator()
    {
      boolean canRemove;
      final Iterator<DiskLruCache.Snapshot> delegate = Cache.this.cache.snapshots();
      String nextUrl;
      
      public boolean hasNext()
      {
        if (this.nextUrl != null) {
          return true;
        }
        this.canRemove = false;
        while (this.delegate.hasNext())
        {
          DiskLruCache.Snapshot localSnapshot = (DiskLruCache.Snapshot)this.delegate.next();
          try
          {
            this.nextUrl = m.a(localSnapshot.getSource(0)).n();
            localSnapshot.close();
            return true;
          }
          catch (IOException localIOException)
          {
            localIOException = localIOException;
            localSnapshot.close();
          }
          finally
          {
            localObject = finally;
            localSnapshot.close();
            throw ((Throwable)localObject);
          }
        }
        return false;
      }
      
      public String next()
      {
        if (!hasNext()) {
          throw new NoSuchElementException();
        }
        String str = this.nextUrl;
        this.nextUrl = null;
        this.canRemove = true;
        return str;
      }
      
      public void remove()
      {
        if (!this.canRemove) {
          throw new IllegalStateException("remove() before next()");
        }
        this.delegate.remove();
      }
    };
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Cache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */