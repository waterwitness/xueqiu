package com.xueqiu.android.common;

import android.graphics.BitmapFactory;
import android.webkit.JavascriptInterface;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.an;

final class ab
{
  ab(WebViewActivity paramWebViewActivity) {}
  
  @JavascriptInterface
  public final void share(String paramString)
  {
    for (;;)
    {
      an localan;
      try
      {
        JsonObject localJsonObject = (JsonObject)m.a().fromJson(paramString, JsonObject.class);
        localan = new an();
        if (localJsonObject.has("title")) {
          localan.b = localJsonObject.get("title").getAsString();
        }
        if (localJsonObject.has("img"))
        {
          localan.e = localJsonObject.get("img").getAsString();
          paramString = "";
          if (localJsonObject.has("url"))
          {
            paramString = localJsonObject.get("url").getAsString();
            localan.d = paramString;
          }
          if (localJsonObject.has("description")) {
            localan.c = (localJsonObject.get("description").getAsString() + paramString);
          }
          if (!localJsonObject.has("target")) {
            break label247;
          }
          paramString = localJsonObject.get("target").getAsString();
          if (paramString.equals("SinaWeibo")) {
            aj.e(this.a, localan);
          }
        }
        else
        {
          localan.f = BitmapFactory.decodeResource(this.a.getResources(), 2130837614);
          continue;
        }
        if (!paramString.equals("FriendCircle")) {
          break label211;
        }
      }
      catch (Exception paramString)
      {
        aa.a(paramString);
        return;
      }
      aj.c(this.a, localan);
      return;
      label211:
      if (paramString.equals("Wechat"))
      {
        aj.b(this.a, localan);
        return;
      }
      if (!paramString.equals("QQ")) {
        break;
      }
      aj.d(this.a, localan);
      return;
      label247:
      paramString = "";
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */