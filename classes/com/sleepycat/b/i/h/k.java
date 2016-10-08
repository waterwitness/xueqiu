package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.i.c.am;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.p.au;
import java.nio.ByteBuffer;

public abstract class k
  extends d
{
  public k(a parama)
  {
    super(parama);
  }
  
  private static void a(ByteBuffer paramByteBuffer, byte[] paramArrayOfByte)
  {
    ar.a(paramByteBuffer, paramArrayOfByte.length);
    paramByteBuffer.put(paramArrayOfByte);
  }
  
  private static void a(ByteBuffer paramByteBuffer, am[] paramArrayOfam)
  {
    ar.a(paramByteBuffer, paramArrayOfam.length);
    int j = paramArrayOfam.length;
    int i = 0;
    while (i < j)
    {
      a(paramByteBuffer, t.b(paramArrayOfam[i]));
      i += 1;
    }
  }
  
  public final ByteBuffer a(Object... paramVarArgs)
  {
    int i1 = paramVarArgs.length;
    int i = 0;
    int j = 0;
    Object localObject2;
    int n;
    if (j < i1)
    {
      localObject1 = paramVarArgs[j];
      localObject2 = localObject1.getClass();
      if (localObject2 == Long.class) {
        i += 8;
      }
      for (;;)
      {
        j += 1;
        break;
        if (localObject2 == Integer.class)
        {
          i += 4;
        }
        else if (localObject2 == Short.class)
        {
          i += 2;
        }
        else if (localObject2 == Byte.class)
        {
          i += 1;
        }
        else if (localObject2 == Boolean.class)
        {
          i += 1;
        }
        else if (localObject2 == au.class)
        {
          i += 8;
        }
        else if (Enum.class.isAssignableFrom((Class)localObject2))
        {
          i = this.k.a(((Enum)localObject1).name()) + i;
        }
        else if (localObject2 == String.class)
        {
          i = this.k.a((String)localObject1) + i;
        }
        else if (localObject2 == Double.class)
        {
          i = this.k.a(((Double)localObject1).toString()) + i;
        }
        else
        {
          int i2;
          if (localObject2 == String[].class)
          {
            i += 4;
            localObject1 = (String[])localObject1;
            n = localObject1.length;
            m = 0;
            while (m < n)
            {
              localObject2 = localObject1[m];
              i2 = this.k.a((String)localObject2);
              m += 1;
              i = i2 + i;
            }
          }
          else if (localObject2 == byte[].class)
          {
            i = ((byte[])localObject1).length + 4 + i;
          }
          else if (localObject2 == am[].class)
          {
            localObject1 = (am[])localObject1;
            i2 = localObject1.length;
            n = 4;
            m = 0;
            while (m < i2)
            {
              n += t.b(localObject1[m]).length + 4;
              m += 1;
            }
            i += n;
          }
          else
          {
            if (!(localObject1 instanceof x)) {
              break label414;
            }
            localObject1 = (x)localObject1;
            i = this.k.a(((x)localObject1).a) + 4 + i;
          }
        }
      }
      label414:
      throw aa.c("Unknown type: " + localObject2);
    }
    Object localObject1 = a(i);
    int m = paramVarArgs.length;
    i = 0;
    if (i < m)
    {
      localObject2 = paramVarArgs[i];
      Class localClass = localObject2.getClass();
      if (localClass == Long.class) {
        ar.b((ByteBuffer)localObject1, ((Long)localObject2).longValue());
      }
      for (;;)
      {
        i += 1;
        break;
        if (localClass == Integer.class)
        {
          ar.a((ByteBuffer)localObject1, ((Integer)localObject2).intValue());
        }
        else if (localClass == Short.class)
        {
          ar.a((ByteBuffer)localObject1, ((Short)localObject2).shortValue());
        }
        else if (localClass == Byte.class)
        {
          ((ByteBuffer)localObject1).put(((Byte)localObject2).byteValue());
        }
        else
        {
          if (localClass == Boolean.class)
          {
            if (((Boolean)localObject2).booleanValue()) {}
            for (byte b = 1;; b = 0)
            {
              ((ByteBuffer)localObject1).put(b);
              break;
            }
          }
          if (localClass == au.class)
          {
            ar.b((ByteBuffer)localObject1, ((au)localObject2).c);
          }
          else if (Enum.class.isAssignableFrom(localClass))
          {
            localObject2 = (Enum)localObject2;
            this.k.a(((Enum)localObject2).name(), (ByteBuffer)localObject1);
          }
          else if (localClass == String.class)
          {
            this.k.a((String)localObject2, (ByteBuffer)localObject1);
          }
          else if (localClass == Double.class)
          {
            this.k.a(((Double)localObject2).toString(), (ByteBuffer)localObject1);
          }
          else if (localClass == String[].class)
          {
            localObject2 = (String[])localObject2;
            ar.a((ByteBuffer)localObject1, localObject2.length);
            n = localObject2.length;
            j = 0;
            while (j < n)
            {
              localClass = localObject2[j];
              this.k.a(localClass, (ByteBuffer)localObject1);
              j += 1;
            }
          }
          else if (localClass == byte[].class)
          {
            a((ByteBuffer)localObject1, (byte[])localObject2);
          }
          else if (localClass == am[].class)
          {
            a((ByteBuffer)localObject1, (am[])localObject2);
          }
          else
          {
            if (!(localObject2 instanceof x)) {
              break label851;
            }
            localObject2 = (x)localObject2;
            this.k.a(((x)localObject2).a, (ByteBuffer)localObject1);
            ar.a((ByteBuffer)localObject1, ((x)localObject2).b);
          }
        }
      }
      label851:
      throw aa.c("Unknow type: " + localClass);
    }
    ((ByteBuffer)localObject1).flip();
    return (ByteBuffer)localObject1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */