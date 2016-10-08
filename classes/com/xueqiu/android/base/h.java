package com.xueqiu.android.base;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.preference.PreferenceManager;
import com.android.volley.y;
import com.e.a.a.e;
import com.e.a.a.j;
import com.flurry.android.FlurryAgent;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.SNBEvent;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.util.EncodingUtils;

public final class h
{
  private Map<String, String> a;
  
  private h()
  {
    b.a();
    Object localObject4 = b.d();
    Object localObject3 = null;
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        localObject4 = ((Context)localObject4).getAssets().open("event_mappings.json");
        localObject1 = localObject4;
        localObject3 = localObject4;
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader((InputStream)localObject4, Charset.forName("UTF-8")));
        localObject1 = localObject4;
        localObject3 = localObject4;
        this.a = ((Map)m.a().fromJson(localBufferedReader, new TypeToken() {}.getType()));
        localObject1 = localObject4;
        localObject3 = localObject4;
        localBufferedReader.close();
      }
      catch (IOException localIOException4)
      {
        localObject3 = localIOException1;
        localIOException4.printStackTrace();
        if (localIOException1 == null) {
          continue;
        }
        try
        {
          localIOException1.close();
          return;
        }
        catch (IOException localIOException2)
        {
          localIOException2.printStackTrace();
          return;
        }
      }
      finally
      {
        if (localObject3 == null) {
          break label137;
        }
      }
      try
      {
        ((InputStream)localObject4).close();
        return;
      }
      catch (IOException localIOException1)
      {
        localIOException1.printStackTrace();
        return;
      }
    }
    try
    {
      ((InputStream)localObject3).close();
      label137:
      throw ((Throwable)localObject2);
    }
    catch (IOException localIOException3)
    {
      for (;;)
      {
        localIOException3.printStackTrace();
      }
    }
  }
  
  public static String a()
  {
    try
    {
      u.a();
      Object localObject = String.format("%d.log", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()) });
      b.a();
      localObject = b.d().openFileInput((String)localObject);
      byte[] arrayOfByte = new byte[((FileInputStream)localObject).available()];
      ((FileInputStream)localObject).read(arrayOfByte);
      localObject = EncodingUtils.getString(arrayOfByte, "utf-8");
      return (String)localObject;
    }
    catch (Exception localException)
    {
      v.a(localException.toString());
    }
    return "";
  }
  
  public static void a(boolean paramBoolean)
  {
    b.a();
    Object localObject1 = b.d();
    if (paramBoolean)
    {
      u.a();
      localObject2 = String.format("%d.log", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()) });
      localObject2 = new File(((Context)localObject1).getFilesDir(), (String)localObject2);
      if (((File)localObject2).exists()) {
        ((File)localObject2).delete();
      }
    }
    u.a();
    Object localObject2 = String.format("%d.tar.gz", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()) });
    localObject1 = new File(((Context)localObject1).getFilesDir(), (String)localObject2);
    if (((File)localObject1).exists()) {
      ((File)localObject1).delete();
    }
  }
  
  public static void b()
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    u.a();
    Object localObject2 = String.format("%d.log", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()) });
    u.a();
    Object localObject1 = String.format("%d.tar.gz", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()) });
    try
    {
      b.a();
      localObject2 = b.d().openFileInput((String)localObject2);
      b.a();
      localObject1 = new GZIPOutputStream(b.d().openFileOutput((String)localObject1, 32768));
      for (;;)
      {
        int i = ((FileInputStream)localObject2).read(arrayOfByte);
        if (i <= 0) {
          break;
        }
        ((GZIPOutputStream)localObject1).write(arrayOfByte, 0, i);
      }
      ((FileInputStream)localObject2).close();
    }
    catch (IOException localIOException)
    {
      v.a(localIOException.toString());
      return;
    }
    ((GZIPOutputStream)localObject1).finish();
    ((GZIPOutputStream)localObject1).close();
  }
  
  private static HttpEntity d()
  {
    u.a();
    Object localObject = String.format("%d.tar.gz", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()) });
    j localj = new j(e.b, (byte)0);
    try
    {
      b.a();
      localObject = b.d().openFileInput((String)localObject);
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      org.apache.commons.a.c.b.a((InputStream)localObject, localByteArrayOutputStream);
      localj.a("file", new com.e.a.a.a.b(localByteArrayOutputStream.toByteArray(), "file"));
      ((FileInputStream)localObject).close();
      return localj;
    }
    catch (IOException localIOException)
    {
      v.a(localIOException.toString());
    }
    return null;
  }
  
  public final void a(SNBEvent paramSNBEvent)
  {
    if (paramSNBEvent == null) {
      return;
    }
    String str = paramSNBEvent.toString();
    Object localObject;
    if (str != null)
    {
      if (g.a().b)
      {
        b.a();
        if (PreferenceManager.getDefaultSharedPreferences(b.d()).getBoolean(r.d(2131165677), false)) {
          aa.a(str);
        }
      }
      u.a();
      localObject = String.format("%d%s", new Object[] { Long.valueOf(UserLogonDataPrefs.getLogonUserId()), ".log" });
      if ((localObject != null) && (str != null)) {
        break label148;
      }
    }
    for (;;)
    {
      int i = paramSNBEvent.getPageId();
      int j = paramSNBEvent.getWidgetId();
      FlurryAgent.logEvent((String)this.a.get(String.format("%s|%s", new Object[] { String.valueOf(i), String.valueOf(j) })), paramSNBEvent.getAttach());
      return;
      label148:
      str = String.format("%s\n", new Object[] { str });
      try
      {
        b.a();
        localObject = b.d().openFileOutput((String)localObject, 32768);
        ((FileOutputStream)localObject).write(str.getBytes("UTF-8"));
        ((FileOutputStream)localObject).close();
      }
      catch (Exception localException)
      {
        v.a(localException.toString());
      }
    }
  }
  
  public final void c()
  {
    HttpEntity localHttpEntity;
    if (i.e())
    {
      b();
      localHttpEntity = d();
      if (localHttpEntity != null) {}
    }
    else
    {
      return;
    }
    q.a().b().a("user_behavior", localHttpEntity, new p()
    {
      public final void a(y paramAnonymousy)
      {
        h.a(false);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */