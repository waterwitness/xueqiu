package org.apache.cordova;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.concurrent.ExecutorService;

public class CordovaWebView
  extends WebView
{
  static final FrameLayout.LayoutParams h = new FrameLayout.LayoutParams(-1, -1, 17);
  public x a;
  l b;
  int c = 0;
  p d;
  m e;
  View f;
  WebChromeClient.CustomViewCallback g;
  private ArrayList<Integer> i = new ArrayList();
  private ArrayList<Integer> j = new ArrayList();
  private BroadcastReceiver k;
  private f l;
  private e m;
  private String n;
  private boolean o;
  private boolean p = false;
  private long q = 0L;
  private k r = null;
  private h s;
  
  public CordovaWebView(Context paramContext)
  {
    super(paramContext);
    if (f.class.isInstance(paramContext)) {
      this.l = ((f)paramContext);
    }
    for (;;)
    {
      f();
      d();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  public CordovaWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (f.class.isInstance(paramContext)) {
      this.l = ((f)paramContext);
    }
    for (;;)
    {
      setWebChromeClient(new e(this.l, this));
      c();
      f();
      d();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  public CordovaWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (f.class.isInstance(paramContext)) {
      this.l = ((f)paramContext);
    }
    for (;;)
    {
      setWebChromeClient(new e(this.l, this));
      f();
      d();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  @TargetApi(11)
  public CordovaWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramAttributeSet, paramInt, paramBoolean);
    if (f.class.isInstance(paramContext)) {
      this.l = ((f)paramContext);
    }
    for (;;)
    {
      setWebChromeClient(new e(this.l));
      c();
      f();
      d();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  private String a(String paramString1, String paramString2)
  {
    Bundle localBundle = this.l.getActivity().getIntent().getExtras();
    if (localBundle == null) {}
    do
    {
      return paramString2;
      paramString1 = localBundle.get(paramString1.toLowerCase(Locale.getDefault()));
    } while (paramString1 == null);
    return paramString1.toString();
  }
  
  private void c()
  {
    if ((Build.VERSION.SDK_INT < 11) || (Build.VERSION.SDK_INT > 17))
    {
      setWebViewClient(new l(this.l, this));
      return;
    }
    setWebViewClient(new n(this.l, this));
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  private void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: invokevirtual 205	org/apache/cordova/CordovaWebView:setInitialScale	(I)V
    //   5: aload_0
    //   6: iconst_0
    //   7: invokevirtual 209	org/apache/cordova/CordovaWebView:setVerticalScrollBarEnabled	(Z)V
    //   10: aload_0
    //   11: invokevirtual 213	org/apache/cordova/CordovaWebView:requestFocusFromTouch	()Z
    //   14: pop
    //   15: aload_0
    //   16: invokevirtual 217	org/apache/cordova/CordovaWebView:getSettings	()Landroid/webkit/WebSettings;
    //   19: astore_1
    //   20: aload_1
    //   21: iconst_1
    //   22: invokevirtual 222	android/webkit/WebSettings:setJavaScriptEnabled	(Z)V
    //   25: aload_1
    //   26: iconst_1
    //   27: invokevirtual 225	android/webkit/WebSettings:setJavaScriptCanOpenWindowsAutomatically	(Z)V
    //   30: aload_1
    //   31: getstatic 231	android/webkit/WebSettings$LayoutAlgorithm:NORMAL	Landroid/webkit/WebSettings$LayoutAlgorithm;
    //   34: invokevirtual 235	android/webkit/WebSettings:setLayoutAlgorithm	(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    //   37: ldc -37
    //   39: ldc -19
    //   41: iconst_1
    //   42: anewarray 83	java/lang/Class
    //   45: dup
    //   46: iconst_0
    //   47: getstatic 243	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   50: aastore
    //   51: invokevirtual 247	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   54: astore_2
    //   55: getstatic 252	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   58: astore_3
    //   59: ldc 95
    //   61: new 254	java/lang/StringBuilder
    //   64: dup
    //   65: ldc_w 256
    //   68: invokespecial 259	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   71: aload_3
    //   72: invokevirtual 263	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 264	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   81: pop
    //   82: getstatic 179	android/os/Build$VERSION:SDK_INT	I
    //   85: bipush 11
    //   87: if_icmpge +32 -> 119
    //   90: getstatic 252	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   93: ldc_w 266
    //   96: invokevirtual 270	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   99: ifeq +20 -> 119
    //   102: aload_2
    //   103: aload_1
    //   104: iconst_1
    //   105: anewarray 166	java/lang/Object
    //   108: dup
    //   109: iconst_0
    //   110: iconst_1
    //   111: invokestatic 274	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   114: aastore
    //   115: invokevirtual 280	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   118: pop
    //   119: aload_1
    //   120: iconst_0
    //   121: invokevirtual 283	android/webkit/WebSettings:setSaveFormData	(Z)V
    //   124: aload_1
    //   125: iconst_0
    //   126: invokevirtual 286	android/webkit/WebSettings:setSavePassword	(Z)V
    //   129: getstatic 179	android/os/Build$VERSION:SDK_INT	I
    //   132: bipush 15
    //   134: if_icmple +8 -> 142
    //   137: aload_1
    //   138: iconst_1
    //   139: invokevirtual 289	android/webkit/WebSettings:setAllowUniversalAccessFromFileURLs	(Z)V
    //   142: aload_0
    //   143: getfield 89	org/apache/cordova/CordovaWebView:l	Lorg/apache/cordova/f;
    //   146: invokeinterface 134 1 0
    //   151: invokevirtual 293	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   154: ldc_w 295
    //   157: iconst_0
    //   158: invokevirtual 301	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   161: invokevirtual 306	java/io/File:getPath	()Ljava/lang/String;
    //   164: astore_2
    //   165: aload_1
    //   166: iconst_1
    //   167: invokevirtual 309	android/webkit/WebSettings:setDatabaseEnabled	(Z)V
    //   170: aload_1
    //   171: aload_2
    //   172: invokevirtual 312	android/webkit/WebSettings:setDatabasePath	(Ljava/lang/String;)V
    //   175: aload_0
    //   176: getfield 89	org/apache/cordova/CordovaWebView:l	Lorg/apache/cordova/f;
    //   179: invokeinterface 134 1 0
    //   184: invokevirtual 315	android/app/Activity:getPackageName	()Ljava/lang/String;
    //   187: astore_3
    //   188: aload_0
    //   189: getfield 89	org/apache/cordova/CordovaWebView:l	Lorg/apache/cordova/f;
    //   192: invokeinterface 134 1 0
    //   197: invokevirtual 319	android/app/Activity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   200: aload_3
    //   201: sipush 128
    //   204: invokevirtual 325	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   207: getfield 330	android/content/pm/ApplicationInfo:flags	I
    //   210: iconst_2
    //   211: iand
    //   212: ifeq +15 -> 227
    //   215: getstatic 179	android/os/Build$VERSION:SDK_INT	I
    //   218: bipush 19
    //   220: if_icmplt +7 -> 227
    //   223: iconst_1
    //   224: invokestatic 333	org/apache/cordova/CordovaWebView:setWebContentsDebuggingEnabled	(Z)V
    //   227: aload_1
    //   228: aload_2
    //   229: invokevirtual 336	android/webkit/WebSettings:setGeolocationDatabasePath	(Ljava/lang/String;)V
    //   232: aload_1
    //   233: iconst_1
    //   234: invokevirtual 339	android/webkit/WebSettings:setDomStorageEnabled	(Z)V
    //   237: aload_1
    //   238: iconst_1
    //   239: invokevirtual 342	android/webkit/WebSettings:setGeolocationEnabled	(Z)V
    //   242: aload_1
    //   243: ldc2_w 343
    //   246: invokevirtual 348	android/webkit/WebSettings:setAppCacheMaxSize	(J)V
    //   249: aload_1
    //   250: aload_0
    //   251: getfield 89	org/apache/cordova/CordovaWebView:l	Lorg/apache/cordova/f;
    //   254: invokeinterface 134 1 0
    //   259: invokevirtual 293	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   262: ldc_w 295
    //   265: iconst_0
    //   266: invokevirtual 301	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   269: invokevirtual 306	java/io/File:getPath	()Ljava/lang/String;
    //   272: invokevirtual 351	android/webkit/WebSettings:setAppCachePath	(Ljava/lang/String;)V
    //   275: aload_1
    //   276: iconst_1
    //   277: invokevirtual 354	android/webkit/WebSettings:setAppCacheEnabled	(Z)V
    //   280: aload_0
    //   281: invokespecial 173	org/apache/cordova/CordovaWebView:e	()V
    //   284: new 356	android/content/IntentFilter
    //   287: dup
    //   288: invokespecial 357	android/content/IntentFilter:<init>	()V
    //   291: astore_1
    //   292: aload_1
    //   293: ldc_w 359
    //   296: invokevirtual 362	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   299: aload_0
    //   300: getfield 364	org/apache/cordova/CordovaWebView:k	Landroid/content/BroadcastReceiver;
    //   303: ifnonnull +33 -> 336
    //   306: aload_0
    //   307: new 6	org/apache/cordova/CordovaWebView$1
    //   310: dup
    //   311: aload_0
    //   312: invokespecial 366	org/apache/cordova/CordovaWebView$1:<init>	(Lorg/apache/cordova/CordovaWebView;)V
    //   315: putfield 364	org/apache/cordova/CordovaWebView:k	Landroid/content/BroadcastReceiver;
    //   318: aload_0
    //   319: getfield 89	org/apache/cordova/CordovaWebView:l	Lorg/apache/cordova/f;
    //   322: invokeinterface 134 1 0
    //   327: aload_0
    //   328: getfield 364	org/apache/cordova/CordovaWebView:k	Landroid/content/BroadcastReceiver;
    //   331: aload_1
    //   332: invokevirtual 370	android/app/Activity:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   335: pop
    //   336: aload_0
    //   337: new 372	org/apache/cordova/x
    //   340: dup
    //   341: aload_0
    //   342: aload_0
    //   343: getfield 89	org/apache/cordova/CordovaWebView:l	Lorg/apache/cordova/f;
    //   346: invokespecial 375	org/apache/cordova/x:<init>	(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)V
    //   349: putfield 377	org/apache/cordova/CordovaWebView:a	Lorg/apache/cordova/x;
    //   352: aload_0
    //   353: new 379	org/apache/cordova/p
    //   356: dup
    //   357: aload_0
    //   358: aload_0
    //   359: getfield 89	org/apache/cordova/CordovaWebView:l	Lorg/apache/cordova/f;
    //   362: invokespecial 380	org/apache/cordova/p:<init>	(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)V
    //   365: putfield 382	org/apache/cordova/CordovaWebView:d	Lorg/apache/cordova/p;
    //   368: aload_0
    //   369: new 384	org/apache/cordova/m
    //   372: dup
    //   373: aload_0
    //   374: getfield 377	org/apache/cordova/CordovaWebView:a	Lorg/apache/cordova/x;
    //   377: aload_0
    //   378: getfield 382	org/apache/cordova/CordovaWebView:d	Lorg/apache/cordova/p;
    //   381: invokespecial 387	org/apache/cordova/m:<init>	(Lorg/apache/cordova/x;Lorg/apache/cordova/p;)V
    //   384: putfield 389	org/apache/cordova/CordovaWebView:e	Lorg/apache/cordova/m;
    //   387: aload_0
    //   388: new 391	org/apache/cordova/h
    //   391: dup
    //   392: aload_0
    //   393: invokevirtual 394	org/apache/cordova/CordovaWebView:getContext	()Landroid/content/Context;
    //   396: aload_0
    //   397: getfield 377	org/apache/cordova/CordovaWebView:a	Lorg/apache/cordova/x;
    //   400: invokespecial 397	org/apache/cordova/h:<init>	(Landroid/content/Context;Lorg/apache/cordova/x;)V
    //   403: putfield 399	org/apache/cordova/CordovaWebView:s	Lorg/apache/cordova/h;
    //   406: getstatic 179	android/os/Build$VERSION:SDK_INT	I
    //   409: bipush 17
    //   411: if_icmpge +99 -> 510
    //   414: ldc 95
    //   416: ldc_w 401
    //   419: invokestatic 403	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   422: pop
    //   423: return
    //   424: astore_2
    //   425: ldc 95
    //   427: ldc_w 405
    //   430: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   433: pop
    //   434: goto -315 -> 119
    //   437: astore_2
    //   438: ldc 95
    //   440: ldc_w 407
    //   443: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   446: pop
    //   447: goto -328 -> 119
    //   450: astore_2
    //   451: ldc 95
    //   453: ldc_w 409
    //   456: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   459: pop
    //   460: goto -341 -> 119
    //   463: astore_2
    //   464: ldc 95
    //   466: ldc_w 411
    //   469: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   472: pop
    //   473: goto -354 -> 119
    //   476: astore_3
    //   477: ldc 95
    //   479: ldc_w 413
    //   482: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   485: pop
    //   486: aload_3
    //   487: invokevirtual 416	java/lang/IllegalArgumentException:printStackTrace	()V
    //   490: goto -263 -> 227
    //   493: astore_3
    //   494: ldc 95
    //   496: ldc_w 418
    //   499: invokestatic 102	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   502: pop
    //   503: aload_3
    //   504: invokevirtual 419	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   507: goto -280 -> 227
    //   510: aload_0
    //   511: aload_0
    //   512: getfield 389	org/apache/cordova/CordovaWebView:e	Lorg/apache/cordova/m;
    //   515: ldc_w 421
    //   518: invokevirtual 425	org/apache/cordova/CordovaWebView:addJavascriptInterface	(Ljava/lang/Object;Ljava/lang/String;)V
    //   521: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	522	0	this	CordovaWebView
    //   19	313	1	localObject1	Object
    //   54	175	2	localObject2	Object
    //   424	1	2	localNoSuchMethodException	NoSuchMethodException
    //   437	1	2	localIllegalArgumentException1	IllegalArgumentException
    //   450	1	2	localIllegalAccessException	IllegalAccessException
    //   463	1	2	localInvocationTargetException	java.lang.reflect.InvocationTargetException
    //   58	143	3	str	String
    //   476	11	3	localIllegalArgumentException2	IllegalArgumentException
    //   493	11	3	localNameNotFoundException	android.content.pm.PackageManager.NameNotFoundException
    // Exception table:
    //   from	to	target	type
    //   37	119	424	java/lang/NoSuchMethodException
    //   37	119	437	java/lang/IllegalArgumentException
    //   37	119	450	java/lang/IllegalAccessException
    //   37	119	463	java/lang/reflect/InvocationTargetException
    //   175	227	476	java/lang/IllegalArgumentException
    //   175	227	493	android/content/pm/PackageManager$NameNotFoundException
  }
  
  private void e()
  {
    getSettings().getUserAgentString();
  }
  
  private void f()
  {
    if ("true".equals(a("Fullscreen", "false")))
    {
      this.l.getActivity().getWindow().clearFlags(2048);
      this.l.getActivity().getWindow().setFlags(1024, 1024);
    }
  }
  
  public final void a()
  {
    loadUrl("javascript:try{cordova.require('cordova/channel').onDestroy.fire();}catch(e){console.log('exception firing destroy event from native');};");
    loadUrl("about:blank");
    if (this.a != null) {
      this.a.b();
    }
    if (this.k != null) {}
    try
    {
      this.l.getActivity().unregisterReceiver(this.k);
      return;
    }
    catch (Exception localException)
    {
      Log.e("CordovaWebView", "Error unregistering configuration receiver: " + localException.getMessage(), localException);
    }
  }
  
  final void a(String paramString)
  {
    if ((o.a()) && (!paramString.startsWith("javascript:"))) {
      o.a("CordovaWebView", ">>> loadUrlNow()");
    }
    if ((paramString.startsWith("file://")) || (paramString.startsWith("javascript:")) || (c.b(paramString))) {
      super.loadUrl(paramString);
    }
  }
  
  public final void a(String paramString, Object paramObject)
  {
    if (this.a != null)
    {
      x localx = this.a;
      if (localx.b.onMessage(paramString, paramObject) == null)
      {
        paramString = localx.a.values().iterator();
        while (paramString.hasNext()) {
          if (((w)paramString.next()).c != null) {
            g.c();
          }
        }
      }
    }
  }
  
  public final void a(z paramz, String paramString)
  {
    p localp = this.d;
    if (paramString == null)
    {
      Log.e("JsMessageQueue", "Got plugin result with no callbackId", new Throwable());
      return;
    }
    if (paramz.a == aa.a - 1) {}
    for (int i1 = 1;; i1 = 0)
    {
      boolean bool = paramz.c;
      if ((i1 != 0) && (bool)) {
        break;
      }
      paramz = new r(paramz, paramString);
      try
      {
        localp.c.add(paramz);
        if (!localp.b) {
          localp.d[localp.a].a();
        }
        return;
      }
      finally {}
    }
  }
  
  public final void b()
  {
    Log.d("CordovaWebView", "Hiding Custom View");
    if (this.f == null) {
      return;
    }
    this.f.setVisibility(8);
    ((ViewGroup)getParent()).removeView(this.f);
    this.f = null;
    this.g.onCustomViewHidden();
    setVisibility(0);
  }
  
  public h getResourceApi()
  {
    return this.s;
  }
  
  public e getWebChromeClient()
  {
    return this.m;
  }
  
  public void loadUrl(final String paramString)
  {
    if ((paramString.equals("about:blank")) || (paramString.startsWith("javascript:")))
    {
      a(paramString);
      return;
    }
    o.a("CordovaWebView", ">>> loadUrl(" + paramString + ")");
    this.n = paramString;
    this.a.a();
    final int i1 = this.c;
    final Runnable local3 = new Runnable()
    {
      public final void run()
      {
        jdField_this.stopLoading();
        o.d("CordovaWebView", "CordovaWebView: TIMEOUT ERROR!");
        if (CordovaWebView.this.b != null) {
          CordovaWebView.this.b.onReceivedError(jdField_this, -6, "The connection to the server was unsuccessful.", paramString);
        }
      }
    }
    {
      public final void run()
      {
        for (;;)
        {
          try {}catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
            continue;
          }
          try
          {
            wait(this.a);
            if (i1 == i1) {
              CordovaWebView.b(jdField_this).getActivity().runOnUiThread(this.d);
            }
            return;
          }
          finally {}
        }
      }
    };
    this.l.getActivity().runOnUiThread(new Runnable()
    {
      public final void run()
      {
        CordovaWebView.b(CordovaWebView.this).getThreadPool().execute(local3);
        jdField_this.a(paramString);
      }
    });
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.i.contains(Integer.valueOf(paramInt)))
    {
      if (paramInt == 25)
      {
        o.a("CordovaWebView", "Down Key Hit");
        loadUrl("javascript:cordova.fireDocumentEvent('volumedownbutton');");
        return true;
      }
      if (paramInt == 24)
      {
        o.a("CordovaWebView", "Up Key Hit");
        loadUrl("javascript:cordova.fireDocumentEvent('volumeupbutton');");
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    Object localObject;
    if (paramInt == 4)
    {
      paramKeyEvent = copyBackForwardList().getItemAtIndex(0);
      if (paramKeyEvent != null)
      {
        paramKeyEvent = paramKeyEvent.getUrl();
        localObject = getUrl();
        o.a("CordovaWebView", "The current URL is: " + (String)localObject);
        o.a("CordovaWebView", "The URL at item 0 is: " + paramKeyEvent);
      }
      for (boolean bool = ((String)localObject).equals(paramKeyEvent); (!bool) || (this.o); bool = false) {
        return true;
      }
      return false;
    }
    if (paramInt == 82)
    {
      localObject = getFocusedChild();
      if (localObject != null)
      {
        ((InputMethodManager)this.l.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(((View)localObject).getWindowToken(), 0);
        this.l.getActivity().openOptionsMenu();
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    int i1 = 0;
    int i2 = 0;
    boolean bool = true;
    if (paramInt == 4) {
      if (this.f != null) {
        b();
      }
    }
    do
    {
      for (;;)
      {
        bool = super.onKeyUp(paramInt, paramKeyEvent);
        do
        {
          return bool;
          if (this.o)
          {
            loadUrl("javascript:cordova.fireDocumentEvent('backbutton');");
            return true;
          }
          if (super.canGoBack())
          {
            WebBackForwardList localWebBackForwardList = copyBackForwardList();
            int i3 = localWebBackForwardList.getSize();
            i1 = i2;
            while (i1 < i3)
            {
              String str = localWebBackForwardList.getItemAtIndex(i1).getUrl();
              o.a("CordovaWebView", "The URL at index: " + Integer.toString(i1) + " is " + str);
              i1 += 1;
            }
            super.goBack();
            i1 = 1;
          }
        } while (i1 != 0);
        this.l.getActivity().finish();
      }
      if (paramInt == 82)
      {
        if (this.q < paramKeyEvent.getEventTime()) {
          loadUrl("javascript:cordova.fireDocumentEvent('menubutton');");
        }
        this.q = paramKeyEvent.getEventTime();
        return super.onKeyUp(paramInt, paramKeyEvent);
      }
      if (paramInt == 84)
      {
        loadUrl("javascript:cordova.fireDocumentEvent('searchbutton');");
        return true;
      }
    } while (!this.j.contains(Integer.valueOf(paramInt)));
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    a("onScrollChanged", new ab(paramInt1, paramInt2, paramInt3, this));
  }
  
  public WebBackForwardList restoreState(Bundle paramBundle)
  {
    paramBundle = super.restoreState(paramBundle);
    Log.d("CordovaWebView", "WebView restoration crew now restoring!");
    this.a.a();
    return paramBundle;
  }
  
  public void setWebChromeClient(e parame)
  {
    this.m = parame;
    super.setWebChromeClient(parame);
  }
  
  public void setWebViewClient(l paraml)
  {
    this.b = paraml;
    super.setWebViewClient(paraml);
  }
  
  public void stopLoading()
  {
    this.b.isCurrentlyLoading = false;
    super.stopLoading();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\CordovaWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */