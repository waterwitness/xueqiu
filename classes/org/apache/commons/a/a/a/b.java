package org.apache.commons.a.a.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
  extends org.apache.commons.a.a.b
{
  protected final d b;
  private final byte[] c = new byte[' '];
  private final byte[] d = new byte['Ā'];
  private boolean e;
  private long f;
  private long g;
  private byte[] h;
  private a i;
  private final org.apache.commons.a.a.b.b j;
  
  public b(InputStream paramInputStream)
  {
    this(paramInputStream, (byte)0);
  }
  
  private b(InputStream paramInputStream, byte paramByte)
  {
    this(paramInputStream, '\000');
  }
  
  private b(InputStream paramInputStream, char paramChar)
  {
    this.b = new d(paramInputStream);
    this.h = null;
    this.e = false;
    this.j = org.apache.commons.a.a.b.c.a();
  }
  
  private static Map<String, String> a(InputStream paramInputStream)
  {
    HashMap localHashMap = new HashMap();
    label55:
    label214:
    label219:
    for (;;)
    {
      int n = 0;
      int m = 0;
      int i1 = paramInputStream.read();
      int k = i1;
      Object localObject;
      if (i1 != -1)
      {
        n += 1;
        if (i1 == 32)
        {
          localObject = new ByteArrayOutputStream();
          i1 = n;
          n = paramInputStream.read();
          k = n;
          if (n == -1) {
            break label214;
          }
          i1 += 1;
          if (n == 61)
          {
            localObject = ((ByteArrayOutputStream)localObject).toString("UTF-8");
            byte[] arrayOfByte = new byte[m - i1];
            k = paramInputStream.read(arrayOfByte);
            if (k != m - i1) {
              throw new IOException("Failed to read Paxheader. Expected " + (m - i1) + " bytes, read " + k);
            }
            localHashMap.put(localObject, new String(arrayOfByte, 0, m - i1 - 1, "UTF-8"));
          }
        }
      }
      for (;;)
      {
        if (n != -1) {
          break label219;
        }
        return localHashMap;
        ((ByteArrayOutputStream)localObject).write((byte)n);
        break label55;
        m = m * 10 + (i1 - 48);
        break;
        n = k;
      }
    }
  }
  
  private void a(Map<String, String> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject1 = (Map.Entry)paramMap.next();
      Object localObject2 = (String)((Map.Entry)localObject1).getKey();
      localObject1 = (String)((Map.Entry)localObject1).getValue();
      if ("path".equals(localObject2))
      {
        this.i.a((String)localObject1);
      }
      else if ("linkpath".equals(localObject2))
      {
        this.i.g = ((String)localObject1);
      }
      else if ("gid".equals(localObject2))
      {
        this.i.c = Integer.parseInt((String)localObject1);
      }
      else if ("gname".equals(localObject2))
      {
        this.i.i = ((String)localObject1);
      }
      else if ("uid".equals(localObject2))
      {
        this.i.b = Integer.parseInt((String)localObject1);
      }
      else if ("uname".equals(localObject2))
      {
        this.i.h = ((String)localObject1);
      }
      else if ("size".equals(localObject2))
      {
        localObject2 = this.i;
        long l = Long.parseLong((String)localObject1);
        if (l < 0L) {
          throw new IllegalArgumentException("Size is out of range: " + l);
        }
        ((a)localObject2).d = l;
      }
      else if ("mtime".equals(localObject2))
      {
        this.i.e = ((Double.parseDouble((String)localObject1) * 1000.0D) / 1000L);
      }
      else
      {
        int k;
        if ("SCHILY.devminor".equals(localObject2))
        {
          localObject2 = this.i;
          k = Integer.parseInt((String)localObject1);
          if (k < 0) {
            throw new IllegalArgumentException("Minor device number is out of range: " + k);
          }
          ((a)localObject2).k = k;
        }
        else if ("SCHILY.devmajor".equals(localObject2))
        {
          localObject2 = this.i;
          k = Integer.parseInt((String)localObject1);
          if (k < 0) {
            throw new IllegalArgumentException("Major device number is out of range: " + k);
          }
          ((a)localObject2).j = k;
        }
      }
    }
  }
  
  private byte[] b()
  {
    int k = 1;
    if (this.e) {
      return null;
    }
    byte[] arrayOfByte1 = this.b.a();
    if (arrayOfByte1 == null) {
      this.e = true;
    }
    while (this.e)
    {
      return null;
      if (!this.b.a(arrayOfByte1)) {
        continue;
      }
      this.e = true;
      d locald = this.b;
      boolean bool1 = locald.a.markSupported();
      if (bool1) {
        locald.a.mark(locald.d);
      }
      try
      {
        boolean bool2 = locald.a(locald.a());
        if (!bool2)
        {
          if ((k == 0) || (!bool1)) {
            continue;
          }
          locald.a.reset();
          continue;
        }
        return arrayOfByte2;
      }
      finally
      {
        if (bool1) {
          locald.a.reset();
        }
      }
    }
  }
  
  private void c()
  {
    if (this.i.l) {}
    byte[] arrayOfByte;
    do
    {
      arrayOfByte = b();
      if (this.e)
      {
        this.i = null;
        return;
      }
    } while (new c(arrayOfByte).a);
  }
  
  public final a a()
  {
    if (this.e) {}
    Object localObject3;
    do
    {
      return null;
      if (this.i != null)
      {
        long l2;
        for (long l1 = this.f - this.g; l1 > 0L; l1 -= l2)
        {
          l2 = skip(l1);
          if (l2 <= 0L) {
            throw new RuntimeException("failed to skip current tar entry");
          }
        }
        this.h = null;
      }
      Object localObject1 = b();
      if (this.e)
      {
        this.i = null;
        return null;
      }
      for (;;)
      {
        try
        {
          this.i = new a((byte[])localObject1, this.j);
          this.g = 0L;
          this.f = this.i.d;
          localObject1 = this.i;
          if ((((a)localObject1).f == 76) && (((a)localObject1).a.equals("././@LongLink")))
          {
            k = 1;
            if (k == 0) {
              break label294;
            }
            localObject1 = new ByteArrayOutputStream();
            k = read(this.d);
            if (k < 0) {
              break;
            }
            ((ByteArrayOutputStream)localObject1).write(this.d, 0, k);
            continue;
          }
          k = 0;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          localObject3 = new IOException("Error detected parsing the header");
          ((IOException)localObject3).initCause(localIllegalArgumentException);
          throw ((Throwable)localObject3);
        }
      }
      a();
    } while (this.i == null);
    Object localObject2 = localIllegalArgumentException.toByteArray();
    int k = localObject2.length;
    while ((k > 0) && (localObject2[(k - 1)] == 0)) {
      k -= 1;
    }
    if (k != localObject2.length)
    {
      localObject3 = new byte[k];
      System.arraycopy(localObject2, 0, localObject3, 0, k);
      localObject2 = localObject3;
    }
    for (;;)
    {
      this.i.a(this.j.a((byte[])localObject2));
      label294:
      localObject2 = this.i;
      if ((((a)localObject2).f == 120) || (((a)localObject2).f == 88))
      {
        k = 1;
        if (k != 0)
        {
          localObject2 = a(this);
          a();
          a((Map)localObject2);
        }
        if (this.i.f != 83) {
          break label381;
        }
      }
      label381:
      for (k = 1;; k = 0)
      {
        if (k != 0) {
          c();
        }
        this.f = this.i.d;
        return this.i;
        k = 0;
        break;
      }
    }
  }
  
  public final int available()
  {
    if (this.f - this.g > 2147483647L) {
      return Integer.MAX_VALUE;
    }
    return (int)(this.f - this.g);
  }
  
  public final void close()
  {
    d locald = this.b;
    if (locald.b != null)
    {
      if (locald.b == null) {
        throw new IOException("writing to an input buffer");
      }
      if (locald.g > 0)
      {
        if (locald.b == null) {
          throw new IOException("writing to an input buffer");
        }
        locald.b.write(locald.e, 0, locald.c);
        locald.b.flush();
        locald.g = 0;
        locald.f += 1;
        Arrays.fill(locald.e, (byte)0);
      }
      if ((locald.b != System.out) && (locald.b != System.err))
      {
        locald.b.close();
        locald.b = null;
      }
    }
    while (locald.a == null) {
      return;
    }
    if (locald.a != System.in) {
      locald.a.close();
    }
    locald.a = null;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.g >= this.f) {
      return -1;
    }
    int k = paramInt2;
    if (paramInt2 + this.g > this.f) {
      k = (int)(this.f - this.g);
    }
    label92:
    int m;
    if (this.h != null) {
      if (k > this.h.length)
      {
        paramInt2 = this.h.length;
        System.arraycopy(this.h, 0, paramArrayOfByte, paramInt1, paramInt2);
        if (paramInt2 < this.h.length) {
          break label176;
        }
        this.h = null;
        m = paramInt2 + 0;
        int n = k - paramInt2;
        paramInt1 += paramInt2;
        k = m;
        paramInt2 = n;
      }
    }
    for (;;)
    {
      if (paramInt2 > 0)
      {
        byte[] arrayOfByte = this.b.a();
        if (arrayOfByte == null)
        {
          throw new IOException("unexpected EOF with " + paramInt2 + " bytes unread. Occured at byte: " + this.a);
          paramInt2 = k;
          break;
          label176:
          m = this.h.length - paramInt2;
          arrayOfByte = new byte[m];
          System.arraycopy(this.h, paramInt2, arrayOfByte, 0, m);
          this.h = arrayOfByte;
          break label92;
        }
        long l = arrayOfByte.length;
        if (l != -1L) {
          this.a = (l + this.a);
        }
        m = arrayOfByte.length;
        if (m > paramInt2)
        {
          System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, paramInt2);
          this.h = new byte[m - paramInt2];
          System.arraycopy(arrayOfByte, paramInt2, this.h, 0, m - paramInt2);
          m = paramInt2;
        }
        for (;;)
        {
          k += m;
          paramInt2 -= m;
          paramInt1 += m;
          break;
          System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt1, m);
        }
      }
      this.g += k;
      return k;
      m = 0;
      paramInt2 = k;
      k = m;
    }
  }
  
  public final void reset() {}
  
  public final long skip(long paramLong)
  {
    long l1 = paramLong;
    if (l1 > 0L)
    {
      if (l1 > this.c.length) {}
      for (long l2 = this.c.length;; l2 = l1)
      {
        int k = (int)l2;
        k = read(this.c, 0, k);
        if (k == -1) {
          break label67;
        }
        l1 -= k;
        break;
      }
    }
    label67:
    return paramLong - l1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */