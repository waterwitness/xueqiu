package com.flurry.sdk;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class is
  implements lb<hs>
{
  private static final String a = is.class.getSimpleName();
  
  private void a(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    if (paramJSONObject == null) {
      throw new IOException("Null Json object");
    }
    if (paramString2 != null)
    {
      paramJSONObject.put(paramString1, paramString2);
      return;
    }
    paramJSONObject.put(paramString1, JSONObject.NULL);
  }
  
  public hs a(InputStream paramInputStream)
  {
    throw new IOException("Deserialize not supported for request");
  }
  
  public void a(OutputStream paramOutputStream, hs paramhs)
  {
    if ((paramOutputStream == null) || (paramhs == null)) {
      return;
    }
    DataOutputStream local1 = new DataOutputStream(paramOutputStream)
    {
      public void close() {}
    };
    JSONObject localJSONObject1 = new JSONObject();
    for (;;)
    {
      Object localObject;
      try
      {
        a(localJSONObject1, "project_key", paramhs.a);
        a(localJSONObject1, "bundle_id", paramhs.b);
        a(localJSONObject1, "app_version", paramhs.c);
        localJSONObject1.put("sdk_version", paramhs.d);
        localJSONObject1.put("platform", paramhs.e);
        a(localJSONObject1, "platform_version", paramhs.f);
        localJSONObject1.put("limit_ad_tracking", paramhs.g);
        if ((paramhs.h == null) || (paramhs.h.a == null)) {
          break label642;
        }
        paramOutputStream = new JSONObject();
        localObject = new JSONObject();
        a((JSONObject)localObject, "model", paramhs.h.a.a);
        a((JSONObject)localObject, "brand", paramhs.h.a.b);
        a((JSONObject)localObject, "id", paramhs.h.a.c);
        a((JSONObject)localObject, "device", paramhs.h.a.d);
        a((JSONObject)localObject, "product", paramhs.h.a.e);
        a((JSONObject)localObject, "version_release", paramhs.h.a.f);
        paramOutputStream.put("com.flurry.proton.generated.avro.v2.AndroidTags", localObject);
        if (paramOutputStream != null)
        {
          localJSONObject1.put("device_tags", paramOutputStream);
          paramOutputStream = new JSONArray();
          localObject = paramhs.i.iterator();
          if (!((Iterator)localObject).hasNext()) {
            break label395;
          }
          hu localhu = (hu)((Iterator)localObject).next();
          JSONObject localJSONObject2 = new JSONObject();
          localJSONObject2.put("type", localhu.a);
          a(localJSONObject2, "id", localhu.b);
          paramOutputStream.put(localJSONObject2);
          continue;
        }
        localJSONObject1.put("device_tags", JSONObject.NULL);
      }
      catch (JSONException paramOutputStream)
      {
        throw new IOException("Invalid Json", paramOutputStream);
      }
      finally
      {
        local1.close();
      }
      continue;
      label395:
      localJSONObject1.put("device_ids", paramOutputStream);
      if ((paramhs.j != null) && (paramhs.j.a != null))
      {
        paramOutputStream = new JSONObject();
        localObject = new JSONObject();
        ((JSONObject)localObject).putOpt("latitude", Double.valueOf(paramhs.j.a.a));
        ((JSONObject)localObject).putOpt("longitude", Double.valueOf(paramhs.j.a.b));
        ((JSONObject)localObject).putOpt("accuracy", Float.valueOf(paramhs.j.a.c));
        paramOutputStream.put("com.flurry.proton.generated.avro.v2.Geolocation", localObject);
      }
      for (;;)
      {
        if (paramOutputStream != null)
        {
          localJSONObject1.put("geo", paramOutputStream);
          paramOutputStream = new JSONObject();
          if (paramhs.k == null) {
            break label623;
          }
          a(paramOutputStream, "string", paramhs.k.a);
          localJSONObject1.put("publisher_user_id", paramOutputStream);
        }
        for (;;)
        {
          kg.a(5, a, "Proton Request String: " + localJSONObject1.toString());
          local1.write(localJSONObject1.toString().getBytes());
          local1.flush();
          local1.close();
          return;
          localJSONObject1.put("geo", JSONObject.NULL);
          break;
          label623:
          localJSONObject1.put("publisher_user_id", JSONObject.NULL);
        }
        paramOutputStream = null;
      }
      label642:
      paramOutputStream = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\is.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */