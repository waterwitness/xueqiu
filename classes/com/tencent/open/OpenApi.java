package com.tencent.open;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.open.cgireport.ReportManager;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IRequestListener;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.util.InvalidPropertiesFormatException;
import java.util.zip.ZipException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import org.apache.http.ConnectionClosedException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpResponseException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenApi
{
  private TContext a;
  
  public OpenApi(TContext paramTContext)
  {
    this.a = paramTContext;
  }
  
  private static int a(IOException paramIOException)
  {
    if ((paramIOException instanceof CharConversionException)) {
      return -20;
    }
    if ((paramIOException instanceof MalformedInputException)) {
      return -21;
    }
    if ((paramIOException instanceof UnmappableCharacterException)) {
      return -22;
    }
    if ((paramIOException instanceof HttpResponseException)) {
      return -23;
    }
    if ((paramIOException instanceof ClosedChannelException)) {
      return -24;
    }
    if ((paramIOException instanceof ConnectionClosedException)) {
      return -25;
    }
    if ((paramIOException instanceof EOFException)) {
      return -26;
    }
    if ((paramIOException instanceof FileLockInterruptionException)) {
      return -27;
    }
    if ((paramIOException instanceof FileNotFoundException)) {
      return -28;
    }
    if ((paramIOException instanceof HttpRetryException)) {
      return -29;
    }
    if ((paramIOException instanceof ConnectTimeoutException)) {
      return -7;
    }
    if ((paramIOException instanceof SocketTimeoutException)) {
      return -8;
    }
    if ((paramIOException instanceof InvalidPropertiesFormatException)) {
      return -30;
    }
    if ((paramIOException instanceof MalformedChunkCodingException)) {
      return -31;
    }
    if ((paramIOException instanceof MalformedURLException)) {
      return -3;
    }
    if ((paramIOException instanceof NoHttpResponseException)) {
      return -32;
    }
    if ((paramIOException instanceof InvalidClassException)) {
      return -33;
    }
    if ((paramIOException instanceof InvalidObjectException)) {
      return -34;
    }
    if ((paramIOException instanceof NotActiveException)) {
      return -35;
    }
    if ((paramIOException instanceof NotSerializableException)) {
      return -36;
    }
    if ((paramIOException instanceof OptionalDataException)) {
      return -37;
    }
    if ((paramIOException instanceof StreamCorruptedException)) {
      return -38;
    }
    if ((paramIOException instanceof WriteAbortedException)) {
      return -39;
    }
    if ((paramIOException instanceof ProtocolException)) {
      return -40;
    }
    if ((paramIOException instanceof SSLHandshakeException)) {
      return -41;
    }
    if ((paramIOException instanceof SSLKeyException)) {
      return -42;
    }
    if ((paramIOException instanceof SSLPeerUnverifiedException)) {
      return -43;
    }
    if ((paramIOException instanceof SSLProtocolException)) {
      return -44;
    }
    if ((paramIOException instanceof BindException)) {
      return -45;
    }
    if ((paramIOException instanceof ConnectException)) {
      return -46;
    }
    if ((paramIOException instanceof NoRouteToHostException)) {
      return -47;
    }
    if ((paramIOException instanceof PortUnreachableException)) {
      return -48;
    }
    if ((paramIOException instanceof SyncFailedException)) {
      return -49;
    }
    if ((paramIOException instanceof UTFDataFormatException)) {
      return -50;
    }
    if ((paramIOException instanceof UnknownHostException)) {
      return -51;
    }
    if ((paramIOException instanceof UnknownServiceException)) {
      return -52;
    }
    if ((paramIOException instanceof UnsupportedEncodingException)) {
      return -53;
    }
    if ((paramIOException instanceof ZipException)) {
      return -54;
    }
    return -2;
  }
  
  private Bundle a(String paramString, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putString("format", "json");
    localBundle.putString("status_os", Build.VERSION.RELEASE);
    localBundle.putString("status_machine", Build.MODEL);
    localBundle.putString("status_version", Build.VERSION.SDK);
    localBundle.putString("sdkv", "1.8");
    localBundle.putString("sdkp", "a");
    if (this.a == null) {
      return localBundle;
    }
    if (c()) {
      localBundle.putString("access_token", b());
    }
    if (!"oauth2.0/m_me".equals(paramString))
    {
      localBundle.putString("oauth_consumer_key", this.a.d());
      if (this.a.c() != null) {
        localBundle.putString("openid", this.a.c());
      }
    }
    localBundle.putString("appid_for_getting_config", this.a.d());
    try
    {
      localBundle.putString("pf", this.a.f().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
      return localBundle;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      localBundle.putString("pf", "openmobile_android");
    }
    return localBundle;
  }
  
  public static String a()
  {
    return "Android_SDK_1.8";
  }
  
  private void a(String paramString)
  {
    if ((paramString.indexOf("add_share") >= 0) || (paramString.indexOf("upload_pic") >= 0) || (paramString.indexOf("add_topic") >= 0) || (paramString.indexOf("set_user_face") >= 0) || (paramString.indexOf("add_t") >= 0) || (paramString.indexOf("add_pic_t") >= 0) || (paramString.indexOf("add_pic_url") >= 0) || (paramString.indexOf("add_video") >= 0)) {
      TencentStat.a(this.a, "requireApi", new String[] { paramString });
    }
  }
  
  private String b()
  {
    if (this.a != null) {
      return this.a.b();
    }
    return null;
  }
  
  private boolean c()
  {
    return (this.a != null) && (this.a.a());
  }
  
  public JSONObject a(Context paramContext, String paramString, Bundle paramBundle)
  {
    Bundle localBundle3 = a(paramString, paramBundle);
    String str2;
    String str1;
    if (!paramString.toLowerCase().startsWith("http"))
    {
      str2 = ServerSetting.getInstance().getSettingUrl(paramContext, 6) + paramString;
      str1 = ServerSetting.getInstance().getSettingUrl(paramContext, 6) + paramString;
    }
    for (;;)
    {
      a(paramString);
      paramBundle = null;
      long l2 = SystemClock.elapsedRealtime();
      int k = 0;
      int i = OpenConfig.a(paramContext, this.a.d()).b("Common_HttpRetryCount");
      Log.d("OpenConfig_test", "config 1:Common_HttpRetryCount            config_value:" + i + "   appid:" + this.a.d() + "     url:" + str1);
      int j = i;
      if (i == 0) {
        j = 3;
      }
      Log.d("OpenConfig_test", "config 1:Common_HttpRetryCount            result_value:" + j + "   appid:" + this.a.d() + "     url:" + str1);
      for (;;)
      {
        int m = k + 1;
        for (;;)
        {
          try
          {
            localStatistic = Util.a(paramContext, str2, localBundle3);
            localObject = Util.d(localStatistic.a);
            paramBundle = (Bundle)localObject;
          }
          catch (HttpStatusException paramString)
          {
            Util.Statistic localStatistic;
            Object localObject;
            long l3;
            long l4;
            long l1;
            Bundle localBundle1;
            Bundle localBundle2;
            paramString.printStackTrace();
            paramBundle = paramString.getMessage();
            try
            {
              i = Integer.parseInt(paramBundle.replace("http status code error:", ""));
              ReportManager.a().a(paramContext, str1, l2, 0L, 0L, i, this.a.d());
              throw paramString;
            }
            catch (Exception paramBundle)
            {
              paramBundle.printStackTrace();
              i = -9;
              continue;
            }
          }
          catch (NetworkUnavailableException paramContext)
          {
            paramContext.printStackTrace();
            throw paramContext;
          }
          catch (MalformedURLException paramString)
          {
            paramString.printStackTrace();
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -3, this.a.d());
            throw paramString;
          }
          catch (IOException paramString)
          {
            paramString.printStackTrace();
            i = a(paramString);
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, i, this.a.d());
            throw paramString;
          }
          catch (JSONException paramString)
          {
            paramString.printStackTrace();
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -4, this.a.d());
            throw paramString;
          }
          catch (SocketTimeoutException localSocketTimeoutException2)
          {
            continue;
          }
          catch (ConnectTimeoutException localConnectTimeoutException2)
          {
            continue;
          }
          try
          {
            if (("oauth2.0/m_me".equals(paramString)) && (paramBundle != null))
            {
              localObject = paramBundle.getString("openid");
              if (localObject != null) {
                this.a.a((String)localObject);
              }
            }
            try
            {
              i = paramBundle.getInt("ret");
              l3 = localStatistic.b;
              l4 = localStatistic.c;
              l1 = l2;
              ReportManager.a().a(paramContext, str1, l1, l3, l4, i, this.a.d());
              return paramBundle;
            }
            catch (JSONException localJSONException)
            {
              i = -4;
            }
          }
          catch (ConnectTimeoutException localConnectTimeoutException1)
          {
            localConnectTimeoutException1.printStackTrace();
            if (m < j)
            {
              l1 = SystemClock.elapsedRealtime();
              i = -7;
              localBundle1 = paramBundle;
              l4 = 0L;
              k = m;
              l2 = l1;
              paramBundle = localBundle1;
              if (m < j) {
                break;
              }
              paramBundle = localBundle1;
              l3 = 0L;
              continue;
            }
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -7, this.a.d());
            throw localBundle1;
          }
          catch (SocketTimeoutException localSocketTimeoutException1)
          {
            localSocketTimeoutException1.printStackTrace();
            if (m < j)
            {
              l1 = SystemClock.elapsedRealtime();
              i = -8;
              localBundle2 = paramBundle;
            }
            else
            {
              ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -8, this.a.d());
              throw localBundle2;
            }
          }
        }
      }
      str1 = paramString;
      str2 = paramString;
    }
  }
  
  public JSONObject a(Context paramContext, String paramString1, Bundle paramBundle, String paramString2)
  {
    WnsClientLog.a("openSDK_LOG", "OpenApi request");
    Bundle localBundle3 = a(paramString1, paramBundle);
    String str2;
    String str1;
    if (!paramString1.toLowerCase().startsWith("http"))
    {
      str2 = ServerSetting.getInstance().getSettingUrl(paramContext, 6) + paramString1;
      str1 = ServerSetting.getInstance().getSettingUrl(paramContext, 6) + paramString1;
    }
    for (;;)
    {
      a(paramString1);
      paramBundle = null;
      long l2 = SystemClock.elapsedRealtime();
      int k = 0;
      int i = OpenConfig.a(paramContext, this.a.d()).b("Common_HttpRetryCount");
      Log.d("OpenConfig_test", "config 1:Common_HttpRetryCount            config_value:" + i + "   appid:" + this.a.d() + "     url:" + str1);
      int j = i;
      if (i == 0) {
        j = 3;
      }
      Log.d("OpenConfig_test", "config 1:Common_HttpRetryCount            result_value:" + j + "   appid:" + this.a.d() + "     url:" + str1);
      for (;;)
      {
        int m = k + 1;
        for (;;)
        {
          try
          {
            localStatistic = Util.a(paramContext, str2, paramString2, localBundle3);
            localObject = Util.d(localStatistic.a);
            paramBundle = (Bundle)localObject;
          }
          catch (HttpStatusException paramString1)
          {
            Util.Statistic localStatistic;
            Object localObject;
            long l3;
            long l4;
            long l1;
            Bundle localBundle1;
            Bundle localBundle2;
            paramString1.printStackTrace();
            paramBundle = paramString1.getMessage();
            try
            {
              i = Integer.parseInt(paramBundle.replace("http status code error:", ""));
              ReportManager.a().a(paramContext, str1, l2, 0L, 0L, i, this.a.d());
              throw paramString1;
            }
            catch (Exception paramBundle)
            {
              paramBundle.printStackTrace();
              i = -9;
              continue;
            }
          }
          catch (NetworkUnavailableException paramContext)
          {
            paramContext.printStackTrace();
            throw paramContext;
          }
          catch (MalformedURLException paramString1)
          {
            paramString1.printStackTrace();
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -3, this.a.d());
            throw paramString1;
          }
          catch (IOException paramString1)
          {
            paramString1.printStackTrace();
            i = a(paramString1);
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, i, this.a.d());
            throw paramString1;
          }
          catch (JSONException paramString1)
          {
            paramString1.printStackTrace();
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -4, this.a.d());
            throw paramString1;
          }
          catch (SocketTimeoutException localSocketTimeoutException2)
          {
            continue;
          }
          catch (ConnectTimeoutException localConnectTimeoutException2)
          {
            continue;
          }
          try
          {
            if (("oauth2.0/m_me".equals(paramString1)) && (paramBundle != null))
            {
              localObject = paramBundle.getString("openid");
              if (localObject != null) {
                this.a.a((String)localObject);
              }
            }
            try
            {
              i = paramBundle.getInt("ret");
              l3 = localStatistic.b;
              l4 = localStatistic.c;
              l1 = l2;
              ReportManager.a().a(paramContext, str1, l1, l3, l4, i, this.a.d());
              return paramBundle;
            }
            catch (JSONException localJSONException)
            {
              i = -4;
            }
          }
          catch (ConnectTimeoutException localConnectTimeoutException1)
          {
            localConnectTimeoutException1.printStackTrace();
            if (m < j)
            {
              l1 = SystemClock.elapsedRealtime();
              i = -7;
              localBundle1 = paramBundle;
              l4 = 0L;
              k = m;
              l2 = l1;
              paramBundle = localBundle1;
              if (m < j) {
                break;
              }
              paramBundle = localBundle1;
              l3 = 0L;
              continue;
            }
            ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -7, this.a.d());
            throw localBundle1;
          }
          catch (SocketTimeoutException localSocketTimeoutException1)
          {
            localSocketTimeoutException1.printStackTrace();
            if (m < j)
            {
              l1 = SystemClock.elapsedRealtime();
              i = -8;
              localBundle2 = paramBundle;
            }
            else
            {
              ReportManager.a().a(paramContext, str1, l2, 0L, 0L, -8, this.a.d());
              throw localBundle2;
            }
          }
        }
      }
      str1 = paramString1;
      str2 = paramString1;
    }
  }
  
  public void a(Context paramContext, String paramString1, Bundle paramBundle, String paramString2, IRequestListener paramIRequestListener, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync");
    new p(this, paramContext, paramString1, paramBundle, paramString2, paramIRequestListener, paramObject).start();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\OpenApi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */