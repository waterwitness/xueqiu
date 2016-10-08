package com.pingan.a.a;

import android.util.Log;
import com.pingan.b.a.m;
import com.pingan.b.c.h;
import com.pingan.b.c.i;
import com.pingan.b.c.k;
import com.pingan.b.c.l;
import com.pingan.main.PAVideoSdkApiManager;
import java.io.File;
import java.io.IOException;
import org.json.JSONObject;

public final class g
{
  boolean a;
  public k b;
  public String c = "";
  public String d = "";
  private final String e = "UploadUtil";
  private String f = PAVideoSdkApiManager.getLogRootPath();
  private String g = this.f + "/upload";
  
  public final void a(String paramString)
  {
    if (this.f == null) {}
    Object localObject1;
    Object localObject2;
    do
    {
      return;
      localObject1 = new File(this.f);
      localObject2 = new File(this.g);
    } while (!((File)localObject1).exists());
    int j;
    int i;
    if (!((File)localObject2).exists())
    {
      if (((File)localObject2).mkdirs()) {
        e.a("UploadUtil", "创建upload目录成功！");
      }
    }
    else
    {
      localObject1 = ((File)localObject1).list();
      j = localObject1.length;
      e.a("UploadUtil", "rootFile.list()==" + localObject1.length);
      i = 0;
    }
    while (i < j)
    {
      final String str1;
      if (!"upload".equals(localObject1[i]))
      {
        localObject2 = paramString + "-" + localObject1[i];
        str1 = localObject2 + ".zip";
        e.a("UploadUtil", localObject1[i]);
      }
      try
      {
        boolean bool = d.a(this.f + "/" + localObject1[i], this.g + "/" + str1);
        e.b("UploadUtil", "zipLogDir--flag=" + this.f + "/" + str1 + "-->" + bool);
        e.b("UploadUtil", "zipLogDir--mBucketName=" + this.c + "--mToken+" + this.d);
        str1 = this.g + "/" + str1;
        String str2 = this.c;
        String str3 = this.d;
        e.a("UploadUtil", "upload--key=" + (String)localObject2);
        l locall = new l(new i()new com.pingan.b.c.g
        {
          public final void a(String paramAnonymousString, double paramAnonymousDouble)
          {
            e.b("UploadUtil", "progress--s=" + paramAnonymousString + "--v=" + paramAnonymousDouble);
          }
        }, new com.pingan.b.c.g()
        {
          public final boolean a()
          {
            return g.this.a;
          }
        });
        Log.e("UploadUtil", "uploadManager=" + this.b);
        this.b.a(str1, str2, (String)localObject2, str3, new h()
        {
          public final void a(String paramAnonymousString, m paramAnonymousm, JSONObject paramAnonymousJSONObject)
          {
            e.b("UploadUtil", "上传结果 : " + paramAnonymousString + "- 返回json " + paramAnonymousJSONObject);
            e.b("UploadUtil", "rinfo.isOK()-- > " + paramAnonymousm.b() + "- rinfo.getPath()--> " + paramAnonymousm.e());
            e.b("UploadUtil", "rinfo.error = " + paramAnonymousm.e + "---tostring=" + paramAnonymousm.toString());
            e.a("UploadUtil", "rinfo.isOK()-- > " + paramAnonymousm.b() + "---rinfo.error = " + paramAnonymousm.e);
            if (paramAnonymousm.b())
            {
              boolean bool = c.a(str1);
              e.b("UploadUtil", "上传完成，删除文件结果-" + bool + "--rinfo.getPath()=" + paramAnonymousm.e());
            }
          }
        }, locall);
        i += 1;
        continue;
        e.a("UploadUtil", "创建upload目录失败！中断上传！");
        return;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localIOException.printStackTrace();
          e.d("UploadUtil", localIOException.getMessage());
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */