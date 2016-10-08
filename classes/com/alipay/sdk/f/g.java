package com.alipay.sdk.f;

import android.text.TextUtils;
import com.alipay.sdk.b.e;
import org.json.JSONObject;

public final class g
  extends h
{
  private int e;
  private boolean f = false;
  
  protected g(e parame, com.alipay.sdk.b.f paramf)
  {
    super(parame, paramf);
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    int i = 0;
    super.a(paramJSONObject);
    if (paramJSONObject.has("form"))
    {
      paramJSONObject = paramJSONObject.optJSONObject("form");
      String str = paramJSONObject.optString("type");
      this.d = Boolean.parseBoolean(paramJSONObject.optString("oneTime"));
      if (TextUtils.equals("page", str))
      {
        this.f = true;
        this.e = 9;
      }
      do
      {
        for (;;)
        {
          return;
          if (TextUtils.equals("dialog", str))
          {
            this.e = 7;
            this.f = false;
            return;
          }
          if (!TextUtils.equals("toast", str)) {
            break;
          }
          paramJSONObject = b.a(paramJSONObject, "onload");
          this.e = 6;
          if (paramJSONObject != null)
          {
            paramJSONObject = a.a(paramJSONObject);
            int j = paramJSONObject.length;
            while (i < j)
            {
              str = paramJSONObject[i];
              if ((str == a.d) || (str == a.e)) {
                this.e = 10;
              }
              i += 1;
            }
          }
        }
      } while (TextUtils.equals("confirm", str));
      this.f = TextUtils.equals(str, "fullscreen");
      this.e = 4;
      return;
    }
    if (f.a(paramJSONObject.optString("status")) == f.c)
    {
      this.e = -10;
      return;
    }
    this.e = 8;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\f\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */