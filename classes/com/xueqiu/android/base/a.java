package com.xueqiu.android.base;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.android.volley.y;
import com.d.a.b.f;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import pl.droidsonroids.gif.GifImageView;

public class a
{
  static final String a = a.class.getSimpleName();
  private static a c;
  public JsonObject b = g();
  private List<String> d = new ArrayList();
  
  private a()
  {
    this.d.add("0x09");
    this.d.add("0x14");
    this.d.add("0x11");
    this.d.add("0x15");
    this.d.add("0x16");
    this.d.add("0x17");
    this.d.add("0x18");
    this.d.add("0x19");
  }
  
  public static View a(String paramString, Context paramContext)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramContext == null)) {
      return null;
    }
    File localFile = f.a().d().a(paramString);
    if (localFile == null) {
      return null;
    }
    paramContext = (RelativeLayout)LayoutInflater.from(paramContext).inflate(2130903587, null, false);
    GifImageView localGifImageView = (GifImageView)paramContext.findViewById(2131625844);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    long l1 = localOptions.outHeight * localOptions.outHeight * 4;
    long l2 = ((float)(Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())) * 0.7F);
    int i = 0;
    if (l1 > l2)
    {
      Runtime.getRuntime().gc();
      localOptions.inSampleSize = 2;
      i = 1;
    }
    localOptions.inJustDecodeBounds = false;
    if ((i == 0) && ((paramString.endsWith(".gif")) || (paramString.endsWith(".GIF")))) {
      try
      {
        paramString = new pl.droidsonroids.gif.b(localFile);
        localGifImageView.setImageDrawable(paramString);
        return paramContext;
      }
      catch (IOException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
          paramString = null;
        }
      }
    }
    localGifImageView.setImageBitmap(BitmapFactory.decodeFile(localFile.getAbsolutePath(), localOptions));
    return paramContext;
  }
  
  public static a a()
  {
    try
    {
      if (c == null) {
        c = new a();
      }
      a locala = c;
      return locala;
    }
    finally {}
  }
  
  public static String a(String paramString)
  {
    b.a();
    if (b.i()) {
      if ("index".equals(paramString)) {
        paramString = "0x14";
      }
    }
    for (;;)
    {
      b.a();
      Object localObject = DefaultPrefs.getString("ad_pull_down", "{}", b.d());
      localObject = (JsonObject)m.a().fromJson((String)localObject, JsonObject.class);
      if (localObject == null) {}
      while (!((JsonObject)localObject).has(paramString))
      {
        return null;
        if ("portfolio".equals(paramString))
        {
          paramString = "0x17";
          break;
        }
        if ("timeline".equals(paramString))
        {
          paramString = "0x15";
          break;
        }
        if (!"quote".equals(paramString)) {
          break label217;
        }
        paramString = "0x19";
        break;
        if ("index".equals(paramString))
        {
          paramString = "0x09";
          break;
        }
        if ("portfolio".equals(paramString))
        {
          paramString = "0x16";
          break;
        }
        if ("timeline".equals(paramString))
        {
          paramString = "0x11";
          break;
        }
        if (!"quote".equals(paramString)) {
          break label217;
        }
        paramString = "0x18";
        break;
      }
      paramString = ((JsonObject)localObject).getAsJsonObject(paramString).get("ads").getAsJsonArray();
      if ((paramString != null) && (paramString.size() > 0)) {}
      for (paramString = (JsonObject)paramString.get(0);; paramString = null) {
        return com.xueqiu.android.base.util.r.a(paramString, "image", null);
      }
      label217:
      paramString = null;
    }
  }
  
  public static JsonObject c()
  {
    b.a();
    String str = DefaultPrefs.getString("ad_launch_json", "{}", b.d());
    return (JsonObject)m.a().fromJson(str, JsonObject.class);
  }
  
  private static void d(String paramString)
  {
    Intent localIntent = new Intent("action_pull_down_ad_synced");
    localIntent.putExtra("extra_page_id", paramString);
    b.a();
    android.support.v4.content.r.a(b.d()).a(localIntent);
  }
  
  public static boolean d()
  {
    b.a();
    Object localObject = DefaultPrefs.getString("ad_launch_json", "{}", b.d());
    localObject = (JsonObject)m.a().fromJson((String)localObject, JsonObject.class);
    String str = h.a(System.currentTimeMillis());
    if ((localObject == null) || (!((JsonObject)localObject).has(str))) {
      return false;
    }
    localObject = ((JsonObject)localObject).get(str).getAsJsonArray();
    if ((localObject == null) || (((JsonArray)localObject).size() == 0)) {
      return false;
    }
    localObject = ((JsonArray)localObject).get(0).getAsJsonObject();
    b.a();
    localObject = b.j().d().a(((JsonObject)localObject).get("image").getAsString());
    return (localObject != null) && (((File)localObject).exists());
  }
  
  private static String e(String paramString)
  {
    String str = null;
    if (("0x09".equals(paramString)) || ("0x14".equals(paramString))) {
      str = "index";
    }
    do
    {
      return str;
      if (("0x16".equals(paramString)) || ("0x17".equals(paramString))) {
        return "portfolio";
      }
      if (("0x11".equals(paramString)) || ("0x15".equals(paramString))) {
        return "timeline";
      }
    } while ((!"0x18".equals(paramString)) && (!"0x19".equals(paramString)));
    return "quote";
  }
  
  public static JsonObject g()
  {
    b.a();
    String str = DefaultPrefs.getString("general_notice_json", "{}", b.d());
    return (JsonObject)m.a().fromJson(str, JsonObject.class);
  }
  
  public static boolean h()
  {
    b.a();
    Object localObject = DefaultPrefs.getString("ad_search_banner_json", "{}", b.d());
    localObject = (JsonObject)m.a().fromJson((String)localObject, JsonObject.class);
    if (localObject == null) {
      return false;
    }
    localObject = com.xueqiu.android.base.util.r.a((JsonObject)localObject, "image", null);
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return false;
    }
    b.a();
    localObject = b.j().d().a((String)localObject);
    return (localObject != null) && (((File)localObject).exists());
  }
  
  public static JsonObject i()
  {
    b.a();
    String str = DefaultPrefs.getString("ad_search_banner_json", "{}", b.d());
    return (JsonObject)m.a().fromJson(str, JsonObject.class);
  }
  
  public static boolean j()
  {
    b.a();
    Object localObject = DefaultPrefs.getString("ad_search_text_json", "{}", b.d());
    localObject = (JsonObject)m.a().fromJson((String)localObject, JsonObject.class);
    if (localObject == null) {
      return false;
    }
    return !TextUtils.isEmpty(com.xueqiu.android.base.util.r.a((JsonObject)localObject, "title", null));
  }
  
  public static JsonObject k()
  {
    b.a();
    String str = DefaultPrefs.getString("ad_search_text_json", "{}", b.d());
    return (JsonObject)m.a().fromJson(str, JsonObject.class);
  }
  
  final void b()
  {
    b.a();
    final Context localContext = b.d();
    if (i.c()) {}
    for (String str = "0x05";; str = "0x04")
    {
      final long l = System.currentTimeMillis();
      q.a().b().a("0x01", str, l, i.j(), new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      });
      return;
    }
  }
  
  public final void e()
  {
    Object localObject = new StringBuilder();
    b.a();
    String str;
    if (b.i())
    {
      ((StringBuilder)localObject).append("0x14,0x17,0x15,0x19");
      v.a(a, "generateAdIds adIds.toString = " + ((StringBuilder)localObject).toString());
      str = ((StringBuilder)localObject).toString();
      if (!i.c()) {
        break label108;
      }
    }
    label108:
    for (localObject = "0x05";; localObject = "0x04")
    {
      ai localai = q.a().b();
      u.a();
      localai.b(UserLogonDataPrefs.getLogonUserId(), (String)localObject, str, new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      });
      return;
      ((StringBuilder)localObject).append("0x09,0x16,0x11,0x18");
      break;
    }
  }
  
  public final void f()
  {
    this.b = null;
    b.a();
    DefaultPrefs.putString("general_notice_json", "", b.d());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */