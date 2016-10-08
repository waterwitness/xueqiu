package com.alipay.sdk.e;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.b.f;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.Calendar;
import java.util.Random;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
{
  private int a = 0;
  private com.alipay.sdk.b.c b;
  
  public d() {}
  
  public d(com.alipay.sdk.b.c paramc)
  {
    this.b = paramc;
  }
  
  private String a(Context paramContext, String paramString1, String paramString2, com.alipay.sdk.b.c paramc, f paramf)
  {
    for (;;)
    {
      try
      {
        if (c.a == null)
        {
          c.a = new a(paramContext, paramString1);
          if (paramc != null)
          {
            paramContext = c.a.a(paramString2, paramc);
            paramString1 = paramContext.getStatusLine();
            paramf.a = paramString1.getStatusCode();
            paramf.b = paramString1.getReasonPhrase();
            paramString1 = this.b;
            paramString2 = paramContext.getHeaders("Msp-Param");
            if ((paramString1 != null) && (paramString2.length > 0)) {
              paramString1.a = paramString2;
            }
            paramContext = c.a(paramContext);
            return paramContext;
          }
        }
        else
        {
          if (TextUtils.equals(paramString1, c.a.a)) {
            continue;
          }
          c.a.a = paramString1;
          continue;
        }
        paramContext = c.a.a(paramString2, null);
      }
      catch (Exception paramContext)
      {
        throw new com.alipay.sdk.d.a();
      }
      finally
      {
        c.a = null;
      }
    }
  }
  
  private JSONObject a(Context paramContext, com.alipay.sdk.b.e parame, f paramf)
  {
    int i = 0;
    Object localObject1 = new Random();
    Object localObject2 = new StringBuffer();
    if (i < 24)
    {
      switch (((Random)localObject1).nextInt(3))
      {
      }
      for (;;)
      {
        i += 1;
        break;
        ((StringBuffer)localObject2).append(String.valueOf((char)(int)Math.round(Math.random() * 25.0D + 65.0D)));
        continue;
        ((StringBuffer)localObject2).append(String.valueOf((char)(int)Math.round(Math.random() * 25.0D + 97.0D)));
        continue;
        ((StringBuffer)localObject2).append(String.valueOf(new Random().nextInt(10)));
      }
    }
    localObject1 = ((StringBuffer)localObject2).toString();
    try
    {
      localObject2 = a(paramContext, parame.a.a, parame.a((String)localObject1).toString(), (com.alipay.sdk.b.c)parame.b.get(), paramf);
      paramf.c = Calendar.getInstance().getTimeInMillis();
      if (parame.c)
      {
        localObject2 = a((String)localObject2, paramf);
        if ((paramf.a == 1000) && (this.a < 3))
        {
          this.a += 1;
          return a(paramContext, parame, paramf);
        }
        this.a = 0;
        paramContext = new JSONObject(com.alipay.sdk.c.e.b((String)localObject1, ((JSONObject)localObject2).optString("res_data")));
        return paramContext;
      }
    }
    catch (com.alipay.sdk.d.a paramContext)
    {
      throw paramContext;
      paramContext = a((String)localObject2, paramf);
      new StringBuilder("respData:").append(paramContext.toString());
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new com.alipay.sdk.d.a();
    }
  }
  
  private static JSONObject a(String paramString, f paramf)
  {
    paramString = new JSONObject(paramString).optJSONObject("data");
    if (paramString != null)
    {
      paramf.a = paramString.optInt("code", 503);
      paramf.b = paramString.optString("error_msg", "");
      paramString = paramString.optJSONObject("params");
      if (paramString != null)
      {
        if (paramf.a == 1000)
        {
          localObject = paramString.optString("public_key");
          if (!TextUtils.isEmpty((CharSequence)localObject)) {
            com.alipay.sdk.g.a.a().b.a((String)localObject);
          }
        }
        Object localObject = new com.alipay.sdk.b.a();
        ((com.alipay.sdk.b.a)localObject).c = paramString.optString("next_api_name");
        ((com.alipay.sdk.b.a)localObject).d = paramString.optString("next_api_version");
        ((com.alipay.sdk.b.a)localObject).b = paramString.optString("next_namespace");
        ((com.alipay.sdk.b.a)localObject).a = paramString.optString("next_request_url");
        paramf.j = ((com.alipay.sdk.b.a)localObject);
        return paramString;
      }
    }
    else
    {
      paramf.a = 503;
      paramf.b = "";
    }
    return null;
  }
  
  public final com.alipay.sdk.f.c a(Context paramContext, com.alipay.sdk.b.e parame)
  {
    Object localObject1 = new f();
    Object localObject2 = a(paramContext, parame, (f)localObject1);
    if (((JSONObject)localObject2).optBoolean("gzip"))
    {
      paramContext = ((JSONObject)localObject2).optJSONObject("form");
      if ((paramContext != null) && (paramContext.has("quickpay"))) {
        paramContext = com.alipay.sdk.c.a.a(paramContext.optString("quickpay"));
      }
    }
    try
    {
      paramContext = com.alipay.sdk.b.b.a(paramContext);
      if (TextUtils.equals(com.alipay.sdk.c.c.a(paramContext), ((JSONObject)localObject2).optString("md5"))) {
        ((JSONObject)localObject2).put("form", new JSONObject(new String(paramContext, "utf-8")));
      }
      new StringBuilder("responsestring decoded ").append(localObject2);
      paramContext = new com.alipay.sdk.f.c(parame, (f)localObject1);
      paramContext.a((JSONObject)localObject2);
      new com.alipay.sdk.f.d();
      parame = com.alipay.sdk.f.d.a(paramContext);
      if (parame == null)
      {
        localObject2 = paramContext.b;
        JSONObject localJSONObject = paramContext.c;
        parame = paramContext.a.a;
        localObject1 = paramContext.b.j;
        if (TextUtils.isEmpty(((com.alipay.sdk.b.a)localObject1).c)) {
          ((com.alipay.sdk.b.a)localObject1).c = parame.c;
        }
        if (TextUtils.isEmpty(((com.alipay.sdk.b.a)localObject1).d)) {
          ((com.alipay.sdk.b.a)localObject1).d = parame.d;
        }
        if (TextUtils.isEmpty(((com.alipay.sdk.b.a)localObject1).b)) {
          ((com.alipay.sdk.b.a)localObject1).b = parame.b;
        }
        if (TextUtils.isEmpty(((com.alipay.sdk.b.a)localObject1).a)) {
          ((com.alipay.sdk.b.a)localObject1).a = parame.a;
        }
        parame = localJSONObject.optJSONObject("reflected_data");
        if (parame != null)
        {
          new StringBuilder("session = ").append(parame.optString("session", ""));
          paramContext.b.g = parame;
        }
        for (;;)
        {
          ((f)localObject2).d = localJSONObject.optString("end_code", "0");
          ((f)localObject2).h = localJSONObject.optString("user_id", "");
          parame = localJSONObject.optString("result");
          try
          {
            localObject1 = URLDecoder.decode(localJSONObject.optString("result"), "UTF-8");
            parame = (com.alipay.sdk.b.e)localObject1;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            for (;;) {}
          }
          ((f)localObject2).e = parame;
          ((f)localObject2).f = localJSONObject.optString("memo", "");
          return paramContext;
          ((f)localObject1).i = false;
          break;
          if (localJSONObject.has("session"))
          {
            parame = new JSONObject();
            try
            {
              parame.put("session", localJSONObject.optString("session"));
              localObject1 = com.alipay.sdk.h.b.a().a;
              if (!TextUtils.isEmpty((CharSequence)localObject1)) {
                parame.put("tid", localObject1);
              }
              ((f)localObject2).g = parame;
            }
            catch (JSONException parame) {}
          }
        }
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        continue;
        paramContext = parame;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\e\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */