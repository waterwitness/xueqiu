package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.a.a.b.c;
import com.xiaomi.g.a.ad;
import com.xiaomi.g.a.ah;
import com.xiaomi.g.a.al;
import com.xiaomi.g.a.an;
import com.xiaomi.g.a.f;
import com.xiaomi.g.a.h;
import com.xiaomi.g.a.l;
import com.xiaomi.g.a.n;
import com.xiaomi.g.a.p;
import com.xiaomi.g.a.t;
import com.xiaomi.g.a.x;
import com.xiaomi.g.a.z;
import java.nio.ByteBuffer;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.a.b;
import org.apache.a.g;

public final class o
{
  private static final byte[] a = { 100, 23, 84, 114, 72, 0, 4, 97, 73, 97, 2, 52, 84, 102, 18, 32 };
  
  protected static <T extends b<T, ?>> n a(Context paramContext, T paramT, com.xiaomi.g.a.a parama)
  {
    if (!parama.equals(com.xiaomi.g.a.a.a)) {}
    for (boolean bool = true;; bool = false) {
      return a(paramContext, paramT, parama, bool, paramContext.getPackageName(), j.a(paramContext).b.a);
    }
  }
  
  protected static <T extends b<T, ?>> n a(Context paramContext, T paramT, com.xiaomi.g.a.a parama, boolean paramBoolean, String paramString1, String paramString2)
  {
    byte[] arrayOfByte = an.a(paramT);
    if (arrayOfByte == null)
    {
      c.a("invoke convertThriftObjectToBytes method, return null.");
      return null;
    }
    n localn = new n();
    paramT = arrayOfByte;
    if (paramBoolean)
    {
      paramContext = j.a(paramContext).b.d;
      if (TextUtils.isEmpty(paramContext))
      {
        c.a("regSecret is empty, return null");
        return null;
      }
      paramContext = com.xiaomi.a.a.f.a.a(paramContext);
    }
    try
    {
      paramT = a(paramContext, 1).doFinal(arrayOfByte);
      paramContext = new f();
      paramContext.a = 5L;
      paramContext.b = "fakeid";
      localn.g = paramContext;
      localn.d = ByteBuffer.wrap(paramT);
      localn.a = parama;
      localn.a();
      localn.f = paramString1;
      localn.a(paramBoolean);
      localn.e = paramString2;
      return localn;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        c.d("encryption error. ");
        paramT = arrayOfByte;
      }
    }
  }
  
  private static Cipher a(byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte = new SecretKeySpec(paramArrayOfByte, "AES");
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(a);
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(paramInt, paramArrayOfByte, localIvParameterSpec);
    return localCipher;
  }
  
  protected static b a(Context paramContext, n paramn)
  {
    if (paramn.b) {
      paramContext = com.xiaomi.a.a.f.a.a(j.a(paramContext).b.d);
    }
    for (;;)
    {
      try
      {
        arrayOfByte = paramn.b();
        arrayOfByte = a(paramContext, 2).doFinal(arrayOfByte);
        paramContext = paramn.a;
        switch (p.a[paramContext.ordinal()])
        {
        default: 
          paramContext = null;
          if (paramContext != null) {
            an.a(paramContext, arrayOfByte);
          }
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        throw new g("the aes decrypt failed.", paramContext);
      }
      byte[] arrayOfByte = paramn.b();
      continue;
      paramContext = new t();
      continue;
      paramContext = new ah();
      continue;
      paramContext = new ad();
      continue;
      paramContext = new al();
      continue;
      paramContext = new z();
      continue;
      paramContext = new h();
      continue;
      paramContext = new l();
      continue;
      paramContext = new x();
      continue;
      paramContext = new p();
      continue;
      paramContext = new l();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */