package com.kwlopen.sdk;

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;
import com.b.a.a.a;
import com.b.a.a.d;
import com.kwlopen.sdk.activity.CaptureVideo;
import com.kwlopen.sdk.activity.SelectPicActivity;
import com.kwlopen.sdk.activity.VideoVitness;
import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import org.apache.cordova.aa;
import org.apache.cordova.f;
import org.apache.cordova.g;
import org.apache.cordova.z;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class b
  extends g
{
  private org.apache.cordova.b d;
  private String e = "";
  private String f;
  private long g;
  private g h;
  private f i;
  
  private boolean a(f paramf, g paramg, String paramString, JSONArray paramJSONArray, org.apache.cordova.b paramb)
  {
    boolean bool2 = false;
    this.i = paramf;
    this.h = paramg;
    this.d = paramb;
    if (paramString.equals("capture")) {}
    label412:
    do
    {
      do
      {
        try
        {
          this.e = ((String)paramJSONArray.getJSONObject(0).get("vercode"));
          paramf = new Intent(this.i.getActivity(), CaptureVideo.class);
          paramf.putExtra("vercode", this.e);
          this.i.startActivityForResult(this.h, paramf, 2);
          bool1 = true;
          return bool1;
        }
        catch (JSONException paramf)
        {
          for (;;)
          {
            paramf.printStackTrace();
          }
        }
        if (paramString.equals("uploadImage"))
        {
          this.i.startActivityForResult(this.h, new Intent(this.i.getActivity(), SelectPicActivity.class), 1);
          return true;
        }
        if (paramString.equals("showToast"))
        {
          long l = System.currentTimeMillis();
          if (l - this.g > 2000L)
          {
            Toast.makeText(this.i.getActivity(), "请再按一次", 0).show();
            this.g = l;
          }
          for (;;)
          {
            return true;
            this.i.getActivity().finish();
          }
        }
        if (paramString.equals("refresh")) {
          return true;
        }
        if (paramString.equals("DIYCamera")) {
          return true;
        }
        if (paramString.equals("post")) {
          try
          {
            paramf = (JSONObject)paramJSONArray.getJSONObject(0).get("param");
            paramg = new HttpPost("http://192.168.14.47:8088/kow/qwopenacct.do");
            if (!paramString.equals("openAccountFinish")) {
              break label412;
            }
          }
          catch (JSONException paramf)
          {
            try
            {
              paramg.setEntity(new StringEntity(paramf.toString()));
              paramf = new JSONObject(EntityUtils.toString(new DefaultHttpClient().execute(paramg).getEntity()));
              System.out.println(paramf);
              this.d.a(new z(aa.b, paramf));
              return true;
            }
            catch (JSONException paramf)
            {
              for (;;)
              {
                paramf.printStackTrace();
                continue;
                paramf = paramf;
                paramf.printStackTrace();
              }
            }
            catch (UnsupportedEncodingException paramf)
            {
              for (;;)
              {
                paramf.printStackTrace();
              }
            }
            catch (ClientProtocolException paramf)
            {
              for (;;)
              {
                paramf.printStackTrace();
              }
            }
            catch (IOException paramf)
            {
              for (;;)
              {
                paramf.printStackTrace();
              }
            }
          }
        }
        try
        {
          paramJSONArray.getJSONObject(0).get("company");
          return false;
        }
        catch (JSONException paramf)
        {
          paramf.printStackTrace();
          return false;
        }
        bool1 = bool2;
      } while (paramString.equals("openAccountSafeExit"));
      boolean bool1 = bool2;
    } while (!paramString.equals("captureAnychatVideo"));
    try
    {
      paramf = paramJSONArray.getJSONObject(0).getString("anychatServerAddr");
      int j = paramJSONArray.getJSONObject(0).getInt("anychatServerPort");
      int k = paramJSONArray.getJSONObject(0).getInt("anychatRemoteUserId");
      paramString = paramJSONArray.getJSONObject(0).getString("mobileTel");
      paramJSONArray = new Intent();
      paramJSONArray.putExtra("anychatServerAddr", paramf);
      paramJSONArray.putExtra("anychatServerPort", j);
      paramJSONArray.putExtra("anychatRemoteUserId", k);
      paramJSONArray.putExtra("mobileTel", paramString);
      paramJSONArray.setClass(this.i.getActivity(), VideoVitness.class);
      this.i.startActivityForResult(paramg, paramJSONArray, 5);
      return true;
    }
    catch (JSONException paramf)
    {
      for (;;)
      {
        paramf.printStackTrace();
      }
    }
  }
  
  /* Error */
  private static byte[] b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore_2
    //   4: new 247	java/io/FileInputStream
    //   7: dup
    //   8: new 249	java/io/File
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 250	java/io/File:<init>	(Ljava/lang/String;)V
    //   16: invokespecial 253	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   19: astore_1
    //   20: aload_3
    //   21: astore_0
    //   22: aload_1
    //   23: invokevirtual 257	java/io/FileInputStream:available	()I
    //   26: newarray <illegal type>
    //   28: astore_2
    //   29: aload_2
    //   30: astore_0
    //   31: aload_1
    //   32: aload_2
    //   33: invokevirtual 261	java/io/FileInputStream:read	([B)I
    //   36: pop
    //   37: aload_1
    //   38: invokevirtual 264	java/io/FileInputStream:close	()V
    //   41: aload_2
    //   42: areturn
    //   43: astore_0
    //   44: aconst_null
    //   45: astore_1
    //   46: aload_2
    //   47: astore_0
    //   48: aload_1
    //   49: invokevirtual 264	java/io/FileInputStream:close	()V
    //   52: aload_0
    //   53: areturn
    //   54: astore_0
    //   55: aconst_null
    //   56: astore_1
    //   57: aload_1
    //   58: invokevirtual 264	java/io/FileInputStream:close	()V
    //   61: aload_0
    //   62: athrow
    //   63: astore_0
    //   64: goto -7 -> 57
    //   67: astore_2
    //   68: goto -20 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramString	String
    //   19	39	1	localFileInputStream	java.io.FileInputStream
    //   3	44	2	arrayOfByte	byte[]
    //   67	1	2	localException	Exception
    //   1	20	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	20	43	java/lang/Exception
    //   4	20	54	finally
    //   22	29	63	finally
    //   31	37	63	finally
    //   22	29	67	java/lang/Exception
    //   31	37	67	java/lang/Exception
  }
  
  public final void a(final int paramInt1, int paramInt2, Intent paramIntent)
  {
    d.b("onActivityResult cordovaOlugin");
    String str = null;
    if (paramInt2 == -1)
    {
      if (paramInt1 != 5) {
        break label256;
      }
      paramInt1 = paramIntent.getIntExtra("errcode", 0);
      str = paramIntent.getStringExtra("errmsg");
      if ((str != null) && (!str.equals(""))) {
        Toast.makeText(this.i.getActivity(), str, 1).show();
      }
      if (paramInt1 != 0) {
        break label232;
      }
      paramInt1 = paramIntent.getIntExtra("flag", 1);
      d.a("onActivityResult ---videoFragment=" + paramInt1);
      if (paramInt1 == 0) {
        break label208;
      }
      if (paramInt1 != 1) {
        break label189;
      }
      paramIntent.getStringExtra("errmsg");
      if (!str.contains("视频见证")) {
        break label154;
      }
      this.i.getThreadPool().execute(new Runnable()
      {
        public final void run()
        {
          b.a(b.this).a("2");
        }
      });
    }
    label154:
    label189:
    label208:
    label232:
    label256:
    do
    {
      do
      {
        do
        {
          return;
        } while (!str.contains("影像上传"));
        this.i.getThreadPool().execute(new Runnable()
        {
          public final void run()
          {
            b.a(b.this).a(paramInt1);
          }
        });
        return;
        Toast.makeText(this.i.getActivity(), "视频认证不通过，请继续认证", 1).show();
        this.i.getThreadPool().execute(new Runnable()
        {
          public final void run()
          {
            b.a(b.this).a(paramInt1);
          }
        });
        return;
        this.i.getThreadPool().execute(new Runnable()
        {
          public final void run()
          {
            org.apache.cordova.b localb = b.a(b.this);
            int i = paramInt1;
            localb.a(new z(aa.j, i));
          }
        });
        return;
        if (paramInt1 == 1) {
          str = paramIntent.getStringExtra("photo_path");
        }
        if (paramInt1 != 2) {
          break;
        }
        paramIntent = paramIntent.getStringExtra("videoPath");
      } while ((paramIntent == null) || (paramIntent.equals("")));
      try
      {
        this.f = a.a(b(paramIntent));
        this.i.getThreadPool().execute(new Runnable()
        {
          public final void run()
          {
            b.a(b.this).a(b.b(b.this));
          }
        });
        return;
      }
      catch (Exception paramIntent)
      {
        paramIntent.printStackTrace();
        return;
      }
    } while (str == null);
    try
    {
      this.f = a.a(b(str));
      this.i.getThreadPool().execute(new Runnable()
      {
        public final void run()
        {
          b.a(b.this).a(b.b(b.this));
        }
      });
      return;
    }
    catch (Exception paramIntent)
    {
      paramIntent.printStackTrace();
    }
  }
  
  public final boolean a(String paramString, JSONArray paramJSONArray, org.apache.cordova.b paramb)
  {
    return a(this.b, this, paramString, paramJSONArray, paramb);
  }
  
  public abstract void refresh();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */