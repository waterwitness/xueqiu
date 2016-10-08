package com.xueqiu.android.base.h5;

import android.content.Context;
import android.webkit.WebView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.squareup.okhttp.Call;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.codec.digest.DigestUtils;
import rx.h;
import rx.i;

public final class e
{
  File a;
  public k b;
  final AtomicBoolean c = new AtomicBoolean(false);
  final AtomicBoolean d = new AtomicBoolean(false);
  
  private e()
  {
    com.xueqiu.android.base.b.a();
    this.a = new File(com.xueqiu.android.base.b.d().getApplicationContext().getFilesDir(), "com.xueqiu.android.h5");
    if ((!this.a.exists()) && (!this.a.mkdirs())) {
      throw new RuntimeException("H5Manager init failed!");
    }
    File localFile = new File(this.a, "temp");
    if ((!localFile.exists()) && (!localFile.mkdirs())) {
      v.d("H5Manager", "create temp directory failed.");
    }
    this.b = new k(new File(this.a, "modules").getAbsolutePath());
  }
  
  private boolean a(OkHttpClient paramOkHttpClient, String paramString1, String paramString2, String paramString3)
  {
    v.a("H5Manager", String.format("upgrading module [%s:%s:%s]", new Object[] { paramString2, paramString1, paramString3 }));
    paramString1 = new Request.Builder().url(paramString1).build();
    try
    {
      Object localObject2 = paramOkHttpClient.newCall(paramString1).execute();
      paramOkHttpClient = new File(this.a, "temp" + File.separator + paramString2);
      paramString1 = new BufferedOutputStream(new FileOutputStream(paramOkHttpClient));
      Object localObject1 = DigestUtils.getMd5Digest();
      localObject2 = new DigestInputStream(((Response)localObject2).body().byteStream(), (MessageDigest)localObject1);
      org.apache.commons.a.c.b.a((InputStream)localObject2, paramString1);
      paramString1.flush();
      paramString1.close();
      ((DigestInputStream)localObject2).close();
      try
      {
        if (!new BigInteger(paramString3, 16).equals(new BigInteger(1, ((MessageDigest)localObject1).digest()))) {
          break label384;
        }
        paramString1 = paramOkHttpClient.getAbsolutePath() + "_temp";
        paramString3 = new BufferedOutputStream(new FileOutputStream(paramString1));
        localObject1 = new org.apache.commons.a.b.a.a(new BufferedInputStream(new FileInputStream(paramOkHttpClient)));
        org.apache.commons.a.c.b.a((InputStream)localObject1, paramString3);
        ((org.apache.commons.a.b.a.a)localObject1).close();
        paramString3.flush();
        paramString3.close();
        paramString2 = new File(this.a, "modules" + File.separator + paramString2);
        if (paramString2.exists()) {
          com.xueqiu.android.base.util.k.b(paramString2);
        }
        if (paramString2.mkdir()) {
          break label357;
        }
        throw new IOException("mkdir failed:" + paramString2.getAbsolutePath());
      }
      finally
      {
        paramOkHttpClient.delete();
      }
      return false;
    }
    catch (IOException paramOkHttpClient)
    {
      paramOkHttpClient.printStackTrace();
    }
    for (;;)
    {
      label357:
      com.xueqiu.android.base.util.k.b(paramString1, paramString2.getAbsolutePath());
      new File(paramString1).delete();
      paramOkHttpClient.delete();
      return true;
      label384:
      v.a("H5Manager", String.format("%s md5 not matched.", new Object[] { paramString2 }));
      paramOkHttpClient.delete();
    }
  }
  
  public final rx.a<Boolean> a()
  {
    rx.a.a(new rx.b() {});
  }
  
  public final void a(final boolean paramBoolean)
  {
    if (!u.a().c) {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          e.this.a(paramBoolean);
        }
      }, 1L, TimeUnit.SECONDS);
    }
    while (this.d.get()) {
      return;
    }
    this.d.set(true);
    ag.c.a(new rx.c.a()
    {
      public final void a()
      {
        e locale = e.this;
        boolean bool = paramBoolean;
        com.xueqiu.android.base.b.a();
        Context localContext = com.xueqiu.android.base.b.d();
        locale.a = new File(localContext.getFilesDir(), "com.xueqiu.android.h5");
        if ((!locale.a.exists()) && (!locale.a.mkdirs())) {
          throw new RuntimeException("H5Manager mk base dirs failed!");
        }
        File localFile = new File(locale.a, "temp");
        if ((!localFile.exists()) && (!localFile.mkdirs())) {
          v.d("H5Manager", "create temp directory failed.");
        }
        localFile = new File(locale.a, "modules");
        int i;
        if ((!localFile.exists()) || (!new File(localFile, "mark").exists())) {
          i = 1;
        }
        for (;;)
        {
          long l;
          if ((i != 0) || (bool))
          {
            l = System.currentTimeMillis();
            v.a("H5Manager", "refresh h5 files start");
            if (localFile.exists())
            {
              v.a("H5Manager", "deleting h5 files");
              if (!localFile.exists()) {}
            }
          }
          try
          {
            com.xueqiu.android.base.util.k.b(localFile);
            v.a("H5Manager", "copying h5 files");
            com.xueqiu.android.base.util.k.a(localContext.getAssets(), "h5/modules", localFile.getAbsolutePath());
            com.xueqiu.android.base.util.k.b(localContext.getAssets(), "h5/config.json", new File(localFile, "config.json").getAbsolutePath());
          }
          catch (IOException localIOException2)
          {
            try
            {
              new File(localFile, "mark").createNewFile();
              locale.b.refresh();
              v.a("H5Manager", "refresh h5 files finish, waste " + (System.currentTimeMillis() - l) + " ms");
              e.this.a().g();
              e.this.d.set(false);
              return;
              i = 0;
              continue;
              localIOException2 = localIOException2;
              localIOException2.printStackTrace();
              v.a("H5Manager", "clear failed.", localIOException2);
            }
            catch (IOException localIOException1)
            {
              for (;;)
              {
                v.b("H5Manager", "create mark file failed.", localIOException1);
              }
            }
          }
        }
      }
    }, 5L, TimeUnit.SECONDS);
  }
  
  final boolean a(JsonObject paramJsonObject)
  {
    JsonObject localJsonObject = (JsonObject)m.a().fromJson(com.xueqiu.android.base.util.k.a(new File(this.a, "modules" + File.separator + "config.json")), JsonObject.class);
    if ((localJsonObject == null) || (paramJsonObject == null)) {
      return false;
    }
    Object localObject1 = localJsonObject.entrySet().iterator();
    for (;;)
    {
      if (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (String)((Map.Entry)((Iterator)localObject1).next()).getKey();
        if (paramJsonObject.has((String)localObject2)) {
          continue;
        }
        localObject2 = new File(this.a, "modules" + File.separator + (String)localObject2);
        if (((File)localObject2).exists()) {}
        try
        {
          com.xueqiu.android.base.util.k.b((File)localObject2);
          ((Iterator)localObject1).remove();
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            v.a(localIOException);
          }
        }
      }
    }
    localObject1 = new OkHttpClient();
    paramJsonObject = paramJsonObject.entrySet().iterator();
    boolean bool1 = true;
    Object localObject3;
    String str;
    if (paramJsonObject.hasNext())
    {
      localObject3 = (Map.Entry)paramJsonObject.next();
      str = (String)((Map.Entry)localObject3).getKey();
      localObject3 = ((JsonElement)((Map.Entry)localObject3).getValue()).getAsJsonObject();
      if (localJsonObject.has(str))
      {
        if (localJsonObject.get(str).getAsJsonObject().get("checksum").getAsString().equals(((JsonObject)localObject3).get("checksum").getAsString())) {
          break label450;
        }
        boolean bool2 = a((OkHttpClient)localObject1, ((JsonObject)localObject3).get("url").getAsString(), str, ((JsonObject)localObject3).get("checksum").getAsString());
        if (bool2) {
          localJsonObject.add(str, (JsonElement)localObject3);
        }
        if ((bool1) && (bool2)) {
          bool1 = true;
        }
      }
    }
    label450:
    for (;;)
    {
      break;
      bool1 = false;
      continue;
      if (!a((OkHttpClient)localObject1, ((JsonObject)localObject3).get("url").getAsString(), str, ((JsonObject)localObject3).get("checksum").getAsString())) {
        break;
      }
      localJsonObject.add(str, (JsonElement)localObject3);
      break;
      com.xueqiu.android.base.util.k.a(new File(this.a, "modules" + File.separator + "config.json"), localJsonObject.toString());
      this.b.refresh();
      return bool1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */