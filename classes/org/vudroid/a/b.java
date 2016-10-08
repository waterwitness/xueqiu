package org.vudroid.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.vudroid.a.a.c;

public final class b
  implements a
{
  private final org.vudroid.a.a.a a;
  private org.vudroid.a.a.b b;
  private final ExecutorService c = Executors.newSingleThreadExecutor();
  private final Map<Object, Future<?>> d = new ConcurrentHashMap();
  private final HashMap<Integer, SoftReference<c>> e = new HashMap();
  private ContentResolver f;
  private Queue<Integer> g = new LinkedList();
  
  public b(org.vudroid.a.a.a parama)
  {
    this.a = parama;
  }
  
  public final int a()
  {
    if (this.b == null) {
      return 0;
    }
    return this.b.a();
  }
  
  public final c a(int paramInt)
  {
    if ((!this.e.containsKey(Integer.valueOf(paramInt))) || (((SoftReference)this.e.get(Integer.valueOf(paramInt))).get() == null))
    {
      if (this.b == null) {
        return null;
      }
      this.e.put(Integer.valueOf(paramInt), new SoftReference(this.b.a(paramInt)));
      this.g.remove(Integer.valueOf(paramInt));
      this.g.offer(Integer.valueOf(paramInt));
      if (this.g.size() > 16)
      {
        Object localObject = (Integer)this.g.poll();
        localObject = (c)((SoftReference)this.e.remove(localObject)).get();
        if (localObject != null) {
          ((c)localObject).c();
        }
      }
    }
    return (c)((SoftReference)this.e.get(Integer.valueOf(paramInt))).get();
  }
  
  public final void a(ContentResolver paramContentResolver)
  {
    this.f = paramContentResolver;
  }
  
  public final void a(Uri paramUri)
  {
    org.vudroid.a.a.a locala = this.a;
    Object localObject = this.f;
    if (paramUri.getScheme().equals("file")) {}
    for (paramUri = paramUri.getPath();; paramUri = ((Cursor)localObject).getString(0))
    {
      this.b = locala.a(paramUri);
      return;
      localObject = ((ContentResolver)localObject).query(paramUri, new String[] { "_data" }, null, null, null);
      if (!((Cursor)localObject).moveToFirst()) {
        break;
      }
    }
    throw new RuntimeException("Can't retrieve path from uri: " + paramUri.toString());
  }
  
  public final int b()
  {
    if (a(0) == null) {
      return 0;
    }
    return a(0).a();
  }
  
  public final int c()
  {
    if (a(0) == null) {
      return 0;
    }
    return a(0).b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\vudroid\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */