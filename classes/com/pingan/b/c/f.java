package com.pingan.b.c;

import com.google.gson.Gson;
import com.pingan.b.a.c;
import com.pingan.b.a.m;
import com.pingan.b.d.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONObject;

final class f
  implements Runnable
{
  final String a;
  final a b;
  final String c;
  List<com.pingan.b.b.a> d;
  private final int e;
  private final h f;
  private final l g;
  private final com.pingan.b.a.f h;
  private final byte[] i;
  private final String[] j;
  private final Header[] k;
  private final long l;
  private RandomAccessFile m;
  private File n;
  private j o;
  private boolean p = false;
  private com.pingan.b.d.b q;
  
  f(com.pingan.b.a.f paramf, a parama, File paramFile, String paramString1, String paramString2, j paramj, final h paramh, l paraml)
  {
    this.h = paramf;
    this.b = parama;
    this.n = paramFile;
    this.e = ((int)paramFile.length());
    this.c = paramString1;
    this.a = paramString2;
    this.k = new Header[1];
    this.k[0] = new BasicHeader("Authorization", "UpToken " + paramj.a);
    this.m = null;
    this.f = new h()
    {
      public final void a(String paramAnonymousString, m paramAnonymousm, JSONObject paramAnonymousJSONObject)
      {
        if (f.a(f.this) != null) {}
        try
        {
          f.a(f.this).close();
          paramh.a(paramAnonymousString, paramAnonymousm, paramAnonymousJSONObject);
          return;
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            localIOException.printStackTrace();
          }
        }
      }
    };
    if (paraml != null) {}
    for (;;)
    {
      this.g = paraml;
      this.i = new byte[parama.i];
      this.j = new String[(int)((this.e + 4194304 - 1) / 4194304)];
      this.l = paramFile.lastModified();
      this.o = paramj;
      this.q = new com.pingan.b.d.b();
      return;
      paraml = new l(null, null);
    }
  }
  
  private int a(int paramInt)
  {
    long l1 = (paramInt - 1) * 4194304;
    return (int)Math.min(4194304L, this.n.length() - l1);
  }
  
  private static String a(File paramFile)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    byte[] arrayOfByte1 = new byte[4194304];
    for (;;)
    {
      int i1 = localFileInputStream.read(arrayOfByte1);
      if (i1 == -1) {
        break;
      }
      if (i1 != 4194304)
      {
        i1 = (int)(paramFile.length() % 4194304L);
        byte[] arrayOfByte2 = new byte[i1];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i1);
        localStringBuilder.append(com.pingan.b.d.b.a(arrayOfByte2));
      }
      else
      {
        localStringBuilder.append(com.pingan.b.d.b.a(arrayOfByte1));
      }
    }
    return com.pingan.b.d.b.a(localStringBuilder.toString().getBytes());
  }
  
  private static String a(Map<String, String> paramMap, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString).append("?");
    paramString = paramMap.keySet().iterator();
    while (paramString.hasNext())
    {
      String str = (String)paramString.next();
      localStringBuffer.append(str).append("=").append((String)paramMap.get(str)).append("&");
    }
    return localStringBuffer.substring(0, localStringBuffer.length() - 1);
  }
  
  private void a(final int paramInt1, final int paramInt2, final String paramString)
  {
    for (;;)
    {
      if (paramInt1 > this.d.size())
      {
        localObject1 = new com.pingan.b.a.e()
        {
          public final void a(m paramAnonymousm, JSONObject paramAnonymousJSONObject)
          {
            if (paramAnonymousm.b())
            {
              f.b(f.this);
              f.d(f.this).b.a(f.c(f.this), 1.0D);
              f.e(f.this).a(f.c(f.this), paramAnonymousm, paramAnonymousJSONObject);
              return;
            }
            if (f.f(f.this))
            {
              paramAnonymousm = m.a();
              f.e(f.this).a(f.c(f.this), paramAnonymousm, null);
              return;
            }
            if ((paramAnonymousm.d()) && (paramInt2 < f.g(f.this).m))
            {
              f.a(f.this, paramInt1, paramInt2 + 1, paramString);
              return;
            }
            f.e(f.this).a(f.c(f.this), paramAnonymousm, paramAnonymousJSONObject);
          }
        };
        localObject2 = this.g.c;
        paramString = String.format(Locale.ENGLISH, "http://%s/mkfile/%s/%s", new Object[] { paramString, this.c, this.a });
        try
        {
          localObject3 = new HashMap();
          localObject4 = a(this.n);
          ((Map)localObject3).put("token", this.o.a);
          ((Map)localObject3).put("fileSize", String.valueOf(this.n.length()));
          ((Map)localObject3).put("fileName", this.n.getName());
          ((Map)localObject3).put("md5", localObject4);
          paramString = a((Map)localObject3, paramString);
          localObject3 = this.h;
          boolean bool = this.p;
          ((com.pingan.b.a.f)localObject3).a(paramString, new com.pingan.b.a.h().a(null, (c)localObject2), ((com.pingan.b.a.f)localObject3).b.a(new Header[0]), null, (com.pingan.b.a.e)localObject1, bool);
          return;
        }
        catch (Exception paramString)
        {
          this.f.a(this.a, m.a(paramString), null);
          return;
        }
      }
      if (!((com.pingan.b.b.a)this.d.get(paramInt1 - 1)).b) {
        break;
      }
      paramInt1 += 1;
      paramInt2 = 0;
    }
    Object localObject1 = new com.pingan.b.a.j()
    {
      public final void a(int paramAnonymousInt1, int paramAnonymousInt2)
      {
        paramAnonymousInt2 = paramInt1;
        double d2 = (paramInt1 * f.g(f.this).i + 4194304 * (paramAnonymousInt2 - 1) + paramAnonymousInt1) / f.i(f.this);
        double d1 = d2;
        if (d2 > 0.99D) {
          d1 = 0.99D;
        }
        f.d(f.this).b.a(f.c(f.this), d1);
      }
    };
    Object localObject2 = new com.pingan.b.a.e()
    {
      public final void a(m paramAnonymousm, JSONObject paramAnonymousJSONObject)
      {
        if (!paramAnonymousm.b()) {
          if (f.f(f.this))
          {
            paramAnonymousm = m.a();
            f.e(f.this).a(f.c(f.this), paramAnonymousm, null);
          }
        }
        int i;
        int j;
        do
        {
          return;
          if ((paramInt2 >= f.g(f.this).m) || (!paramAnonymousm.d()))
          {
            f.e(f.this).a(f.c(f.this), paramAnonymousm, null);
            return;
          }
          f.a(f.this, paramInt1, paramInt2 + 1, paramString);
          return;
          if (paramAnonymousJSONObject == null)
          {
            f.a(f.this, paramInt1, paramInt2 + 1, paramString);
            return;
          }
          i = paramInt2 + 1;
          ((com.pingan.b.b.a)f.h(f.this).get(paramInt1 - 1)).a = i;
          j = (int)Math.ceil(f.a(f.this, paramInt1) / f.g(f.this).i);
          if (j == i) {
            ((com.pingan.b.b.a)f.h(f.this).get(paramInt1 - 1)).b = true;
          }
        } while (i > j);
        paramAnonymousm = f.this;
        paramAnonymousJSONObject = new Gson().toJson(paramAnonymousm.d);
        paramAnonymousm.b.f.a(paramString, paramAnonymousm.a, paramAnonymousJSONObject.getBytes());
        f.a(f.this, paramInt1, paramInt2, paramString);
      }
    };
    if (((com.pingan.b.b.a)this.d.get(paramInt1 - 1)).a == 0)
    {
      paramInt2 = Math.min(a(paramInt1), this.b.i);
      localObject3 = this.g.c;
      paramString = String.format(Locale.ENGLISH, "http://%s/mkblk/%s/%s/%d?token=%s", new Object[] { paramString, this.c, this.a, Integer.valueOf(paramInt1), this.o.a });
      try
      {
        this.m.seek((paramInt1 - 1) * 4194304);
        this.m.read(this.i, 0, paramInt2);
        a(paramString, this.i, paramInt2, (com.pingan.b.a.j)localObject1, (com.pingan.b.a.e)localObject2, (g)localObject3);
        return;
      }
      catch (IOException paramString)
      {
        this.f.a(this.a, m.a(paramString), null);
        return;
      }
    }
    paramInt2 = this.b.i * ((com.pingan.b.b.a)this.d.get(paramInt1 - 1)).a;
    int i1 = Math.min(a(paramInt1) - paramInt2, this.b.i);
    Object localObject4 = (com.pingan.b.b.a)this.d.get(paramInt1 - 1);
    Object localObject3 = this.g.c;
    localObject4 = d.a(new Gson().toJson(localObject4));
    paramString = String.format(Locale.ENGLISH, "http://%s/bput/%s/%s/%s/%d?token=%s", new Object[] { paramString, this.c, this.a, localObject4, Integer.valueOf(paramInt2), this.o.a });
    try
    {
      this.m.seek((paramInt1 - 1) * 4194304 + paramInt2);
      this.m.read(this.i, 0, i1);
      a(paramString, this.i, i1, (com.pingan.b.a.j)localObject1, (com.pingan.b.a.e)localObject2, (g)localObject3);
      return;
    }
    catch (IOException paramString)
    {
      this.f.a(this.a, m.a(paramString), null);
    }
  }
  
  private void a(String paramString, byte[] paramArrayOfByte, int paramInt, com.pingan.b.a.j paramj, com.pingan.b.a.e parame, g paramg)
  {
    com.pingan.b.a.f localf = this.h;
    Header[] arrayOfHeader = this.k;
    boolean bool = this.p;
    localf.a(paramString, new com.pingan.b.a.b(paramArrayOfByte, paramInt, paramj, paramg), arrayOfHeader, paramj, parame, bool);
  }
  
  public final void run()
  {
    if (this.b.f.a(this.c, this.a) == null) {}
    for (List localList = this.b.f.a(this.n, this.c, this.a);; localList = this.b.f.c(this.c, this.a))
    {
      this.d = localList;
      try
      {
        this.m = new RandomAccessFile(this.n, "r");
        a(1, 0, this.b.a);
        return;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localFileNotFoundException.printStackTrace();
        this.f.a(this.a, m.a(localFileNotFoundException), null);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\c\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */