package com.xueqiu.android.common.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Parcelable;
import android.text.TextUtils;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.tencent.mm.sdk.modelmsg.SendMessageToWX.Req;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage.IMediaObject;
import com.tencent.mm.sdk.modelmsg.WXWebpageObject;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.e;
import com.xueqiu.android.base.util.k;
import com.xueqiu.android.common.ShareActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.w;
import com.xueqiu.android.community.WriteStatusActivity;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.SelectTalkActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public final class aj
{
  Activity a;
  public an b;
  am c;
  String d = null;
  boolean e = false;
  Map<String, Intent> f;
  List<ResolveInfo> g;
  List<Map<String, Object>> h;
  private IWXAPI i;
  private boolean j = false;
  
  private aj(Activity paramActivity, an paraman)
  {
    this.a = paramActivity;
    this.b = paraman;
    if (this.b.g != null) {
      this.d = a(this.b.g).getAbsolutePath();
    }
    this.i = WXAPIFactory.createWXAPI(this.a, "wx8be10642d9baf61f");
    this.i.registerApp("wx8be10642d9baf61f");
  }
  
  public static aj a(Activity paramActivity, an paraman)
  {
    try
    {
      paramActivity = new aj(paramActivity, paraman);
      paramActivity.j = true;
      paraman = q.a().b();
      p local2 = new p()
      {
        public final void a(y paramAnonymousy) {}
      };
      paraman.g.f(local2);
      return paramActivity;
    }
    catch (Exception paramActivity)
    {
      aa.a(paramActivity);
    }
    return null;
  }
  
  public static aj a(Activity paramActivity, an paraman, am paramam)
  {
    try
    {
      paramActivity = new aj(paramActivity, paraman);
      paramActivity.a();
      paramActivity.c = paramam;
      return paramActivity;
    }
    catch (Exception paramActivity)
    {
      aa.a(paramActivity);
    }
    return null;
  }
  
  /* Error */
  private static File a(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: new 64	java/io/File
    //   3: dup
    //   4: new 64	java/io/File
    //   7: dup
    //   8: invokestatic 131	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   11: ldc -123
    //   13: invokespecial 136	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   16: ldc -118
    //   18: invokespecial 136	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 142	java/io/File:exists	()Z
    //   26: ifne +33 -> 59
    //   29: aload_1
    //   30: invokevirtual 145	java/io/File:mkdirs	()Z
    //   33: ifne +26 -> 59
    //   36: ldc -109
    //   38: new 149	java/lang/StringBuilder
    //   41: dup
    //   42: ldc -105
    //   44: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload_1
    //   48: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokestatic 166	com/xueqiu/android/base/util/v:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   57: aconst_null
    //   58: areturn
    //   59: new 64	java/io/File
    //   62: dup
    //   63: aload_1
    //   64: new 149	java/lang/StringBuilder
    //   67: dup
    //   68: ldc -88
    //   70: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   73: invokestatic 174	java/lang/System:currentTimeMillis	()J
    //   76: invokevirtual 177	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   79: ldc -77
    //   81: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokespecial 136	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   90: astore 4
    //   92: aload 4
    //   94: invokevirtual 185	java/io/File:delete	()Z
    //   97: ifne +28 -> 125
    //   100: ldc -109
    //   102: new 149	java/lang/StringBuilder
    //   105: dup
    //   106: ldc -69
    //   108: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   111: aload 4
    //   113: invokevirtual 68	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   116: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 166	com/xueqiu/android/base/util/v:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: new 189	java/io/FileOutputStream
    //   128: dup
    //   129: aload 4
    //   131: invokespecial 192	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   134: astore_2
    //   135: aload_2
    //   136: astore_1
    //   137: aload_0
    //   138: getstatic 198	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   141: bipush 100
    //   143: aload_2
    //   144: invokevirtual 204	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   147: pop
    //   148: aload_2
    //   149: invokevirtual 207	java/io/FileOutputStream:close	()V
    //   152: aload 4
    //   154: areturn
    //   155: astore_3
    //   156: aconst_null
    //   157: astore_0
    //   158: aload_0
    //   159: astore_1
    //   160: ldc -109
    //   162: new 149	java/lang/StringBuilder
    //   165: dup
    //   166: ldc -47
    //   168: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   171: aload 4
    //   173: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   176: ldc -45
    //   178: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: aload_3
    //   182: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokestatic 166	com/xueqiu/android/base/util/v:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   191: aload_0
    //   192: astore_1
    //   193: aload_3
    //   194: invokestatic 116	com/xueqiu/android/base/util/aa:a	(Ljava/lang/Throwable;)V
    //   197: aload_0
    //   198: ifnull -141 -> 57
    //   201: aload_0
    //   202: invokevirtual 207	java/io/FileOutputStream:close	()V
    //   205: aconst_null
    //   206: areturn
    //   207: astore_0
    //   208: aconst_null
    //   209: areturn
    //   210: astore_0
    //   211: aconst_null
    //   212: astore_1
    //   213: aload_1
    //   214: ifnull +7 -> 221
    //   217: aload_1
    //   218: invokevirtual 207	java/io/FileOutputStream:close	()V
    //   221: aload_0
    //   222: athrow
    //   223: astore_0
    //   224: goto -72 -> 152
    //   227: astore_1
    //   228: goto -7 -> 221
    //   231: astore_0
    //   232: goto -19 -> 213
    //   235: astore_3
    //   236: aload_2
    //   237: astore_0
    //   238: goto -80 -> 158
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	241	0	paramBitmap	Bitmap
    //   21	197	1	localObject	Object
    //   227	1	1	localIOException	java.io.IOException
    //   134	103	2	localFileOutputStream	java.io.FileOutputStream
    //   155	39	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   235	1	3	localFileNotFoundException2	java.io.FileNotFoundException
    //   90	82	4	localFile	File
    // Exception table:
    //   from	to	target	type
    //   125	135	155	java/io/FileNotFoundException
    //   201	205	207	java/io/IOException
    //   125	135	210	finally
    //   148	152	223	java/io/IOException
    //   217	221	227	java/io/IOException
    //   137	148	231	finally
    //   160	191	231	finally
    //   193	197	231	finally
    //   137	148	235	java/io/FileNotFoundException
  }
  
  private void a(al paramal)
  {
    paramal = new ak(this, this.b, paramal);
    if (Build.VERSION.SDK_INT >= 11)
    {
      paramal.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
      return;
    }
    paramal.execute(null);
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    Object localObject = new Intent("android.intent.action.SEND");
    ((Intent)localObject).setType("*/*");
    paramContext = paramContext.getPackageManager().queryIntentActivities((Intent)localObject, 65536).iterator();
    while (paramContext.hasNext())
    {
      localObject = ((ResolveInfo)paramContext.next()).activityInfo.packageName;
      if ((localObject != null) && (((String)localObject).equals(paramString))) {
        return true;
      }
    }
    return false;
  }
  
  private boolean a(String paramString)
  {
    return a(this.a, paramString);
  }
  
  public static void b(Activity paramActivity, an paraman)
  {
    new aj(paramActivity, paraman).a(Boolean.valueOf(false));
  }
  
  public static void c(Activity paramActivity, an paraman)
  {
    new aj(paramActivity, paraman).a(Boolean.valueOf(true));
  }
  
  public static void d(Activity paramActivity, an paraman)
  {
    paramActivity = new aj(paramActivity, paraman);
    if (!Boolean.valueOf(paramActivity.a("com.tencent.mobileqq")).booleanValue()) {
      aa.a(2131166287);
    }
    String str;
    do
    {
      return;
      while (!((Iterator)localObject).hasNext())
      {
        paraman = new Intent("android.intent.action.SEND");
        paraman.setType("*/*");
        localObject = paramActivity.a.getPackageManager().queryIntentActivities(paraman, 65536).iterator();
      }
      paraman = (ResolveInfo)((Iterator)localObject).next();
      str = paraman.activityInfo.packageName;
    } while ((str == null) || (!str.startsWith("com.tencent.mobileqq")) || (!paraman.activityInfo.name.equals("com.tencent.mobileqq.activity.JumpActivity")));
    Object localObject = new Intent("android.intent.action.SEND");
    ((Intent)localObject).setType("text/plain");
    ((Intent)localObject).putExtra("android.intent.extra.TEXT", paramActivity.b.c);
    ((Intent)localObject).setClassName(str, paraman.activityInfo.name);
    paramActivity.a.startActivity((Intent)localObject);
  }
  
  private boolean d()
  {
    return (this.b.e != null) && (this.b.e.length() > 0) && (this.b.f == null);
  }
  
  public static void e(Activity paramActivity, an paraman)
  {
    new aj(paramActivity, paraman).c();
  }
  
  public final void a()
  {
    if ((this.a instanceof ShareActivity)) {}
    Object localObject1;
    label385:
    label558:
    label679:
    label908:
    label1120:
    label1393:
    do
    {
      return;
      StringBuilder localStringBuilder;
      final List localList;
      Object localObject4;
      Object localObject5;
      Object localObject6;
      Object localObject3;
      if (TextUtils.isEmpty(this.b.c))
      {
        localObject1 = "";
        localStringBuilder = new StringBuilder((String)localObject1);
        localList = Arrays.asList(new String[] { this.a.getString(2131166083), this.a.getString(2131166084), this.a.getString(2131166087), this.a.getString(2131166086), this.a.getString(2131166080), this.a.getString(2131166082), this.a.getString(2131165376), this.a.getString(2131166075) });
        this.f = new TreeMap(new Comparator() {});
        localObject4 = this.f;
        localObject5 = localList.get(0);
        localObject1 = this.a;
        localObject6 = WriteStatusActivity.class.getName();
        if (this.b.i != 0) {
          break label908;
        }
        localObject2 = this.b.a;
        localObject1 = new Intent((Context)localObject1, WriteStatusActivity.class);
        ((Intent)localObject1).putExtra("extra_write_type", 2);
        ((Intent)localObject1).putExtra("extra_status_id", ((Status)localObject2).getStatusId());
        if ((((Status)localObject2).getPaidMention() != null) && (((Status)localObject2).getPaidMention().size() > 0)) {
          ((Intent)localObject1).putExtra("extra_paid_mention", (Parcelable)((Status)localObject2).getPaidMention().get(0));
        }
        ((Intent)localObject1).putExtra("extra_paid_to_user", ((Status)localObject2).getUser());
        if (((Status)localObject2).getRetweetedStatus() != null)
        {
          localObject3 = ((Status)localObject2).getUser().getScreenName();
          localObject3 = "//<a href=\"/n/" + (String)localObject3 + "\" target=\"_blank\">@" + (String)localObject3 + "</a>:";
          ((Intent)localObject1).putExtra("extra_retweet_text", (String)localObject3 + ((Status)localObject2).getText());
        }
        ((Map)localObject4).put(localObject5, localObject1);
        localObject1 = this.f;
        localObject2 = localList.get(1);
        localObject3 = SelectTalkActivity.class.getName();
        localObject4 = new Intent("android.intent.action.SEND");
        if (this.b.i != 2) {
          ((Intent)localObject4).putExtra("android.intent.extra.SUBJECT", this.b.b);
        }
        ((Intent)localObject4).setType("text/plain");
        if ((!this.b.j) && (this.b.g != null))
        {
          ((Intent)localObject4).setType("image/*");
          if (this.d != null) {
            ((Intent)localObject4).putExtra("android.intent.extra.STREAM", Uri.parse("file://" + this.d));
          }
        }
        if (this.b.i != 0) {
          break label1120;
        }
        ((Intent)localObject4).putExtra("android.intent.extra.TEXT", this.b.d);
        ((Intent)localObject4).setClassName("com.xueqiu.android", (String)localObject3);
        ((Map)localObject1).put(localObject2, localObject4);
        if ((this.b.d != null) && (this.b.d.length() > 0)) {
          this.f.put(localList.get(6), null);
        }
        localObject1 = new Intent("android.intent.action.SEND");
        ((Intent)localObject1).setType("*/*");
        localObject2 = this.a.getPackageManager();
        this.g = ((PackageManager)localObject2).queryIntentActivities((Intent)localObject1, 65536);
        this.h = new ArrayList();
        localObject3 = this.g.iterator();
      }
      for (;;)
      {
        if (!((Iterator)localObject3).hasNext()) {
          break label1393;
        }
        localObject4 = (ResolveInfo)((Iterator)localObject3).next();
        localObject5 = ((ResolveInfo)localObject4).activityInfo.packageName;
        if ((localObject5 != null) && (((String)localObject5).startsWith("com.tencent.mobileqq")) && (((ResolveInfo)localObject4).activityInfo.name.equals("com.tencent.mobileqq.activity.JumpActivity")))
        {
          localObject6 = new Intent("android.intent.action.SEND");
          ((Intent)localObject6).setType("text/plain");
          if ((!this.b.j) && (this.b.g != null))
          {
            ((Intent)localObject6).setType("image/*");
            ((Intent)localObject6).putExtra("android.intent.extra.STREAM", Uri.parse("file://" + this.d));
          }
          if (TextUtils.isEmpty(localStringBuilder.toString())) {}
          for (localObject1 = this.b.b;; localObject1 = localStringBuilder.toString())
          {
            ((Intent)localObject6).putExtra("android.intent.extra.TEXT", (String)localObject1);
            ((Intent)localObject6).setClassName((String)localObject5, ((ResolveInfo)localObject4).activityInfo.name);
            this.f.put(localList.get(5), localObject6);
            ((Iterator)localObject3).remove();
            break label679;
            localObject1 = this.b.c;
            break;
            localObject2 = new Intent("android.intent.action.SEND");
            ((Intent)localObject2).setType("text/plain");
            if ((this.b.i != 2) && (this.b.i != 3)) {
              ((Intent)localObject2).putExtra("android.intent.extra.SUBJECT", this.b.b);
            }
            localObject3 = this.b.c;
            localObject1 = localObject3;
            if (this.b.i == 3)
            {
              String str = this.a.getString(2131166153);
              localObject1 = localObject3;
              if (((String)localObject3).indexOf(str) > 0)
              {
                localObject1 = ((String)localObject3).substring(0, ((String)localObject3).indexOf(str));
                localObject1 = (String)localObject1 + "。";
              }
            }
            ((Intent)localObject2).putExtra("android.intent.extra.TEXT", (String)localObject1);
            if (this.b.g != null)
            {
              ((Intent)localObject2).setType("image/*");
              if (this.d != null) {
                ((Intent)localObject2).putExtra("android.intent.extra.STREAM", Uri.parse("file://" + this.d));
              }
            }
            ((Intent)localObject2).setClassName("com.xueqiu.android", (String)localObject6);
            localObject1 = localObject2;
            break label385;
            ((Intent)localObject4).putExtra("android.intent.extra.TEXT", this.b.c);
            break label558;
          }
        }
        if ((localObject5 != null) && (((String)localObject5).startsWith("com.sina.weibo")))
        {
          localObject6 = new Intent("android.intent.action.SEND");
          ((Intent)localObject6).putExtra("android.intent.extra.SUBJECT", this.b.b);
          ((Intent)localObject6).setType("text/plain");
          if (this.b.g != null)
          {
            ((Intent)localObject6).setType("image/*");
            ((Intent)localObject6).putExtra("android.intent.extra.STREAM", Uri.parse("file://" + this.d));
          }
          if (TextUtils.isEmpty(localStringBuilder.toString())) {}
          for (localObject1 = this.b.b;; localObject1 = localStringBuilder.toString())
          {
            ((Intent)localObject6).putExtra("android.intent.extra.TEXT", (String)localObject1);
            ((Intent)localObject6).setClassName((String)localObject5, ((ResolveInfo)localObject4).activityInfo.name);
            this.f.put(localList.get(2), localObject6);
            ((Iterator)localObject3).remove();
            break;
          }
        }
        localObject1 = new HashMap();
        ((Map)localObject1).put("title", ((ResolveInfo)localObject4).loadLabel((PackageManager)localObject2).toString());
        ((Map)localObject1).put("icon", ((ResolveInfo)localObject4).loadIcon((PackageManager)localObject2));
        this.h.add(localObject1);
      }
      if ((this.i.isWXAppInstalled()) && (this.i.isWXAppSupportAPI()))
      {
        this.f.put(localList.get(3), null);
        this.f.put(localList.get(4), null);
      }
      localObject1 = (String[])this.f.keySet().toArray(new String[this.f.keySet().size()]);
    } while ((localObject1 == null) || (localObject1.length <= 0));
    Object localObject2 = new Intent(this.a, ShareActivity.class);
    ((Intent)localObject2).addFlags(536870912);
    ((Intent)localObject2).putExtra("showItem", (String[])localObject1);
    if (this.j) {
      ((Intent)localObject2).putExtra("extra_type", "type_comment");
    }
    if (this.e) {
      ((Intent)localObject2).putExtra("extra_has_share_title", true);
    }
    this.a.startActivity((Intent)localObject2);
    this.a.overridePendingTransition(2130968585, 2130968585);
    w.a().a = new com.xueqiu.android.common.v()
    {
      public final void a()
      {
        if (aj.this.c != null) {
          aj.this.c.b(0);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "雪球动态");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.a.startActivity((Intent)aj.this.f.get(aj.this.a.getString(2131166083)));
        }
      }
      
      public final void b()
      {
        if (aj.this.c != null) {
          aj.this.c.b(1);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "雪球聊天");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.a.startActivity((Intent)aj.this.f.get(aj.this.a.getString(2131166084)));
        }
      }
      
      public final void c()
      {
        if (aj.this.c != null) {
          aj.this.c.b(2);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "微信");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.a(Boolean.valueOf(false));
        }
      }
      
      public final void d()
      {
        if (aj.this.c != null) {
          aj.this.c.b(3);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "朋友圈");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.a(Boolean.valueOf(true));
        }
      }
      
      public final void e()
      {
        if (aj.this.c != null) {
          aj.this.c.b(4);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "微博");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.a.startActivity((Intent)aj.this.f.get(aj.this.a.getString(2131166087)));
        }
      }
      
      public final void f()
      {
        if (aj.this.c != null) {
          aj.this.c.b(5);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "QQ");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.a.startActivity((Intent)aj.this.f.get(aj.this.a.getString(2131166082)));
        }
      }
      
      public final void g()
      {
        if (aj.this.c != null) {
          aj.this.c.b(6);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "邮件");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.a(aj.this.b.c, aj.this.b.b);
        }
      }
      
      public final void h()
      {
        if (aj.this.c != null) {
          aj.this.c.b(7);
        }
        for (;;)
        {
          SNBEvent localSNBEvent = new SNBEvent(1000, 12);
          localSNBEvent.addProperty("type", "复制");
          localSNBEvent.addProperty("url", aj.this.b.d);
          i.a().a(localSNBEvent);
          return;
          aj.this.b();
        }
      }
    };
  }
  
  public final void a(final int paramInt)
  {
    if (this.b.e != null)
    {
      Object localObject = new al()
      {
        public final void a()
        {
          aj.this.b(paramInt);
        }
      };
      localObject = new ak(this, this.b, (al)localObject);
      if (Build.VERSION.SDK_INT >= 11)
      {
        ((ak)localObject).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
        return;
      }
      ((ak)localObject).execute(null);
      return;
    }
    b(paramInt);
  }
  
  final void a(final Boolean paramBoolean)
  {
    int k = 0;
    if ((this.i.isWXAppInstalled()) && (this.i.isWXAppSupportAPI())) {}
    for (boolean bool = true; !Boolean.valueOf(bool).booleanValue(); bool = false)
    {
      aa.a(2131166288);
      return;
    }
    if (d())
    {
      a(new al()
      {
        public final void a()
        {
          aj.this.a(paramBoolean);
        }
      });
      return;
    }
    if ((!this.b.j) && (this.b.g != null))
    {
      localObject = new Intent("android.intent.action.SEND");
      ((Intent)localObject).setType("image/*");
      if (paramBoolean.booleanValue()) {
        ((Intent)localObject).setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.tools.ShareToTimeLineUI"));
      }
      for (;;)
      {
        ((Intent)localObject).setFlags(268435456);
        try
        {
          paramBoolean = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM), "/Camera/");
          if (!paramBoolean.exists()) {
            paramBoolean.mkdir();
          }
          paramBoolean = new File(paramBoolean, System.currentTimeMillis() + ".jpg");
          if (paramBoolean.exists()) {
            paramBoolean.delete();
          }
          paramBoolean.createNewFile();
          k.a(paramBoolean, this.b.g);
          this.b.g.recycle();
          ((Intent)localObject).putExtra("android.intent.extra.STREAM", Uri.fromFile(paramBoolean));
          this.a.startActivity((Intent)localObject);
          return;
        }
        catch (Throwable paramBoolean)
        {
          com.xueqiu.android.base.util.v.a(paramBoolean);
          return;
        }
        ((Intent)localObject).setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.tools.ShareImgUI"));
      }
    }
    WXMediaMessage localWXMediaMessage = new WXMediaMessage();
    Object localObject = new WXWebpageObject();
    ((WXWebpageObject)localObject).webpageUrl = this.b.d;
    localWXMediaMessage.mediaObject = ((WXMediaMessage.IMediaObject)localObject);
    localWXMediaMessage.setThumbImage(this.b.f);
    SendMessageToWX.Req localReq;
    if (this.a.getString(2131166073).equals(this.b.b))
    {
      localWXMediaMessage.title = this.b.c;
      localReq = new SendMessageToWX.Req();
      localReq.transaction = String.valueOf(System.currentTimeMillis());
      if (paramBoolean.booleanValue()) {
        k = 1;
      }
      localReq.scene = k;
      if (localReq.scene != 1) {
        break label536;
      }
      if (!TextUtils.isEmpty((CharSequence)this.b.k.get("wx_title"))) {
        localWXMediaMessage.title = ((String)this.b.k.get("wx_title"));
      }
      localObject = (String)this.b.l.get("wx_content_type");
      paramBoolean = (Boolean)localObject;
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        paramBoolean = this.b.c;
      }
    }
    for (localWXMediaMessage.description = paramBoolean;; localWXMediaMessage.description = paramBoolean)
    {
      localReq.message = localWXMediaMessage;
      this.i.sendReq(localReq);
      return;
      localWXMediaMessage.title = this.b.b;
      break;
      label536:
      if (!TextUtils.isEmpty((CharSequence)this.b.k.get("wx_friend_title"))) {
        localWXMediaMessage.title = ((String)this.b.k.get("wx_friend_title"));
      }
      localObject = (String)this.b.l.get("wx_friend_content");
      paramBoolean = (Boolean)localObject;
      if (TextUtils.isEmpty((CharSequence)localObject)) {
        paramBoolean = this.b.c;
      }
    }
  }
  
  public final void a(final String paramString1, String paramString2)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.SENDTO");
      localObject = paramString2;
      if (paramString2 == null) {
        localObject = "分享自雪球";
      }
      localIntent.setData(Uri.parse("mailto:?subject=" + (String)localObject + "&body=" + paramString1));
      localIntent.putExtra("android.intent.extra.SUBJECT", (String)localObject);
      localIntent.putExtra("android.intent.extra.TEXT", paramString1);
      if (this.d != null) {
        localIntent.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + this.d));
      }
      this.a.startActivity(localIntent);
      return;
    }
    catch (Exception paramString1)
    {
      paramString1 = this.b.c;
      paramString2 = this.h;
      final Object localObject = this.g;
      new AlertDialog.Builder(this.a).setAdapter(new ao(this.a, paramString2), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = new Intent("android.intent.action.SEND");
          paramAnonymousDialogInterface.setType("text/plain");
          paramAnonymousDialogInterface.putExtra("android.intent.extra.TEXT", paramString1);
          if (aj.this.d != null)
          {
            paramAnonymousDialogInterface.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + aj.this.d));
            paramAnonymousDialogInterface.setType("image/*");
          }
          paramAnonymousDialogInterface.setClassName(((ResolveInfo)localObject.get(paramAnonymousInt)).activityInfo.packageName, ((ResolveInfo)localObject.get(paramAnonymousInt)).activityInfo.name);
          aj.this.a.startActivity(paramAnonymousDialogInterface);
        }
      }).create().show();
    }
  }
  
  final void b()
  {
    e.a(this.a, this.b.d);
    aa.a(this.a.getString(2131165378));
  }
  
  final void b(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      Intent localIntent = (Intent)this.f.get(this.a.getString(2131166083));
      String str1 = this.b.c;
      localObject = str1;
      if (this.b.i == 3)
      {
        String str2 = this.a.getString(2131166153);
        localObject = str1;
        if (str1.indexOf(str2) > 0)
        {
          localObject = str1.substring(0, str1.indexOf(str2));
          localObject = (String)localObject + "。";
        }
      }
      localIntent.putExtra("android.intent.extra.TEXT", (String)localObject);
      if (!TextUtils.isEmpty(this.b.h))
      {
        localIntent.putExtra("extra_card_param", this.b.h);
        localIntent.putExtra("extra_card_type", "cube");
      }
      this.a.startActivity(localIntent);
      return;
    case 1: 
      localObject = (Intent)this.f.get(this.a.getString(2131166084));
      if (this.b.i == 0) {
        ((Intent)localObject).putExtra("android.intent.extra.TEXT", this.b.d);
      }
      for (;;)
      {
        this.a.startActivity((Intent)localObject);
        return;
        ((Intent)localObject).putExtra("android.intent.extra.TEXT", this.b.c);
      }
    case 2: 
      a(Boolean.valueOf(false));
      return;
    case 3: 
      a(Boolean.valueOf(true));
      return;
    case 4: 
      localObject = (Intent)this.f.get(this.a.getString(2131166087));
      ((Intent)localObject).putExtra("android.intent.extra.TEXT", this.b.c);
      this.a.startActivity((Intent)localObject);
      return;
    case 5: 
      localObject = (Intent)this.f.get(this.a.getString(2131166082));
      ((Intent)localObject).putExtra("android.intent.extra.TEXT", this.b.c);
      this.a.startActivity((Intent)localObject);
      return;
    case 6: 
      a(this.b.c, this.b.b);
      return;
    }
    b();
  }
  
  final void c()
  {
    if (!Boolean.valueOf(a("com.sina.weibo")).booleanValue()) {
      aa.a(2131166289);
    }
    ResolveInfo localResolveInfo;
    String str;
    do
    {
      return;
      while (!((Iterator)localObject).hasNext())
      {
        if (d())
        {
          a(new al()
          {
            public final void a()
            {
              aj.this.c();
            }
          });
          return;
        }
        localObject = new Intent("android.intent.action.SEND");
        ((Intent)localObject).setType("*/*");
        localObject = this.a.getPackageManager().queryIntentActivities((Intent)localObject, 65536).iterator();
      }
      localResolveInfo = (ResolveInfo)((Iterator)localObject).next();
      str = localResolveInfo.activityInfo.packageName;
    } while ((str == null) || (!str.startsWith("com.sina.weibo")));
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    if (this.d != null)
    {
      localIntent.setType("image/*");
      localIntent.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + this.d));
    }
    if (TextUtils.isEmpty(this.b.c)) {}
    for (Object localObject = this.b.b;; localObject = this.b.c)
    {
      localIntent.putExtra("android.intent.extra.TEXT", (String)localObject);
      localIntent.setClassName(str, localResolveInfo.activityInfo.name);
      this.a.startActivity(localIntent);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */