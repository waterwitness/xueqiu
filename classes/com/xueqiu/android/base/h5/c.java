package com.xueqiu.android.base.h5;

import android.app.AlertDialog.Builder;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.support.v4.view.ak;
import android.text.Html;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.pingan.main.CheckChannelCallback;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelpay.PayReq;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.az;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.pdf.PDFViewerActivity;
import com.xueqiu.android.common.widget.FloatingActionMenu;
import com.xueqiu.android.common.widget.SNBWebView;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.an;
import com.xueqiu.android.cube.model.OrderStatus;
import com.xueqiu.android.trade.PAAccountVideoActivity;
import com.xueqiu.android.trade.model.TradeAccount;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import rx.h;

public final class c
  extends com.xueqiu.android.common.c
{
  public static final String a = Environment.getExternalStorageDirectory() + "/snowball/h5/";
  private boolean ak;
  private SparseArray<b> al = new SparseArray();
  private ValueCallback<Uri[]> am;
  private String an;
  private ProgressBar ao;
  private l ap;
  private FrameLayout aq;
  private o ar = null;
  private rx.j as = null;
  private int at;
  private WebChromeClient au = new WebChromeClient()
  {
    public final void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
    {
      if (paramAnonymousInt == 100) {
        c.f(c.this).setVisibility(8);
      }
      for (;;)
      {
        c.f(c.this).setProgress(paramAnonymousInt);
        super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
        return;
        c.f(c.this).setVisibility(0);
      }
    }
    
    public final void onReceivedTitle(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      super.onReceivedTitle(paramAnonymousWebView, paramAnonymousString);
      c.a(c.this, paramAnonymousString);
    }
    
    /* Error */
    public final boolean onShowFileChooser(WebView paramAnonymousWebView, ValueCallback<Uri[]> paramAnonymousValueCallback, android.webkit.WebChromeClient.FileChooserParams paramAnonymousFileChooserParams)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 12	com/xueqiu/android/base/h5/c$4:a	Lcom/xueqiu/android/base/h5/c;
      //   4: invokestatic 48	com/xueqiu/android/base/h5/c:g	(Lcom/xueqiu/android/base/h5/c;)Landroid/webkit/ValueCallback;
      //   7: ifnull +16 -> 23
      //   10: aload_0
      //   11: getfield 12	com/xueqiu/android/base/h5/c$4:a	Lcom/xueqiu/android/base/h5/c;
      //   14: invokestatic 48	com/xueqiu/android/base/h5/c:g	(Lcom/xueqiu/android/base/h5/c;)Landroid/webkit/ValueCallback;
      //   17: aconst_null
      //   18: invokeinterface 54 2 0
      //   23: aload_0
      //   24: getfield 12	com/xueqiu/android/base/h5/c$4:a	Lcom/xueqiu/android/base/h5/c;
      //   27: aload_2
      //   28: invokestatic 57	com/xueqiu/android/base/h5/c:a	(Lcom/xueqiu/android/base/h5/c;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
      //   31: pop
      //   32: new 59	android/content/Intent
      //   35: dup
      //   36: ldc 61
      //   38: invokespecial 64	android/content/Intent:<init>	(Ljava/lang/String;)V
      //   41: astore_3
      //   42: aload_3
      //   43: astore_1
      //   44: aload_3
      //   45: aload_0
      //   46: getfield 12	com/xueqiu/android/base/h5/c$4:a	Lcom/xueqiu/android/base/h5/c;
      //   49: invokevirtual 67	com/xueqiu/android/base/h5/c:g	()Landroid/support/v4/a/k;
      //   52: invokevirtual 73	android/support/v4/a/k:getPackageManager	()Landroid/content/pm/PackageManager;
      //   55: invokevirtual 77	android/content/Intent:resolveActivity	(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
      //   58: ifnull +65 -> 123
      //   61: invokestatic 81	com/xueqiu/android/base/h5/c:u	()Ljava/io/File;
      //   64: astore_1
      //   65: aload_3
      //   66: ldc 83
      //   68: aload_0
      //   69: getfield 12	com/xueqiu/android/base/h5/c$4:a	Lcom/xueqiu/android/base/h5/c;
      //   72: invokestatic 87	com/xueqiu/android/base/h5/c:h	(Lcom/xueqiu/android/base/h5/c;)Ljava/lang/String;
      //   75: invokevirtual 91	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
      //   78: pop
      //   79: aload_1
      //   80: ifnull +142 -> 222
      //   83: aload_0
      //   84: getfield 12	com/xueqiu/android/base/h5/c$4:a	Lcom/xueqiu/android/base/h5/c;
      //   87: new 93	java/lang/StringBuilder
      //   90: dup
      //   91: ldc 95
      //   93: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   96: aload_1
      //   97: invokevirtual 102	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   100: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   103: invokevirtual 109	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   106: invokestatic 112	com/xueqiu/android/base/h5/c:a	(Lcom/xueqiu/android/base/h5/c;Ljava/lang/String;)Ljava/lang/String;
      //   109: pop
      //   110: aload_3
      //   111: ldc 114
      //   113: aload_1
      //   114: invokestatic 120	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
      //   117: invokevirtual 123	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
      //   120: pop
      //   121: aload_3
      //   122: astore_1
      //   123: new 59	android/content/Intent
      //   126: dup
      //   127: ldc 125
      //   129: invokespecial 64	android/content/Intent:<init>	(Ljava/lang/String;)V
      //   132: astore_2
      //   133: aload_2
      //   134: ldc 127
      //   136: invokevirtual 131	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
      //   139: pop
      //   140: aload_2
      //   141: ldc -123
      //   143: invokevirtual 136	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
      //   146: pop
      //   147: aload_1
      //   148: ifnull +79 -> 227
      //   151: iconst_1
      //   152: anewarray 59	android/content/Intent
      //   155: dup
      //   156: iconst_0
      //   157: aload_1
      //   158: aastore
      //   159: astore_1
      //   160: new 59	android/content/Intent
      //   163: dup
      //   164: ldc -118
      //   166: invokespecial 64	android/content/Intent:<init>	(Ljava/lang/String;)V
      //   169: astore_3
      //   170: aload_3
      //   171: ldc -116
      //   173: aload_2
      //   174: invokevirtual 123	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
      //   177: pop
      //   178: aload_3
      //   179: ldc -114
      //   181: ldc -112
      //   183: invokevirtual 91	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
      //   186: pop
      //   187: aload_3
      //   188: ldc -110
      //   190: aload_1
      //   191: invokevirtual 149	android/content/Intent:putExtra	(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
      //   194: pop
      //   195: aload_0
      //   196: getfield 12	com/xueqiu/android/base/h5/c$4:a	Lcom/xueqiu/android/base/h5/c;
      //   199: aload_3
      //   200: sipush 10004
      //   203: invokevirtual 152	com/xueqiu/android/base/h5/c:a	(Landroid/content/Intent;I)V
      //   206: iconst_1
      //   207: ireturn
      //   208: astore_2
      //   209: aconst_null
      //   210: astore_1
      //   211: ldc -102
      //   213: ldc -100
      //   215: aload_2
      //   216: invokestatic 162	com/xueqiu/android/base/util/v:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   219: goto -140 -> 79
      //   222: aconst_null
      //   223: astore_1
      //   224: goto -101 -> 123
      //   227: iconst_0
      //   228: anewarray 59	android/content/Intent
      //   231: astore_1
      //   232: goto -72 -> 160
      //   235: astore_2
      //   236: goto -25 -> 211
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	239	0	this	4
      //   0	239	1	paramAnonymousWebView	WebView
      //   0	239	2	paramAnonymousValueCallback	ValueCallback<Uri[]>
      //   0	239	3	paramAnonymousFileChooserParams	android.webkit.WebChromeClient.FileChooserParams
      // Exception table:
      //   from	to	target	type
      //   61	65	208	java/io/IOException
      //   65	79	235	java/io/IOException
    }
  };
  private DownloadListener av = new DownloadListener()
  {
    public final void onDownloadStart(final String paramAnonymousString1, final String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong)
    {
      if (c.this.g().isFinishing()) {
        return;
      }
      if ((!TextUtils.isEmpty(paramAnonymousString1)) && ((paramAnonymousString1.endsWith(".pdf")) || (paramAnonymousString1.endsWith(".PDF"))))
      {
        paramAnonymousString2 = new Bundle();
        paramAnonymousString2.putString("pdf_file_url", paramAnonymousString1);
        paramAnonymousString1 = new Intent(c.this.f(), PDFViewerActivity.class);
        paramAnonymousString1.putExtras(paramAnonymousString2);
        c.this.a(paramAnonymousString1);
        return;
      }
      paramAnonymousString2 = "xueqiu-" + paramAnonymousString1.substring(paramAnonymousString1.lastIndexOf("/") + 1, paramAnonymousString1.length());
      new AlertDialog.Builder(c.this.g()).setMessage(c.this.a(2131165482, new Object[] { paramAnonymousString2 })).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          try
          {
            if (c.b(c.this.g()))
            {
              localObject = new DownloadManager.Request(Uri.parse(paramAnonymousString1));
              ((DownloadManager.Request)localObject).setDescription("www.xueqiu.com");
              if (Build.VERSION.SDK_INT >= 11)
              {
                ((DownloadManager.Request)localObject).allowScanningByMediaScanner();
                ((DownloadManager.Request)localObject).setNotificationVisibility(1);
              }
              ((DownloadManager.Request)localObject).setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, paramAnonymousString2);
              ((DownloadManager)c.this.g().getSystemService("download")).enqueue((DownloadManager.Request)localObject);
              aa.a("文件保存至" + Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + "/" + paramAnonymousString2);
              paramAnonymous2DialogInterface.cancel();
              return;
            }
            Object localObject = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString1));
            c.this.a((Intent)localObject);
            paramAnonymous2DialogInterface.cancel();
            return;
          }
          catch (Exception paramAnonymous2DialogInterface)
          {
            aa.a(paramAnonymous2DialogInterface.getMessage());
          }
        }
      }).setNegativeButton(2131165296, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
        {
          paramAnonymous2DialogInterface.cancel();
        }
      }).show();
    }
  };
  String b;
  d c;
  b d;
  SNBWebView e;
  FloatingActionMenu f;
  BroadcastReceiver g = null;
  int h = 1100;
  
  public static c a(String paramString, b paramb, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_url", paramString);
    localBundle.putBoolean("arg_is_module", paramBoolean);
    if (paramb != null) {
      localBundle.putParcelable("arg_event", paramb);
    }
    paramString = new c();
    paramString.e(localBundle);
    paramString.e_(true);
    return paramString;
  }
  
  private void a(b paramb, int paramInt)
  {
    for (;;)
    {
      try
      {
        Object localObject = (b)this.al.get(paramb.a);
        if (localObject != null)
        {
          this.al.remove(paramb.a);
          String str = paramb.b;
          localObject = (JsonObject)m.a().fromJson(((b)localObject).b, JsonObject.class);
          if (paramb.c < 0) {
            continue;
          }
          localObject = new Intent();
          if (this.d != null)
          {
            this.d.b = paramb.b;
            this.d.c = (paramb.c - 1);
            paramb = new Bundle();
            paramb.putParcelable("extra_event", this.d);
            ((Intent)localObject).putExtras(paramb);
          }
          g().setResult(-1, (Intent)localObject);
          g().finish();
          paramb = "";
          if ((paramb != null) && (paramb.length() > 0)) {
            l.a(this.e, paramb, str);
          }
        }
        return;
        if (paramInt == 0)
        {
          if ((localObject != null) && (((JsonObject)localObject).has("success"))) {
            paramb = ((JsonObject)localObject).get("success").getAsString();
          }
        }
        else if (paramInt == 1)
        {
          if ((localObject != null) && (((JsonObject)localObject).has("cancel"))) {
            paramb = ((JsonObject)localObject).get("cancel").getAsString();
          }
        }
        else if ((localObject != null) && (((JsonObject)localObject).has("error")))
        {
          paramb = ((JsonObject)localObject).get("error").getAsString();
          continue;
        }
        paramb = "";
      }
      finally {}
    }
  }
  
  private void a(final b paramb, final long paramLong1, long paramLong2)
  {
    if (this.as != null)
    {
      this.as.b();
      this.as = null;
    }
    this.at = 0;
    this.as = ag.c.a(new rx.c.a()
    {
      public final void a()
      {
        if (c.c(c.this) >= 30)
        {
          c.d(c.this).b();
          c.e(c.this);
          c.a(c.this, paramb, false);
          return;
        }
        c.a(c.this, paramLong1, this.c).b(new rx.i()
        {
          public final void a() {}
          
          public final void a(Throwable paramAnonymous2Throwable)
          {
            aa.a(paramAnonymous2Throwable);
          }
        });
      }
    }, 0L, 2L, TimeUnit.SECONDS);
  }
  
  private void a(b paramb, boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.xueqiu.android.action.paySuccess");
    localIntent.putExtra("extra_pay_state", paramBoolean);
    android.support.v4.content.r.a(f()).a(localIntent);
    if (paramBoolean)
    {
      a(paramb, 0);
      return;
    }
    a(paramb, 1);
  }
  
  public static boolean b(Context paramContext)
  {
    try
    {
      if (Build.VERSION.SDK_INT < 9) {
        return false;
      }
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.addCategory("android.intent.category.LAUNCHER");
      localIntent.setClassName("com.android.providers.downloads.ui", "com.android.providers.downloads.ui.DownloadList");
      int i = paramContext.getPackageManager().queryIntentActivities(localIntent, 65536).size();
      if (i > 0) {
        return true;
      }
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  public final void K_()
  {
    if (this.ap != null) {
      l.a(this.ap.b, "window.viewDidAppear", "");
    }
    super.K_();
  }
  
  final Bitmap a(JsonObject paramJsonObject)
  {
    int i;
    int j;
    int k;
    int m;
    if (paramJsonObject.has("rect"))
    {
      localObject1 = paramJsonObject.getAsJsonObject("rect");
      i = ((JsonObject)localObject1).get("x").getAsInt();
      j = ((JsonObject)localObject1).get("y").getAsInt();
      k = ((JsonObject)localObject1).get("w").getAsInt();
      m = ((JsonObject)localObject1).get("h").getAsInt();
    }
    for (Object localObject1 = ad.a(this.e, (int)ay.a(i), (int)ay.a(j), (int)ay.a(k), (int)ay.a(m));; localObject1 = null)
    {
      Object localObject2 = localObject1;
      Bitmap localBitmap;
      if (!com.xueqiu.android.base.util.r.a(paramJsonObject, "insertImageBase64"))
      {
        localObject2 = localObject1;
        if (paramJsonObject.get("insertImageBase64").getAsString().length() > 0)
        {
          localObject2 = Base64.decode(paramJsonObject.get("insertImageBase64").getAsString(), 0);
          localObject2 = BitmapFactory.decodeByteArray((byte[])localObject2, 0, localObject2.length);
          if (((Bitmap)localObject2).getWidth() == ((Bitmap)localObject1).getWidth()) {
            break label358;
          }
          float f1 = Float.valueOf(((Bitmap)localObject1).getWidth()).floatValue() / Float.valueOf(((Bitmap)localObject2).getWidth()).floatValue();
          localBitmap = Bitmap.createScaledBitmap((Bitmap)localObject2, (int)(((Bitmap)localObject2).getWidth() * f1), (int)(f1 * ((Bitmap)localObject2).getHeight()), true);
          ((Bitmap)localObject2).recycle();
          localObject2 = localBitmap;
        }
      }
      label358:
      for (;;)
      {
        localBitmap = Bitmap.createBitmap(((Bitmap)localObject1).getWidth(), ((Bitmap)localObject1).getHeight() + ((Bitmap)localObject2).getHeight(), Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(localBitmap);
        if ((com.xueqiu.android.base.util.r.a(paramJsonObject, "insertPosition")) && (paramJsonObject.get("insertPosition").equals("top")))
        {
          localCanvas.drawBitmap((Bitmap)localObject2, 0.0F, 0.0F, null);
          localCanvas.drawBitmap((Bitmap)localObject1, 0.0F, ((Bitmap)localObject2).getHeight(), null);
        }
        for (;;)
        {
          ((Bitmap)localObject1).recycle();
          ((Bitmap)localObject2).recycle();
          localObject2 = localBitmap;
          return (Bitmap)localObject2;
          localCanvas.drawBitmap((Bitmap)localObject1, 0.0F, 0.0F, null);
          localCanvas.drawBitmap((Bitmap)localObject2, 0.0F, ((Bitmap)localObject1).getHeight(), null);
        }
      }
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.aq == null)
    {
      this.aq = ((FrameLayout)paramLayoutInflater.inflate(2130903357, paramViewGroup, false));
      this.ao = ((ProgressBar)this.aq.findViewById(2131624299));
      this.ao.setMax(100);
      this.e = ((SNBWebView)this.aq.findViewById(2131624332));
      this.ar = new o(this.e, this.aq.findViewById(2131624839));
      this.ap = new l(this, this.e);
      this.e.getSettings().setJavaScriptEnabled(true);
      this.e.getSettings().setCacheMode(2);
      this.e.getSettings().setAllowFileAccess(true);
      this.e.getSettings().setLoadWithOverviewMode(true);
      this.e.getSettings().setUseWideViewPort(true);
      this.e.getSettings().setSupportZoom(true);
      this.e.getSettings().setBuiltInZoomControls(false);
      this.e.getSettings().setDomStorageEnabled(true);
      if (Build.VERSION.SDK_INT >= 17) {
        this.e.getSettings().setMediaPlaybackRequiresUserGesture(false);
      }
      this.e.getSettings().setUserAgentString(String.format("Xueqiu Android %s", new Object[] { "8.5" }));
      this.e.setWebChromeClient(this.au);
      this.e.setDownloadListener(this.av);
      this.e.setBackgroundColor(com.xueqiu.android.base.r.a(2130772333, g()));
      this.f = ((FloatingActionMenu)this.aq.findViewById(2131624306));
      this.e.setWebViewClient(new n(this.ap, this.ar));
      if (!this.ak) {
        break label378;
      }
      paramLayoutInflater = f.a().b.find(this.b);
      if (paramLayoutInflater != null) {
        paramLayoutInflater.display(this.e, this.ar, this.ap, this.b);
      }
    }
    for (;;)
    {
      return this.aq;
      label378:
      this.e.loadUrl(this.b);
    }
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.a(paramInt1, paramInt2, paramIntent);
    Object localObject1;
    if ((paramInt2 == -1) && ((paramInt1 == 10001) || (paramInt1 == 10002) || (paramInt1 == 10005))) {
      if ((paramInt1 == 10001) && (paramIntent != null))
      {
        localObject1 = paramIntent.getData();
        if (((Uri)localObject1).toString().startsWith("file://")) {
          localObject1 = ((Uri)localObject1).toString().substring(7);
        }
      }
    }
    for (;;)
    {
      String str;
      Object localObject3;
      if ((localObject1 != null) && (new File((String)localObject1).exists()))
      {
        str = ((String)localObject1).substring(((String)localObject1).lastIndexOf(".") + 1, ((String)localObject1).length());
        localObject3 = new b();
        ((b)localObject3).a = 10003;
      }
      try
      {
        StringBuilder localStringBuilder = new StringBuilder(new String(Base64.encode(ad.a(ad.a((String)localObject1, this.h)), 0), Charset.forName("UTF-8")));
        localStringBuilder.append("," + str);
        ((b)localObject3).b = localStringBuilder.toString();
        a((b)localObject3, 0);
        if (paramInt1 == 10002) {
          new File((String)localObject1).delete();
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          label234:
          label272:
          aa.a(localException);
          a((b)localObject3, 1);
        }
      }
      if (paramInt1 == 10004)
      {
        if (paramInt2 != -1) {
          break label493;
        }
        if (paramIntent != null) {
          break label466;
        }
        if (this.an == null) {
          break label506;
        }
        paramIntent = new Uri[1];
        paramIntent[0] = Uri.parse(this.an);
      }
      for (;;)
      {
        this.am.onReceiveValue(paramIntent);
        for (;;)
        {
          this.am = null;
          return;
          localObject3 = g().getContentResolver().query((Uri)localObject1, null, null, null, null);
          if ((localObject3 == null) || (!((Cursor)localObject3).moveToFirst())) {
            break label511;
          }
          localObject1 = ((Cursor)localObject3).getString(((Cursor)localObject3).getColumnIndexOrThrow("_data"));
          ((Cursor)localObject3).moveToNext();
          break;
          if ((paramInt1 != 10002) && (paramInt1 != 10005)) {
            break label511;
          }
          localObject1 = a + "temp.jpg";
          break;
          if (((this.al.indexOfKey(paramInt1) < 0) && (paramInt2 != -1)) || (paramIntent == null)) {
            break label234;
          }
          localObject2 = (b)paramIntent.getParcelableExtra("extra_event");
          int i = paramIntent.getIntExtra("extra_event_result", 0);
          if (localObject2 == null) {
            break label234;
          }
          a((b)localObject2, i);
          break label234;
          label466:
          localObject2 = paramIntent.getDataString();
          if (localObject2 == null) {
            break label506;
          }
          paramIntent = new Uri[1];
          paramIntent[0] = Uri.parse((String)localObject2);
          break label272;
          label493:
          this.am.onReceiveValue(null);
        }
        label506:
        paramIntent = null;
      }
      label511:
      Object localObject2 = null;
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null)
    {
      this.b = this.r.getString("arg_url");
      this.ak = this.r.getBoolean("arg_is_module");
      this.d = ((b)this.r.getParcelable("arg_event"));
    }
    if (f.a().b == null)
    {
      aa.a(2131166256);
      g().finish();
      return;
    }
    if ((this.ak) || (com.xueqiu.android.common.q.a(this.b))) {}
    for (boolean bool = true;; bool = false)
    {
      CookieManager.getInstance().setAcceptCookie(bool);
      return;
    }
  }
  
  public final void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    Object localObject;
    if (this.c != null)
    {
      localObject = paramMenu.add(0, 2131623954, 0, this.c.a);
      if ((this.c.b != null) && (this.c.b.length() > 0)) {
        ((MenuItem)localObject).setIcon(new BitmapDrawable(h(), this.c.b));
      }
      ((MenuItem)localObject).setShowAsAction(2);
    }
    for (;;)
    {
      super.a(paramMenu, paramMenuInflater);
      return;
      if (!this.ak)
      {
        localObject = g().getTheme().obtainStyledAttributes(new int[] { 2130772131 });
        SubMenu localSubMenu = paramMenu.addSubMenu(0, 1, 0, "更多");
        MenuItem localMenuItem = localSubMenu.getItem();
        localMenuItem.setIcon(((TypedArray)localObject).getResourceId(0, 0));
        ak.a(localMenuItem, 2);
        localSubMenu.add(0, 2, 0, a(2131165774));
        localSubMenu.add(0, 3, 0, a(2131165376));
      }
    }
  }
  
  final void a(JsonObject paramJsonObject, Bitmap paramBitmap)
  {
    an localan = new an();
    if (paramJsonObject.has("title")) {
      localan.b = paramJsonObject.get("title").getAsString();
    }
    boolean bool;
    if (paramJsonObject.has("img"))
    {
      localan.e = paramJsonObject.get("img").getAsString();
      if ((!paramJsonObject.has("ignoreImage")) || (!paramJsonObject.get("ignoreImage").getAsBoolean())) {
        break label227;
      }
      bool = true;
      label82:
      localan.j = bool;
      if (paramBitmap == null) {
        break label233;
      }
      localan.g = paramBitmap;
    }
    for (;;)
    {
      paramBitmap = "";
      if (paramJsonObject.has("url"))
      {
        paramBitmap = paramJsonObject.get("url").getAsString();
        localan.d = paramBitmap;
      }
      if (paramJsonObject.has("description")) {
        localan.c = (paramJsonObject.get("description").getAsString() + paramBitmap);
      }
      paramBitmap = "";
      if (paramJsonObject.has("target")) {
        paramBitmap = paramJsonObject.get("target").getAsString();
      }
      if (!paramBitmap.equals("SinaWeibo")) {
        break label272;
      }
      aj.e(g(), localan);
      return;
      localan.f = BitmapFactory.decodeResource(h(), 2130837614);
      break;
      label227:
      bool = false;
      break label82;
      label233:
      if (paramJsonObject.has("imageBase64"))
      {
        paramBitmap = Base64.decode(paramJsonObject.get("imageBase64").getAsString(), 0);
        localan.g = BitmapFactory.decodeByteArray(paramBitmap, 0, paramBitmap.length);
      }
    }
    label272:
    if (paramBitmap.equals("FriendCircle"))
    {
      aj.c(g(), localan);
      return;
    }
    if (paramBitmap.equals("Wechat"))
    {
      aj.b(g(), localan);
      return;
    }
    if (paramBitmap.equals("QQ"))
    {
      aj.d(g(), localan);
      return;
    }
    aj.a(g(), localan, null);
  }
  
  final void a(JsonObject paramJsonObject, TradeAccount paramTradeAccount, int paramInt)
  {
    b localb = new b();
    localb.b = paramJsonObject.toString();
    com.xueqiu.android.trade.g.a(paramTradeAccount, g(), localb, paramInt);
    a(localb);
  }
  
  final void a(b paramb)
  {
    try
    {
      this.al.put(paramb.a, paramb);
      return;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
  
  public final void a(final l paraml, final JsonArray paramJsonArray)
  {
    this.f.setVisibility(0);
    this.f.a.removeAllViews();
    Object localObject1;
    if (paramJsonArray.size() > 0)
    {
      i = 0;
      if (i < paramJsonArray.size())
      {
        Object localObject2 = paramJsonArray.get(i).getAsJsonObject();
        String str1 = ((JsonObject)localObject2).get("title").getAsString();
        label84:
        boolean bool;
        label112:
        String str2;
        if (((JsonObject)localObject2).has("icon"))
        {
          localObject1 = ((JsonObject)localObject2).get("icon").getAsString();
          if ((!((JsonObject)localObject2).has("highlight")) || (!((JsonObject)localObject2).get("highlight").getAsBoolean())) {
            break label238;
          }
          bool = true;
          localObject2 = localObject1;
          if (!au.a((String)localObject1))
          {
            localObject2 = localObject1;
            if (!((String)localObject1).startsWith("http://"))
            {
              localObject2 = localObject1;
              if (!((String)localObject1).startsWith("https://"))
              {
                str2 = f.a().b.find(this.b).a();
                if (!((String)localObject1).startsWith("/")) {
                  break label244;
                }
              }
            }
          }
        }
        label238:
        label244:
        for (localObject2 = "";; localObject2 = "/")
        {
          localObject2 = String.format("file://%s%s%s", new Object[] { str2, localObject2, localObject1 });
          this.f.a(i, str1, (String)localObject2, bool);
          i += 1;
          break;
          localObject1 = "";
          break label84;
          bool = false;
          break label112;
        }
      }
    }
    for (int i = h().getDimensionPixelOffset(2131230805);; i = 0)
    {
      localObject1 = (FrameLayout.LayoutParams)this.e.getLayoutParams();
      ((FrameLayout.LayoutParams)localObject1).setMargins(0, 0, 0, i);
      this.e.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      this.f.setOnMenuItemSelectedListener(new com.xueqiu.android.common.widget.j()
      {
        public final boolean a(int paramAnonymousInt)
        {
          JsonObject localJsonObject = paramJsonArray.get(paramAnonymousInt).getAsJsonObject();
          l.a(c.a(c.this), localJsonObject.get("action").getAsString(), null);
          return true;
        }
      });
      return;
    }
  }
  
  public final boolean a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == 2131623954) && (this.c != null))
    {
      l.a(this.e, this.c.c, null);
      return true;
    }
    String str2;
    String str1;
    if (paramMenuItem.getItemId() == 2)
    {
      str2 = this.b;
      str1 = str2;
      if (str2.startsWith(com.xueqiu.android.common.q.a)) {
        str1 = str2.substring(com.xueqiu.android.common.q.a.length());
      }
      a(new Intent("android.intent.action.VIEW", Uri.parse(str1)));
    }
    for (;;)
    {
      return super.a(paramMenuItem);
      if (paramMenuItem.getItemId() == 3)
      {
        str2 = this.b;
        str1 = str2;
        if (str2.startsWith(com.xueqiu.android.common.q.a)) {
          str1 = str2.substring(com.xueqiu.android.common.q.a.length());
        }
        com.xueqiu.android.base.util.e.a(g(), Html.fromHtml(str1));
        aa.a("已复制到剪切板");
      }
    }
  }
  
  public final void b(JsonObject paramJsonObject)
  {
    final b localb;
    long l1;
    final long l2;
    try
    {
      localb = new b();
      localb.b = paramJsonObject.toString();
      a(localb);
      localObject = paramJsonObject.get("data").getAsJsonObject();
      l1 = ((JsonObject)localObject).get("trade_no").getAsLong();
      l2 = ((JsonObject)localObject).get("service_no").getAsLong();
      localObject = ((JsonObject)localObject).get("order_info").getAsJsonObject().get("recharge_url").getAsString();
      if (paramJsonObject.get("third_pay_channel").getAsString().equals("ALIPAY"))
      {
        rx.a.a(new rx.b() {}).a(rx.a.d.a.a()).b(rx.h.p.c()).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {});
        return;
      }
      if (!paramJsonObject.get("third_pay_channel").getAsString().equals("WXPAY")) {
        break label413;
      }
      paramJsonObject = WXAPIFactory.createWXAPI(f(), "wx8be10642d9baf61f");
      paramJsonObject.registerApp("wx8be10642d9baf61f");
      if (!paramJsonObject.isWXAppInstalled())
      {
        aa.a("请先安装微信");
        return;
      }
    }
    catch (Exception paramJsonObject)
    {
      aa.a(paramJsonObject);
      return;
    }
    Map localMap = az.c((String)localObject);
    final Object localObject = new PayReq();
    ((PayReq)localObject).appId = ((String)localMap.get("appid"));
    ((PayReq)localObject).partnerId = ((String)localMap.get("partnerid"));
    ((PayReq)localObject).prepayId = ((String)localMap.get("prepayid"));
    ((PayReq)localObject).nonceStr = ((String)localMap.get("noncestr"));
    ((PayReq)localObject).timeStamp = ((String)localMap.get("timestamp"));
    ((PayReq)localObject).sign = ((String)localMap.get("sign"));
    try
    {
      ((PayReq)localObject).packageValue = URLDecoder.decode((String)localMap.get("package"), "utf-8");
      paramJsonObject.sendReq((BaseReq)localObject);
      y();
      this.g = new BroadcastReceiver()
      {
        public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          c.this.z();
          if (paramAnonymousIntent.getAction().equals("wechat_intent_pay"))
          {
            if (paramAnonymousIntent.getIntExtra("extra_wechat_result_code", -1) != 0) {
              break label71;
            }
            c.a(c.this, localb, l2, this.c);
          }
          for (;;)
          {
            android.support.v4.content.r.a(c.this.f()).a(this);
            c.b(c.this);
            return;
            label71:
            c.a(c.this, localb, false);
          }
        }
      };
      paramJsonObject = new IntentFilter("wechat_intent_pay");
      android.support.v4.content.r.a(f()).a(this.g, paramJsonObject);
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      for (;;)
      {
        aa.a(localUnsupportedEncodingException);
      }
    }
    label413:
    aa.a(2131165797);
    a(localb, false);
  }
  
  public final void d()
  {
    if (this.ap != null) {
      l.a(this.ap.b, "window.viewDidDisappear", "");
    }
    super.d();
  }
  
  public final void e()
  {
    super.e();
  }
  
  public final void q()
  {
    if (this.aq != null)
    {
      this.aq.removeView(this.e);
      this.e.removeAllViews();
      this.e.destroy();
      this.aq = null;
    }
    if ((this.ap != null) && (!this.ap.c)) {
      this.ap.c = true;
    }
    if (this.g != null) {
      android.support.v4.content.r.a(f()).a(this.g);
    }
    super.q();
  }
  
  public final boolean y_()
  {
    if (this.d != null)
    {
      JsonObject localJsonObject = (JsonObject)m.a().fromJson(this.d.b, JsonObject.class);
      if (localJsonObject.has("cancel"))
      {
        Intent localIntent = new Intent();
        Bundle localBundle = new Bundle();
        localBundle.putParcelable("extra_event", this.d);
        localBundle.putInt("extra_event_result", 1);
        localIntent.putExtras(localBundle);
        g().setResult(-1, localIntent);
      }
      g().finish();
      if ("MODAL".equals(localJsonObject.get("type").getAsString())) {
        g().overridePendingTransition(2130968583, 2130968595);
      }
      return true;
    }
    return super.y_();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */