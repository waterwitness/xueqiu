package com.pingan.paphone.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.util.Log;
import android.widget.Toast;
import com.pingan.paphone.extension.http.AsyncHttpClient;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.http.conn.util.InetAddressUtils;

public class NetHttpUtils
{
  private static final String TAG = "HttpUtils";
  private static AsyncHttpClient mRequestQueue;
  private static Toast toast;
  
  private static String callCmd(String paramString1, String paramString2)
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(paramString1).getInputStream()));
      for (;;)
      {
        paramString1 = localBufferedReader.readLine();
        if ((paramString1 == null) || (paramString1.contains(paramString2))) {
          break;
        }
        Log.i("test", "line: " + paramString1);
      }
      paramString2.printStackTrace();
    }
    catch (Exception paramString2)
    {
      paramString1 = "";
    }
    for (;;)
    {
      return paramString1;
      try
      {
        Log.i("test", "result: " + paramString1);
        return paramString1;
      }
      catch (Exception paramString2) {}
    }
  }
  
  public static boolean checkNetworkAvailable(Context paramContext)
  {
    if (isNetworkAvailable(paramContext)) {
      return true;
    }
    paramContext = Toast.makeText(paramContext, "网络连接不可用，请检查您的网络是否正常！", 1);
    toast = paramContext;
    paramContext.setGravity(17, 0, 0);
    toast.show();
    return false;
  }
  
  public static AsyncHttpClient getInstence(Context paramContext)
  {
    if (mRequestQueue == null) {
      mRequestQueue = new AsyncHttpClient();
    }
    return mRequestQueue;
  }
  
  public static String getLocalIpAddress()
  {
    try
    {
      Object localObject;
      boolean bool;
      do
      {
        do
        {
          Iterator localIterator1 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
          Iterator localIterator2;
          while (!localIterator2.hasNext())
          {
            if (!localIterator1.hasNext()) {
              break;
            }
            localIterator2 = Collections.list(((NetworkInterface)localIterator1.next()).getInetAddresses()).iterator();
          }
          localObject = (InetAddress)localIterator2.next();
        } while (((InetAddress)localObject).isLoopbackAddress());
        localObject = ((InetAddress)localObject).getHostAddress();
        bool = InetAddressUtils.isIPv4Address((String)localObject);
      } while (!bool);
      return (String)localObject;
    }
    catch (SocketException localSocketException)
    {
      Log.e("", localSocketException.toString());
    }
    return null;
  }
  
  public static String getLocalMacAddressFromBusybox()
  {
    String str2 = callCmd("busybox ifconfig", "HWaddr");
    if (str2 == null) {
      str1 = "网络出错，请检查网络";
    }
    do
    {
      do
      {
        return str1;
        str1 = str2;
      } while (str2.length() <= 0);
      str1 = str2;
    } while (str2.contains("HWaddr") != true);
    String str1 = str2.substring(str2.indexOf("HWaddr") + 6, str2.length() - 1);
    Log.i("test", "Mac:" + str1 + " Mac.length: " + str1.length());
    Log.i("test", str1 + " result.length: " + str1.length());
    return str1;
  }
  
  public static boolean isNetworkAvailable(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {}
    for (;;)
    {
      return false;
      paramContext = paramContext.getAllNetworkInfo();
      if (paramContext != null)
      {
        int i = 0;
        while (i < paramContext.length)
        {
          if (paramContext[i].getState() == NetworkInfo.State.CONNECTED) {
            return true;
          }
          i += 1;
        }
      }
    }
  }
  
  public boolean isOpenNetwork(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext.getActiveNetworkInfo() != null) {
      return paramContext.getActiveNetworkInfo().isAvailable();
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\utils\NetHttpUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */