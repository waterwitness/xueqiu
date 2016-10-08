package com.sleepycat.b.i.b;

import com.sleepycat.b.aa;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Enumeration;

public class am
{
  static int a = 1;
  private static String d;
  private final int b;
  private long c = System.currentTimeMillis();
  
  static
  {
    try
    {
      Object localObject1 = InetAddress.getLocalHost();
      Object localObject2 = ((InetAddress)localObject1).getAddress();
      boolean bool = ((InetAddress)localObject1).isLoopbackAddress();
      if (bool)
      {
        localObject1 = null;
        try
        {
          localEnumeration = NetworkInterface.getNetworkInterfaces();
          localObject1 = null;
        }
        catch (SocketException localSocketException1)
        {
          try
          {
            Enumeration localEnumeration;
            if (!localEnumeration.hasMoreElements()) {
              break label114;
            }
            localObject2 = ((NetworkInterface)localEnumeration.nextElement()).getInetAddresses();
            InetAddress localInetAddress;
            do
            {
              if (!((Enumeration)localObject2).hasMoreElements()) {
                break;
              }
              localInetAddress = (InetAddress)((Enumeration)localObject2).nextElement();
            } while ((localInetAddress.isLoopbackAddress()) || (localInetAddress.isAnyLocalAddress()) || (localInetAddress.isMulticastAddress()));
            localObject2 = localInetAddress.getAddress();
            localObject1 = localObject2;
          }
          catch (SocketException localSocketException2)
          {
            Object localObject3;
            int j;
            int i;
            for (;;) {}
          }
          localSocketException1 = localSocketException1;
        }
        localObject2 = localObject1;
        localObject3 = localObject1;
      }
      label114:
      if (localObject3 == null)
      {
        d = "000000000000000000000000000001";
        return;
      }
      d = "";
      j = localObject3.length;
      i = 0;
      while (i < j)
      {
        byte b1 = localObject3[i];
        d += String.format("%02x", new Object[] { Byte.valueOf(b1) });
        i += 1;
      }
      d = "000000000000000000000000000000".substring(0, 32 - d.length()) + d;
      return;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      throw aa.a(localUnknownHostException);
    }
  }
  
  public am()
  {
    this(i);
  }
  
  private am(int paramInt)
  {
    this.b = paramInt;
  }
  
  public static t b()
  {
    return an.b();
  }
  
  public final s a()
  {
    try
    {
      long l2 = System.currentTimeMillis();
      long l1 = l2;
      if (l2 <= this.c)
      {
        l1 = this.c + 1L;
        this.c = l1;
      }
      this.c = l1;
      an localan = new an(String.format("%016x%s%08x", new Object[] { Long.valueOf(l1), d, Integer.valueOf(this.b) }));
      return localan;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */