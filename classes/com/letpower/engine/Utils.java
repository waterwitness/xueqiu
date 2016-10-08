package com.letpower.engine;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.pingan.a.a.e;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import org.apache.http.conn.util.InetAddressUtils;

public class Utils
{
  public static String bytesToHex(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte.length) {
        return localStringBuilder.toString();
      }
      int j = paramArrayOfByte[i] & 0xFF;
      if (j < 16) {
        localStringBuilder.append("0");
      }
      localStringBuilder.append(Integer.toHexString(j).toUpperCase());
      i += 1;
    }
  }
  
  public static String getIPAddress(Context paramContext)
  {
    Object localObject2;
    Object localObject1;
    for (;;)
    {
      try
      {
        localObject2 = (ConnectivityManager)paramContext.getSystemService("connectivity");
        localObject1 = ((ConnectivityManager)localObject2).getNetworkInfo(1);
        localObject2 = ((ConnectivityManager)localObject2).getNetworkInfo(0);
        if (((NetworkInfo)localObject1).isConnected())
        {
          e.a("*WEBRTCJ*", "wifi is Connected");
          if (((NetworkInfo)localObject2).isConnected())
          {
            e.a("*WEBRTCJ*", "mobile is Connected");
            if (!((NetworkInfo)localObject1).isConnected()) {
              break;
            }
            paramContext = (WifiManager)paramContext.getSystemService("wifi");
            if (!paramContext.isWifiEnabled()) {
              break;
            }
            int i = paramContext.getConnectionInfo().getIpAddress();
            if (i == 0) {
              break;
            }
            return (i & 0xFF) + "." + (i >> 8 & 0xFF) + "." + (i >> 16 & 0xFF) + "." + (i >> 24 & 0xFF);
          }
        }
        else
        {
          e.a("*WEBRTCJ*", "wifi is not Connected");
          continue;
        }
        e.a("*WEBRTCJ*", "mobile is not Connected");
      }
      catch (Exception paramContext)
      {
        return "";
      }
    }
    if (((NetworkInfo)localObject2).isConnected()) {}
    boolean bool;
    do
    {
      do
      {
        paramContext = NetworkInterface.getNetworkInterfaces();
        while (!((Enumeration)localObject1).hasMoreElements())
        {
          do
          {
            bool = paramContext.hasMoreElements();
            if (!bool) {
              return "";
            }
            localObject1 = (NetworkInterface)paramContext.nextElement();
          } while (!((NetworkInterface)localObject1).isUp());
          localObject1 = ((NetworkInterface)localObject1).getInetAddresses();
        }
        localObject2 = (InetAddress)((Enumeration)localObject1).nextElement();
      } while ((((InetAddress)localObject2).isLoopbackAddress()) || (((InetAddress)localObject2).isLinkLocalAddress()));
      localObject2 = ((InetAddress)localObject2).getHostAddress().toUpperCase();
      bool = InetAddressUtils.isIPv4Address((String)localObject2);
    } while (!bool);
    return (String)localObject2;
  }
  
  public static String getIPAddress(boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        localEnumeration = NetworkInterface.getNetworkInterfaces();
        paramBoolean = localEnumeration.hasMoreElements();
        if (paramBoolean) {
          continue;
        }
      }
      catch (Exception localException)
      {
        Enumeration localEnumeration;
        Object localObject1;
        Object localObject2;
        continue;
      }
      return "";
      localObject1 = (NetworkInterface)localEnumeration.nextElement();
      if (((NetworkInterface)localObject1).isUp())
      {
        e.a("*WEBRTCJ*", "Name=" + ((NetworkInterface)localObject1).getName() + ", Up");
        localObject1 = ((NetworkInterface)localObject1).getInetAddresses();
        if (((Enumeration)localObject1).hasMoreElements())
        {
          localObject2 = (InetAddress)((Enumeration)localObject1).nextElement();
          if ((!((InetAddress)localObject2).isLoopbackAddress()) && (!((InetAddress)localObject2).isLinkLocalAddress()))
          {
            localObject2 = ((InetAddress)localObject2).getHostAddress().toUpperCase();
            if (InetAddressUtils.isIPv4Address((String)localObject2)) {
              return (String)localObject2;
            }
          }
        }
      }
      else
      {
        e.a("*WEBRTCJ*", "Name=" + ((NetworkInterface)localObject1).getName() + ", Down");
      }
    }
  }
  
  public static String getMACAddress(String paramString)
  {
    label28:
    do
    {
      try
      {
        localObject = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
        boolean bool = ((Iterator)localObject).hasNext();
        if (bool) {
          break label28;
        }
      }
      catch (Exception paramString)
      {
        Object localObject;
        NetworkInterface localNetworkInterface;
        int i;
        for (;;) {}
      }
      return "";
      localNetworkInterface = (NetworkInterface)((Iterator)localObject).next();
    } while ((paramString != null) && (!localNetworkInterface.getName().equalsIgnoreCase(paramString)));
    paramString = localNetworkInterface.getHardwareAddress();
    if (paramString == null) {
      return "";
    }
    localObject = new StringBuilder();
    i = 0;
    for (;;)
    {
      if (i >= paramString.length)
      {
        if (((StringBuilder)localObject).length() > 0) {
          ((StringBuilder)localObject).deleteCharAt(((StringBuilder)localObject).length() - 1);
        }
        return ((StringBuilder)localObject).toString();
      }
      ((StringBuilder)localObject).append(String.format("%02X:", new Object[] { Byte.valueOf(paramString[i]) }));
      i += 1;
    }
  }
  
  public static byte[] getUTF8Bytes(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  /* Error */
  public static String loadFileAsString(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: new 209	java/io/BufferedInputStream
    //   6: dup
    //   7: new 211	java/io/FileInputStream
    //   10: dup
    //   11: aload_0
    //   12: invokespecial 212	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   15: sipush 1024
    //   18: invokespecial 215	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   21: astore_1
    //   22: new 217	java/io/ByteArrayOutputStream
    //   25: dup
    //   26: sipush 1024
    //   29: invokespecial 220	java/io/ByteArrayOutputStream:<init>	(I)V
    //   32: astore_0
    //   33: sipush 1024
    //   36: newarray <illegal type>
    //   38: astore_2
    //   39: iconst_0
    //   40: istore_3
    //   41: aload_1
    //   42: aload_2
    //   43: invokevirtual 224	java/io/BufferedInputStream:read	([B)I
    //   46: istore 5
    //   48: iload 5
    //   50: iconst_m1
    //   51: if_icmpne +28 -> 79
    //   54: iload 4
    //   56: ifeq +85 -> 141
    //   59: new 32	java/lang/String
    //   62: dup
    //   63: aload_0
    //   64: invokevirtual 227	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   67: ldc -53
    //   69: invokespecial 230	java/lang/String:<init>	([BLjava/lang/String;)V
    //   72: astore_0
    //   73: aload_1
    //   74: invokevirtual 233	java/io/BufferedInputStream:close	()V
    //   77: aload_0
    //   78: areturn
    //   79: iload_3
    //   80: ifne +43 -> 123
    //   83: aload_2
    //   84: iconst_0
    //   85: baload
    //   86: bipush -17
    //   88: if_icmpne +35 -> 123
    //   91: aload_2
    //   92: iconst_1
    //   93: baload
    //   94: bipush -69
    //   96: if_icmpne +27 -> 123
    //   99: aload_2
    //   100: iconst_2
    //   101: baload
    //   102: bipush -65
    //   104: if_icmpne +19 -> 123
    //   107: aload_0
    //   108: aload_2
    //   109: iconst_3
    //   110: iload 5
    //   112: iconst_3
    //   113: isub
    //   114: invokevirtual 237	java/io/ByteArrayOutputStream:write	([BII)V
    //   117: iconst_1
    //   118: istore 4
    //   120: goto +43 -> 163
    //   123: aload_0
    //   124: aload_2
    //   125: iconst_0
    //   126: iload 5
    //   128: invokevirtual 237	java/io/ByteArrayOutputStream:write	([BII)V
    //   131: goto +32 -> 163
    //   134: astore_0
    //   135: aload_1
    //   136: invokevirtual 233	java/io/BufferedInputStream:close	()V
    //   139: aload_0
    //   140: athrow
    //   141: new 32	java/lang/String
    //   144: dup
    //   145: aload_0
    //   146: invokevirtual 227	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   149: invokespecial 240	java/lang/String:<init>	([B)V
    //   152: astore_0
    //   153: goto -80 -> 73
    //   156: astore_1
    //   157: aload_0
    //   158: areturn
    //   159: astore_1
    //   160: goto -21 -> 139
    //   163: iload_3
    //   164: iload 5
    //   166: iadd
    //   167: istore_3
    //   168: goto -127 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	paramString	String
    //   21	115	1	localBufferedInputStream	java.io.BufferedInputStream
    //   156	1	1	localException1	Exception
    //   159	1	1	localException2	Exception
    //   38	87	2	arrayOfByte	byte[]
    //   40	128	3	i	int
    //   1	118	4	j	int
    //   46	121	5	k	int
    // Exception table:
    //   from	to	target	type
    //   22	39	134	finally
    //   41	48	134	finally
    //   59	73	134	finally
    //   107	117	134	finally
    //   123	131	134	finally
    //   141	153	134	finally
    //   73	77	156	java/lang/Exception
    //   135	139	159	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\Utils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */