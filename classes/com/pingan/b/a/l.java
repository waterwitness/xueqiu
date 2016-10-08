package com.pingan.b.a;

import android.os.Looper;
import android.os.Message;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.ResponseHandlerInterface;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.NoHttpResponseException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public final class l
  extends AsyncHttpResponseHandler
{
  private String a;
  private j b;
  private e c;
  private long d;
  private String e = null;
  private int f = -1;
  private String g = null;
  private volatile long h = 0L;
  
  public l(String paramString, e parame, j paramj)
  {
    super(Looper.getMainLooper());
    try
    {
      paramString = new URI(paramString);
      this.a = paramString.getHost();
      this.f = paramString.getPort();
      this.g = paramString.getPath();
      this.c = parame;
      this.b = paramj;
      return;
    }
    catch (URISyntaxException paramString)
    {
      for (;;)
      {
        this.a = "N/A";
        paramString.printStackTrace();
      }
    }
  }
  
  private static m a(int paramInt1, Header[] paramArrayOfHeader, byte[] paramArrayOfByte, String paramString1, String paramString2, String paramString3, int paramInt2, double paramDouble, long paramLong, Throwable paramThrowable)
  {
    if ((paramThrowable != null) && ((paramThrowable instanceof d))) {
      return m.a();
    }
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject3 = null;
    int i;
    if (paramArrayOfHeader != null)
    {
      int j = paramArrayOfHeader.length;
      localObject3 = null;
      localObject2 = null;
      i = 0;
      localObject1 = null;
      if (i < j)
      {
        Header localHeader = paramArrayOfHeader[i];
        Object localObject5;
        if ("X-Reqid".equals(localHeader.getName()))
        {
          localObject5 = localHeader.getValue();
          localObject4 = localObject3;
        }
        for (;;)
        {
          i += 1;
          localObject3 = localObject4;
          localObject2 = localObject5;
          break;
          if ("X-Log".equals(localHeader.getName()))
          {
            localObject4 = localHeader.getValue();
            localObject5 = localObject2;
          }
          else if ("X-Via".equals(localHeader.getName()))
          {
            localObject1 = localHeader.getValue();
            localObject4 = localObject3;
            localObject5 = localObject2;
          }
          else if ("X-Px".equals(localHeader.getName()))
          {
            localObject1 = localHeader.getValue();
            localObject4 = localObject3;
            localObject5 = localObject2;
          }
          else
          {
            localObject4 = localObject3;
            localObject5 = localObject2;
            if ("Fw-Via".equals(localHeader.getName()))
            {
              localObject1 = localHeader.getValue();
              localObject4 = localObject3;
              localObject5 = localObject2;
            }
          }
        }
      }
      paramArrayOfHeader = (Header[])localObject3;
      Object localObject4 = localObject2;
      localObject3 = localObject1;
      localObject2 = paramArrayOfHeader;
      localObject1 = localObject4;
    }
    if (paramInt1 != 200) {
      if (paramArrayOfByte == null) {}
    }
    for (;;)
    {
      try
      {
        paramArrayOfHeader = new String(paramArrayOfByte, "utf-8");
      }
      catch (JSONException paramArrayOfByte)
      {
        paramArrayOfHeader = null;
        paramArrayOfByte.printStackTrace();
        continue;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        paramArrayOfHeader = null;
      }
      try
      {
        paramArrayOfByte = new JSONObject(paramArrayOfHeader).optString("error", paramArrayOfHeader);
        paramArrayOfHeader = paramArrayOfByte;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        for (;;) {}
      }
      catch (JSONException paramArrayOfByte)
      {
        continue;
        continue;
        label504:
        continue;
      }
      if (paramInt1 == 0)
      {
        i = -1;
        paramArrayOfByte = paramThrowable.getMessage();
        paramInt1 = i;
        if ((paramThrowable instanceof IOException))
        {
          if ((paramArrayOfByte != null) && (paramArrayOfByte.indexOf("UnknownHostException") == 0)) {
            paramInt1 = 64533;
          }
        }
        else
        {
          return new m(paramInt1, (String)localObject1, (String)localObject2, (String)localObject3, paramString1, paramString2, paramString3, paramInt2, paramDouble, paramLong, paramArrayOfHeader);
          paramArrayOfByte.printStackTrace();
          continue;
          if (paramThrowable == null) {
            break label507;
          }
          paramArrayOfHeader = paramThrowable.getMessage();
          if (paramArrayOfHeader != null) {
            break label504;
          }
          paramArrayOfHeader = paramThrowable.toString();
          continue;
        }
        if ((paramArrayOfByte != null) && (paramArrayOfByte.indexOf("Broken pipe") == 0))
        {
          paramInt1 = 64531;
          continue;
        }
        if ((paramThrowable instanceof NoHttpResponseException))
        {
          paramInt1 = 64531;
          continue;
        }
        if ((paramThrowable instanceof SocketTimeoutException))
        {
          paramInt1 = 64535;
          continue;
        }
        if (!(paramThrowable instanceof ConnectTimeoutException))
        {
          paramInt1 = i;
          if (!(paramThrowable instanceof SocketException)) {
            continue;
          }
        }
        paramInt1 = 64532;
        continue;
      }
      label507:
      paramArrayOfHeader = null;
    }
  }
  
  public final void onFailure(int paramInt, Header[] paramArrayOfHeader, byte[] paramArrayOfByte, Throwable paramThrowable)
  {
    double d1 = (System.currentTimeMillis() - this.d) / 1000.0D;
    paramArrayOfHeader = a(paramInt, paramArrayOfHeader, paramArrayOfByte, this.a, this.g, this.e, this.f, d1, this.h, paramThrowable);
    this.c.a(paramArrayOfHeader, null);
  }
  
  public final void onPostProcessResponse(ResponseHandlerInterface paramResponseHandlerInterface, HttpResponse paramHttpResponse) {}
  
  public final void onProgress(int paramInt1, int paramInt2)
  {
    this.h += paramInt1;
    if (this.b != null) {
      this.b.a(paramInt1, paramInt2);
    }
  }
  
  public final void onStart()
  {
    this.d = System.currentTimeMillis();
    super.onStart();
  }
  
  public final void onSuccess(int paramInt, Header[] paramArrayOfHeader, byte[] paramArrayOfByte)
  {
    double d1 = (System.currentTimeMillis() - this.d) / 1000.0D;
    Throwable localThrowable = null;
    try
    {
      paramArrayOfByte = new JSONObject(new String(paramArrayOfByte, "utf-8"));
      paramArrayOfHeader = a(paramInt, paramArrayOfHeader, null, this.a, this.g, this.e, this.f, d1, this.h, localThrowable);
      this.c.a(paramArrayOfHeader, paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        paramArrayOfByte = null;
      }
    }
  }
  
  protected final void sendMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    }
    for (;;)
    {
      super.sendMessage(paramMessage);
      return;
      this.e = ((String)a.a.get());
      a.a.remove();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */