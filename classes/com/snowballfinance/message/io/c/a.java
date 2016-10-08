package com.snowballfinance.message.io.c;

import com.snowballfinance.message.io.logger.Logger;
import com.snowballfinance.message.io.logger.LoggerFactory;
import java.io.ByteArrayOutputStream;
import java.security.Key;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import javax.crypto.Cipher;
import rx.j;

public abstract class a
  implements g
{
  protected final Logger a = LoggerFactory.getLogger(getClass());
  
  protected void a(final c paramc, com.snowballfinance.message.io.b paramb)
  {
    if (this.a.isDebugEnabled()) {
      this.a.debug(String.format("receive [PKI:%s, ACK:%s] from %s.", new Object[] { Long.valueOf(paramb.a), Boolean.valueOf(paramb.c), paramc.b }));
    }
    try
    {
      byte[] arrayOfByte1 = paramb.g;
      Object localObject1 = arrayOfByte1;
      if (paramb.e) {
        localObject1 = com.snowballfinance.message.io.b.d.a(arrayOfByte1);
      }
      arrayOfByte1 = new byte[localObject1.length - 1];
      System.arraycopy(localObject1, 1, arrayOfByte1, 0, arrayOfByte1.length);
      int i = (localObject1[0] & 0xFF) * 1024;
      localObject1 = com.snowballfinance.message.a.b.a(arrayOfByte1);
      paramc.d = ((Key)localObject1);
      paramc.e = i;
      Object localObject2 = new byte[32];
      new Random().nextBytes((byte[])localObject2);
      paramc.f = ((byte[])localObject2);
      byte[] arrayOfByte2 = paramc.b.b().getBytes();
      arrayOfByte1 = new byte[arrayOfByte2.length + 1 + 32 + 8 + 1 + arrayOfByte2.length];
      arrayOfByte1[0] = ((byte)(arrayOfByte2.length & 0xFF));
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 1, arrayOfByte2.length);
      System.arraycopy(localObject2, 0, arrayOfByte1, arrayOfByte2.length + 1, 32);
      com.snowballfinance.message.io.d.b(arrayOfByte1, arrayOfByte2.length + 33, System.currentTimeMillis());
      arrayOfByte1[(arrayOfByte2.length + 41)] = ((byte)(arrayOfByte2.length & 0xFF));
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, arrayOfByte2.length + 42, arrayOfByte2.length);
      if (paramb.c)
      {
        localObject2 = paramc.b;
        localObject2 = d.b(paramb);
        paramc.b.a((com.snowballfinance.message.io.b)localObject2);
        if (this.a.isDebugEnabled()) {
          this.a.debug(String.format("sent [ACK:%s] to %s.", new Object[] { Long.valueOf(((com.snowballfinance.message.io.b)localObject2).a), paramc.b }));
        }
      }
      paramc.b.a(128);
      if (this.a.isDebugEnabled()) {
        this.a.debug(String.format("channel[%s] status changes to [OP_PKI].", new Object[] { paramc.b }));
      }
      localObject2 = paramc.b.b(5);
      ((com.snowballfinance.message.io.b)localObject2).f = true;
      ((com.snowballfinance.message.io.b)localObject2).e = false;
      ((com.snowballfinance.message.io.b)localObject2).g = com.snowballfinance.message.a.a.a(arrayOfByte1, (Key)localObject1, i);
      localObject1 = paramc.b.a((com.snowballfinance.message.io.b)localObject2);
      if (this.a.isDebugEnabled()) {
        this.a.debug(String.format("sent [SKI:%s, ACK:%s] to %s.", new Object[] { Long.valueOf(((com.snowballfinance.message.io.b)localObject2).a), Boolean.valueOf(((com.snowballfinance.message.io.b)localObject2).c), paramc.b }));
      }
      ((rx.a)localObject1).c(new rx.c.b() {});
      return;
    }
    catch (Exception paramc)
    {
      if (this.a.isDebugEnabled()) {
        this.a.debug("key specification" + Arrays.toString(paramb.g), paramc);
      }
      this.a.warn("the specification of the public key is inappropriate to produce a public key.", paramc);
    }
  }
  
  public final void a(final f paramf)
  {
    Object localObject2;
    Object localObject3;
    switch (paramf.b.b)
    {
    default: 
    case 2: 
    case 1: 
    case 3: 
    case 6: 
    case 5: 
    case 4: 
      do
      {
        do
        {
          for (;;)
          {
            return;
            if ((paramf.a.b.c() & 0x200) > 0)
            {
              localObject1 = paramf.a;
              paramf = paramf.b;
              if (this.a.isDebugEnabled()) {
                this.a.debug(String.format("receive [HRB:%s, ACK:%s] from %s.", new Object[] { Long.valueOf(paramf.a), Boolean.valueOf(paramf.c), ((c)localObject1).b }));
              }
              if (paramf.c)
              {
                localObject2 = ((c)localObject1).b;
                paramf = d.b(paramf);
                ((c)localObject1).b.a(paramf);
                if (this.a.isDebugEnabled()) {
                  this.a.debug(String.format("sent [ACK:%s] to %s.", new Object[] { Long.valueOf(paramf.a), ((c)localObject1).b }));
                }
              }
              ((c)localObject1).b.a(2048);
              return;
              localObject1 = paramf.a;
              paramf = paramf.b;
              if (this.a.isDebugEnabled()) {
                this.a.debug(String.format("receive [ACK:%s] from %s.", new Object[] { Long.valueOf(paramf.a), ((c)localObject1).b }));
              }
              ((c)localObject1).b.a(1024);
              long l = paramf.a;
              if (((c)localObject1).b.i.containsKey(Long.valueOf(l)))
              {
                ((rx.i.a)((c)localObject1).b.i.get(Long.valueOf(l))).a(Boolean.valueOf(true));
                ((rx.i.a)((c)localObject1).b.i.get(Long.valueOf(l))).a();
                return;
                b(paramf.a, paramf.b);
                return;
                a(paramf.a, paramf.b);
                return;
                localObject2 = paramf.a;
                localObject3 = paramf.b;
                try
                {
                  if (this.a.isDebugEnabled()) {
                    this.a.debug(String.format("receive [SKI:%s, ACK:%s] from %s.", new Object[] { Long.valueOf(((com.snowballfinance.message.io.b)localObject3).a), Boolean.valueOf(((com.snowballfinance.message.io.b)localObject3).c), ((c)localObject2).b }));
                  }
                  localObject1 = ((com.snowballfinance.message.io.b)localObject3).g;
                  paramf = (f)localObject1;
                  if (((com.snowballfinance.message.io.b)localObject3).f)
                  {
                    Object localObject4 = ((c)localObject2).c;
                    i = ((c)localObject2).e;
                    paramf = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                    paramf.init(2, (Key)localObject4);
                    localObject4 = new ByteArrayOutputStream();
                    int m = i / 8;
                    i = 0;
                    for (int j = 0; localObject1.length - j > 0; j = i * m)
                    {
                      int n = localObject1.length - j;
                      int k = n;
                      if (n > m) {
                        k = m;
                      }
                      byte[] arrayOfByte = paramf.doFinal((byte[])localObject1, j, k);
                      ((ByteArrayOutputStream)localObject4).write(arrayOfByte, 0, arrayOfByte.length);
                      i += 1;
                    }
                    paramf = ((ByteArrayOutputStream)localObject4).toByteArray();
                  }
                  localObject1 = paramf;
                  if (((com.snowballfinance.message.io.b)localObject3).e) {
                    localObject1 = com.snowballfinance.message.io.b.d.a(paramf);
                  }
                  int i = localObject1[0] & 0xFF;
                  ((c)localObject2).b.b(new String((byte[])localObject1, 1, i));
                  paramf = new byte[32];
                  System.arraycopy(localObject1, i + 1, paramf, 0, 32);
                  ((c)localObject2).f = paramf;
                  if (((com.snowballfinance.message.io.b)localObject3).c)
                  {
                    paramf = ((c)localObject2).b;
                    paramf = d.b((com.snowballfinance.message.io.b)localObject3);
                    ((c)localObject2).b.a(paramf);
                    if (this.a.isDebugEnabled()) {
                      this.a.debug(String.format("sent [ACK:%s] to %s.", new Object[] { Long.valueOf(paramf.a), ((c)localObject2).b }));
                    }
                  }
                  ((c)localObject2).b.a(256);
                  if (this.a.isDebugEnabled())
                  {
                    this.a.debug(String.format("channel[%s] valid ops mark as [OP_SKI].", new Object[] { ((c)localObject2).b }));
                    return;
                  }
                }
                catch (Exception paramf)
                {
                  if (this.a.isDebugEnabled()) {
                    this.a.debug("payload" + Arrays.toString(((com.snowballfinance.message.io.b)localObject3).g), paramf);
                  }
                  this.a.warn("particular padding mechanism is expected for the payload but not padded properly.");
                  return;
                }
              }
            }
          }
        } while ((paramf.a.b.c() & 0x100) <= 0);
        localObject1 = paramf.a;
        paramf = paramf.b;
        if (this.a.isDebugEnabled()) {
          this.a.debug(String.format("receive [REV:%s, ACK:%s] from %s.", new Object[] { Long.valueOf(paramf.a), Boolean.valueOf(paramf.c), ((c)localObject1).b }));
        }
        if (paramf.c)
        {
          localObject2 = ((c)localObject1).b;
          paramf = d.b(paramf);
          ((c)localObject1).b.a(paramf);
          if (this.a.isDebugEnabled()) {
            this.a.debug(String.format("sent [ACK:%s] to %s.", new Object[] { Long.valueOf(paramf.a), ((c)localObject1).b }));
          }
        }
        ((c)localObject1).b.a(512);
        ((c)localObject1).b.h.a(Boolean.valueOf(true));
        ((c)localObject1).b.h.a();
      } while (!this.a.isDebugEnabled());
      this.a.debug(String.format("channel[%s] valid ops mark as [OP_REV].", new Object[] { ((c)localObject1).b }));
      return;
    case 7: 
      localObject1 = paramf.a;
      paramf = paramf.b;
      if (this.a.isDebugEnabled()) {
        this.a.debug(String.format("receive [SYN:%s, ACK:%s] from %s.", new Object[] { Long.valueOf(paramf.a), Boolean.valueOf(paramf.c), ((c)localObject1).b }));
      }
      if (paramf.c)
      {
        localObject2 = ((c)localObject1).b;
        paramf = d.b(paramf);
        ((c)localObject1).b.a(paramf);
        if (this.a.isDebugEnabled()) {
          this.a.debug(String.format("sent [ACK:%s] to %s.", new Object[] { Long.valueOf(paramf.a), ((c)localObject1).b }));
        }
      }
      ((c)localObject1).b.a(64);
      if (this.a.isDebugEnabled()) {
        this.a.debug(String.format("channel[%s] valid ops mark as [OP_SYN].", new Object[] { ((c)localObject1).b }));
      }
      paramf = ((c)localObject1).b.b(6);
      localObject3 = ((c)localObject1).d.getEncoded();
      localObject2 = new byte[localObject3.length + 1];
      localObject2[0] = ((byte)(((c)localObject1).e / 1024));
      System.arraycopy(localObject3, 0, localObject2, 1, localObject3.length);
      localObject3 = ((c)localObject1).b;
      paramf.g = ((byte[])localObject2);
      localObject2 = ((d)localObject3).a(paramf);
      if (this.a.isDebugEnabled()) {
        this.a.debug(String.format("sent [PKI:%s, ACK:%s] to %s.", new Object[] { Long.valueOf(paramf.a), Boolean.valueOf(paramf.c), ((c)localObject1).b }));
      }
      paramf = ((rx.a)localObject2).c(new rx.c.b() {});
      ((c)localObject1).b.a().c(new rx.c.b() {});
      return;
    }
    final Object localObject1 = paramf.a;
    paramf = paramf.b;
    if (this.a.isDebugEnabled()) {
      this.a.debug(String.format("receive [FIN:%s] from %s.", new Object[] { Long.valueOf(paramf.a), ((c)localObject1).b }));
    }
    ((c)localObject1).b.a(32);
    if (this.a.isDebugEnabled()) {
      this.a.debug(String.format("channel[%s] valid ops mark as [OP_FIN].", new Object[] { ((c)localObject1).b }));
    }
    ((c)localObject1).b.d();
  }
  
  protected void b(c paramc, com.snowballfinance.message.io.b paramb)
  {
    try
    {
      if (this.a.isDebugEnabled()) {
        this.a.debug(String.format("receive [UDM:%s, ACK:%s] from %s.", new Object[] { Long.valueOf(paramb.a), Boolean.valueOf(paramb.c), paramc.b }));
      }
      byte[] arrayOfByte = paramb.g;
      Object localObject = arrayOfByte;
      if (paramb.f) {
        localObject = com.snowballfinance.message.a.c.a(arrayOfByte, paramc.f);
      }
      if (paramb.e) {
        com.snowballfinance.message.io.b.d.a((byte[])localObject);
      }
      if (paramb.c)
      {
        localObject = paramc.b;
        localObject = d.b(paramb);
        paramc.b.a((com.snowballfinance.message.io.b)localObject);
        if (this.a.isDebugEnabled()) {
          this.a.debug(String.format("sent [ACK:%s] to %s.", new Object[] { Long.valueOf(((com.snowballfinance.message.io.b)localObject).a), paramc.b }));
        }
      }
      paramc.b.a(4096);
      return;
    }
    catch (Exception paramc)
    {
      if (this.a.isDebugEnabled()) {
        this.a.debug("payload" + Arrays.toString(paramb.g), paramc);
      }
      this.a.warn("particular padding mechanism is expected for the payload but not padded properly.");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */