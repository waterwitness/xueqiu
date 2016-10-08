package com.alipay.sdk.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.i.h;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

public final class b
{
  public static e a(c paramc, String paramString, JSONObject paramJSONObject)
  {
    com.alipay.sdk.g.a locala = com.alipay.sdk.g.a.a();
    com.alipay.sdk.h.b localb = com.alipay.sdk.h.b.a();
    JSONObject localJSONObject = com.alipay.sdk.i.c.a(null, paramJSONObject);
    try
    {
      localJSONObject.put("tid", localb.a);
      locald = locala.b;
      localContext = com.alipay.sdk.g.a.a().a;
      localObject3 = com.alipay.sdk.i.b.a(localContext);
      if (TextUtils.isEmpty(locald.a))
      {
        paramJSONObject = h.a();
        localObject1 = h.b();
        localObject2 = h.c(localContext);
        str1 = com.alipay.sdk.a.a.a;
        str1 = str1.substring(0, str1.indexOf("://"));
        str2 = h.d(localContext);
        str3 = Float.toString(new TextView(localContext).getTextSize());
        locald.a = ("Msp/9.2.1" + " (" + paramJSONObject + ";" + (String)localObject1 + ";" + (String)localObject2 + ";" + str1 + ";" + str2 + ";" + str3);
      }
      str1 = com.alipay.sdk.i.b.b(localContext).p;
      str2 = h.e(localContext);
      str3 = ((com.alipay.sdk.i.b)localObject3).a();
      str4 = ((com.alipay.sdk.i.b)localObject3).b();
      localObject4 = com.alipay.sdk.g.a.a().a;
      localObject2 = ((Context)localObject4).getSharedPreferences("virtualImeiAndImsi", 0);
      paramJSONObject = ((SharedPreferences)localObject2).getString("virtual_imsi", null);
      localObject1 = paramJSONObject;
      if (TextUtils.isEmpty(paramJSONObject))
      {
        if (!TextUtils.isEmpty(com.alipay.sdk.h.b.a().a)) {
          break label923;
        }
        paramJSONObject = com.alipay.sdk.g.a.a().c();
        if (!TextUtils.isEmpty(paramJSONObject)) {
          break label912;
        }
        paramJSONObject = d.b();
        ((SharedPreferences)localObject2).edit().putString("virtual_imsi", paramJSONObject).commit();
        localObject1 = paramJSONObject;
      }
      localObject5 = com.alipay.sdk.g.a.a().a;
      localObject4 = ((Context)localObject5).getSharedPreferences("virtualImeiAndImsi", 0);
      localObject2 = ((SharedPreferences)localObject4).getString("virtual_imei", null);
      paramJSONObject = (JSONObject)localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        if (!TextUtils.isEmpty(com.alipay.sdk.h.b.a().a)) {
          break label935;
        }
        paramJSONObject = d.b();
        label379:
        ((SharedPreferences)localObject4).edit().putString("virtual_imei", paramJSONObject).commit();
      }
      if (localb != null) {
        locald.c = localb.b;
      }
      localObject4 = Build.MANUFACTURER.replace(";", " ");
      localObject5 = Build.MODEL.replace(";", " ");
      bool = com.alipay.sdk.g.a.b();
      str5 = ((com.alipay.sdk.i.b)localObject3).a;
      localObject2 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
      if (localObject2 == null) {
        break label959;
      }
      localObject2 = ((WifiInfo)localObject2).getSSID();
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        d locald;
        Context localContext;
        Object localObject3;
        Object localObject1;
        String str1;
        String str2;
        String str3;
        String str4;
        Object localObject4;
        Object localObject5;
        boolean bool;
        String str5;
        label912:
        label923:
        label935:
        continue;
        Object localObject2 = "-1";
      }
    }
    localObject3 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
    if (localObject3 != null) {}
    for (localObject3 = ((WifiInfo)localObject3).getBSSID();; localObject3 = "00")
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(locald.a).append(";").append(str1).append(";").append(str2).append(";").append("1").append(";").append(str3).append(";").append(str4).append(";").append(locald.c).append(";").append((String)localObject4).append(";").append((String)localObject5).append(";").append(bool).append(";").append(str5).append(";").append(com.alipay.sdk.g.b.a()).append(";").append(locald.b).append(";").append((String)localObject1).append(";").append(paramJSONObject).append(";").append((String)localObject2).append(";").append((String)localObject3);
      if (localb != null)
      {
        paramJSONObject = new HashMap();
        paramJSONObject.put("tid", localb.a);
        paramJSONObject.put("utdid", com.alipay.sdk.g.a.a().c());
        paramJSONObject = com.alipay.a.b.a.a(localContext, paramJSONObject);
        if (!TextUtils.isEmpty(paramJSONObject)) {
          localStringBuilder.append(";").append(paramJSONObject);
        }
      }
      localStringBuilder.append(")");
      localJSONObject.put("user_agent", localStringBuilder.toString());
      localJSONObject.put("has_alipay", h.b(locala.a));
      localJSONObject.put("has_msp_app", h.a(locala.a));
      localJSONObject.put("external_info", paramString);
      localJSONObject.put("app_key", "2014052600006128");
      localJSONObject.put("utdid", locala.c());
      localJSONObject.put("new_client_key", localb.b);
      paramJSONObject = new a();
      paramJSONObject.a = com.alipay.sdk.a.a.a;
      paramJSONObject.b = "com.alipay.mobilecashier";
      paramJSONObject.c = "/cashier/main";
      paramJSONObject.d = "4.0.2";
      paramJSONObject = new e(paramJSONObject, localJSONObject);
      paramJSONObject.d = true;
      a(paramc, paramJSONObject, paramString);
      return paramJSONObject;
      paramJSONObject = paramJSONObject.substring(3, 18);
      break;
      paramJSONObject = com.alipay.sdk.i.b.a((Context)localObject4).a();
      break;
      paramJSONObject = com.alipay.sdk.i.b.a((Context)localObject5).b();
      break label379;
    }
  }
  
  private static String a(String paramString)
  {
    Object localObject = paramString.split("=");
    paramString = null;
    if (localObject.length > 1)
    {
      localObject = localObject[1];
      paramString = (String)localObject;
      if (((String)localObject).contains("\"")) {
        paramString = ((String)localObject).replaceAll("\"", "");
      }
    }
    return paramString;
  }
  
  private static void a(c paramc, e parame, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    label81:
    label105:
    label142:
    label200:
    label209:
    label219:
    do
    {
      String[] arrayOfString;
      do
      {
        return;
        arrayOfString = paramString.split("&");
      } while (arrayOfString.length == 0);
      int j = arrayOfString.length;
      int i = 0;
      Object localObject4 = null;
      Object localObject3 = null;
      Object localObject5 = null;
      Object localObject6 = null;
      if (i < j)
      {
        String str = arrayOfString[i];
        paramString = (String)localObject6;
        Object localObject2;
        if (TextUtils.isEmpty((CharSequence)localObject6))
        {
          if (!str.contains("biz_type")) {
            paramString = null;
          }
        }
        else
        {
          localObject1 = localObject5;
          if (TextUtils.isEmpty((CharSequence)localObject5))
          {
            if (str.contains("biz_no")) {
              break label200;
            }
            localObject1 = null;
          }
          localObject2 = localObject3;
          if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            if ((str.contains("trade_no")) && (!str.startsWith("out_trade_no"))) {
              break label209;
            }
            localObject2 = null;
          }
          localObject3 = localObject4;
          if (TextUtils.isEmpty((CharSequence)localObject4)) {
            if (str.contains("app_userid")) {
              break label219;
            }
          }
        }
        for (localObject3 = null;; localObject3 = a(str))
        {
          i += 1;
          localObject4 = localObject3;
          localObject6 = paramString;
          localObject5 = localObject1;
          localObject3 = localObject2;
          break;
          paramString = a(str);
          break label81;
          localObject1 = a(str);
          break label105;
          localObject2 = a(str);
          break label142;
        }
      }
      paramString = new StringBuilder();
      if (!TextUtils.isEmpty((CharSequence)localObject6)) {
        paramString.append("biz_type=" + (String)localObject6 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject5)) {
        paramString.append("biz_no=" + (String)localObject5 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject3)) {
        paramString.append("trade_no=" + (String)localObject3 + ";");
      }
      if (!TextUtils.isEmpty((CharSequence)localObject4)) {
        paramString.append("app_userid=" + (String)localObject4 + ";");
      }
    } while (paramString.length() == 0);
    Object localObject1 = paramString.toString();
    paramString = (String)localObject1;
    if (((String)localObject1).endsWith(";")) {
      paramString = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
    }
    paramc.a = new Header[] { new BasicHeader("Msp-Param", paramString) };
    parame.b = new WeakReference(paramc);
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    try
    {
      ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
      localObject1 = localObject2;
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
      localObject1 = localObject2;
      paramArrayOfByte = new byte['က'];
      localObject1 = localObject2;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      for (;;)
      {
        localObject1 = localObject2;
        int i = localGZIPInputStream.read(paramArrayOfByte, 0, 4096);
        if (i == -1) {
          break;
        }
        localObject1 = localObject2;
        localByteArrayOutputStream.write(paramArrayOfByte, 0, i);
      }
      localObject1 = localObject2;
      paramArrayOfByte = localByteArrayOutputStream.toByteArray();
      localObject1 = paramArrayOfByte;
      localByteArrayOutputStream.flush();
      localObject1 = paramArrayOfByte;
      localByteArrayOutputStream.close();
      localObject1 = paramArrayOfByte;
      localGZIPInputStream.close();
      localObject1 = paramArrayOfByte;
      localByteArrayInputStream.close();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte) {}
    return (byte[])localObject1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */