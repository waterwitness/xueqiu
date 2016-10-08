package com.f.a.c;

import android.content.Context;
import android.provider.Settings.System;
import com.f.a.a.a.b;
import com.f.a.a.a.f;
import com.f.a.a.a.g;
import com.f.a.a.a.h;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.Adler32;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class c
{
  private static final Object b = new Object();
  private static c c = null;
  private static final String j = ".UTSystemConfig" + File.separator + "Global";
  private Context a = null;
  private String d = null;
  private d e = null;
  private String f = "xx_utdid_key";
  private String g = "xx_utdid_domain";
  private com.f.a.b.a.d h = null;
  private com.f.a.b.a.d i = null;
  private Pattern k = Pattern.compile("[^0-9a-zA-Z=/+]+");
  
  private c(Context paramContext)
  {
    this.a = paramContext;
    this.i = new com.f.a.b.a.d(paramContext, j, "Alvin2");
    this.h = new com.f.a.b.a.d(paramContext, ".DataStorage", "ContextData");
    this.e = new d();
    this.f = String.format("K_%d", new Object[] { Integer.valueOf(h.b(this.f)) });
    this.g = String.format("D_%d", new Object[] { Integer.valueOf(h.b(this.g)) });
  }
  
  public static c a(Context paramContext)
  {
    if ((paramContext != null) && (c == null)) {}
    synchronized (b)
    {
      if (c == null) {
        c = new c(paramContext);
      }
      return c;
    }
  }
  
  private void a(String paramString)
  {
    Object localObject1;
    if (e(paramString))
    {
      String str1 = paramString;
      if (paramString.endsWith("\n")) {
        str1 = paramString.substring(0, paramString.length() - 1);
      }
      if ((str1.length() == 24) && (this.i != null))
      {
        String str2 = this.i.a("UTDID");
        localObject1 = this.i.a("EI");
        paramString = (String)localObject1;
        if (h.a((String)localObject1)) {
          paramString = g.a(this.a);
        }
        Object localObject2 = this.i.a("SI");
        localObject1 = localObject2;
        if (h.a((String)localObject2)) {
          localObject1 = g.b(this.a);
        }
        Object localObject3 = this.i.a("DID");
        localObject2 = localObject3;
        if (h.a((String)localObject3)) {
          localObject2 = paramString;
        }
        if ((str2 == null) || (!str2.equals(str1)))
        {
          localObject3 = new a();
          ((a)localObject3).a = paramString;
          ((a)localObject3).b = ((String)localObject1);
          ((a)localObject3).d = str1;
          ((a)localObject3).c = ((String)localObject2);
          ((a)localObject3).e = System.currentTimeMillis();
          this.i.a("UTDID", str1);
          this.i.a("EI", ((a)localObject3).a);
          this.i.a("SI", ((a)localObject3).b);
          this.i.a("DID", ((a)localObject3).c);
          this.i.a("timestamp", ((a)localObject3).e);
          paramString = this.i;
          str1 = String.format("%s%s%s%s%s", new Object[] { ((a)localObject3).d, ((a)localObject3).c, Long.valueOf(((a)localObject3).e), ((a)localObject3).b, ((a)localObject3).a });
          if (h.a(str1)) {
            break label371;
          }
          localObject1 = new Adler32();
          ((Adler32)localObject1).reset();
          ((Adler32)localObject1).update(str1.getBytes());
        }
      }
    }
    label371:
    for (long l = ((Adler32)localObject1).getValue();; l = 0L)
    {
      paramString.a("S", l);
      this.i.a();
      return;
    }
  }
  
  private void b(String paramString)
  {
    if ((paramString != null) && (this.h != null) && (!paramString.equals(this.h.a(this.f))))
    {
      this.h.a(this.f, paramString);
      this.h.a();
    }
  }
  
  private final byte[] b()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int m = (int)(System.currentTimeMillis() / 1000L);
    int n = new Random().nextInt();
    Object localObject1 = f.a(m);
    Object localObject2 = f.a(n);
    localByteArrayOutputStream.write((byte[])localObject1, 0, 4);
    localByteArrayOutputStream.write((byte[])localObject2, 0, 4);
    localByteArrayOutputStream.write(3);
    localByteArrayOutputStream.write(0);
    try
    {
      localObject1 = g.a(this.a);
      localByteArrayOutputStream.write(f.a(h.b((String)localObject1)), 0, 4);
      localObject1 = localByteArrayOutputStream.toByteArray();
      localObject2 = Mac.getInstance("HmacSHA1");
      ((Mac)localObject2).init(new SecretKeySpec("d6fc3a4a06adbde89223bvefedc24fecde188aaa9161".getBytes(), ((Mac)localObject2).getAlgorithm()));
      localByteArrayOutputStream.write(f.a(h.b(b.a(((Mac)localObject2).doFinal((byte[])localObject1), 2))));
      return localByteArrayOutputStream.toByteArray();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str = new Random().nextInt();
      }
    }
  }
  
  private void c(String paramString)
  {
    if ((this.a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0) && (e(paramString)))
    {
      String str = paramString;
      if (paramString.endsWith("\n")) {
        str = paramString.substring(0, paramString.length() - 1);
      }
      if ((24 == str.length()) && (!e(Settings.System.getString(this.a.getContentResolver(), "mqBRboGZkQPcAkyk")))) {
        Settings.System.putString(this.a.getContentResolver(), "mqBRboGZkQPcAkyk", str);
      }
    }
  }
  
  private void d(String paramString)
  {
    if ((this.a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0) && (paramString != null) && (!paramString.equals(Settings.System.getString(this.a.getContentResolver(), "dxCRMxhQkdGePGnp")))) {
      Settings.System.putString(this.a.getContentResolver(), "dxCRMxhQkdGePGnp", paramString);
    }
  }
  
  private boolean e(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null)
    {
      String str = paramString;
      if (paramString.endsWith("\n")) {
        str = paramString.substring(0, paramString.length() - 1);
      }
      bool1 = bool2;
      if (24 == str.length())
      {
        bool1 = bool2;
        if (!this.k.matcher(str).find()) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final String a()
  {
    Object localObject4;
    e locale;
    int m;
    Object localObject2;
    for (;;)
    {
      try
      {
        if (this.d != null)
        {
          localObject1 = this.d;
          return (String)localObject1;
        }
        localObject4 = Settings.System.getString(this.a.getContentResolver(), "mqBRboGZkQPcAkyk");
        Object localObject1 = localObject4;
        if (e((String)localObject4)) {
          continue;
        }
        locale = new e();
        m = 0;
        localObject1 = Settings.System.getString(this.a.getContentResolver(), "dxCRMxhQkdGePGnp");
        if (h.a((String)localObject1)) {
          break label469;
        }
        localObject4 = locale.b((String)localObject1);
        if (e((String)localObject4))
        {
          c((String)localObject4);
          localObject1 = localObject4;
          continue;
        }
        localObject4 = locale.a(str1);
      }
      finally {}
      if (!e((String)localObject4)) {
        break label466;
      }
      localObject4 = this.e.a((String)localObject4);
      if (h.a((String)localObject4)) {
        break label466;
      }
      d((String)localObject4);
      localObject2 = Settings.System.getString(this.a.getContentResolver(), "dxCRMxhQkdGePGnp");
      label152:
      localObject4 = this.e.b((String)localObject2);
      if (!e((String)localObject4)) {
        break;
      }
      this.d = ((String)localObject4);
      a((String)localObject4);
      b((String)localObject2);
      c(this.d);
      localObject2 = this.d;
    }
    label200:
    if (this.i != null)
    {
      localObject2 = this.i.a("UTDID");
      if ((h.a((String)localObject2)) || (this.e.a((String)localObject2) == null)) {}
    }
    for (;;)
    {
      if (e((String)localObject2))
      {
        localObject4 = this.e.a((String)localObject2);
        if (m != 0) {
          d((String)localObject4);
        }
        c((String)localObject2);
        b((String)localObject4);
        this.d = ((String)localObject2);
        break;
      }
      String str2 = this.h.a(this.f);
      if (!h.a(str2))
      {
        localObject4 = locale.a(str2);
        localObject2 = localObject4;
        if (!e((String)localObject4)) {
          localObject2 = this.e.b(str2);
        }
        if (e((String)localObject2))
        {
          localObject4 = this.e.a((String)localObject2);
          if (!h.a((String)localObject2))
          {
            this.d = ((String)localObject2);
            if (m != 0) {
              d((String)localObject4);
            }
            a(this.d);
            localObject2 = this.d;
            break;
          }
        }
      }
      try
      {
        localObject4 = b();
        if (localObject4 != null)
        {
          this.d = b.a((byte[])localObject4, 2);
          a(this.d);
          localObject2 = this.e;
          localObject4 = b.a((byte[])localObject4, 2);
          localObject2 = com.f.a.a.a.a.a(((d)localObject2).a, (String)localObject4);
          if (localObject2 != null)
          {
            if (m != 0) {
              d((String)localObject2);
            }
            b((String)localObject2);
          }
          localObject2 = this.d;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localObject3 = null;
      }
      break;
      label466:
      break label152;
      label469:
      m = 1;
      break label200;
      Object localObject3 = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */