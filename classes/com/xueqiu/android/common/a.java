package com.xueqiu.android.common;

import android.app.Application;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.k;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.a.b;
import com.d.a.b.f.d;
import com.umeng.update.UmengUpdateAgent;
import com.umeng.update.UmengUpdateListener;
import com.umeng.update.UpdateResponse;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.g;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.ClientInfo;
import com.xueqiu.android.common.setting.DiagnosticActivity;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.am;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
  extends c
  implements am
{
  private View.OnClickListener a = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      try
      {
        a.a(a.this);
        return;
      }
      catch (Exception paramAnonymousView)
      {
        aa.a(paramAnonymousView);
      }
    }
  };
  private aj b;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    d(2131165213);
    return paramLayoutInflater.inflate(2130903080, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    try
    {
      paramView = g().getPackageManager().getPackageInfo(g().getPackageName(), 0).versionName;
      ((TextView)c(2131624233)).setText(paramView);
      c(2131624234).setVisibility(0);
      c(2131624233).setVisibility(0);
      ((Button)c(2131624239)).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(a.this.g(), DiagnosticActivity.class);
          a.this.a(paramAnonymousView);
        }
      });
      c(2131624237).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          try
          {
            paramAnonymousView = new Intent("android.intent.action.VIEW");
            paramAnonymousView.setData(Uri.parse("market://details?id=" + a.this.v().getPackageName()));
            a.this.a(paramAnonymousView);
            return;
          }
          catch (Exception paramAnonymousView) {}
        }
      });
      c(2131624236).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.this.y();
          UmengUpdateAgent.setUpdateOnlyWifi(false);
          UmengUpdateAgent.setUpdateListener(new UmengUpdateListener()
          {
            public final void onUpdateReturned(int paramAnonymous2Int, UpdateResponse paramAnonymous2UpdateResponse)
            {
              a.this.z();
              if (paramAnonymous2Int == 0)
              {
                UmengUpdateAgent.showUpdateDialog(a.this.f(), paramAnonymous2UpdateResponse);
                return;
              }
              aa.a(2131165237);
            }
          });
          UmengUpdateAgent.forceUpdate(a.this.g());
        }
      });
      paramView = (Button)c(2131624238);
      if (paramView != null) {
        paramView.setOnClickListener(this.a);
      }
      c(2131624231).setOnLongClickListener(new View.OnLongClickListener()
      {
        public final boolean onLongClick(View paramAnonymousView)
        {
          Object localObject = g.a().a();
          paramAnonymousView = ((ClientInfo)localObject).getChannelId();
          localObject = ((ClientInfo)localObject).getChannelEvent();
          aa.a("渠道id=" + paramAnonymousView + "活动号=" + (String)localObject);
          return false;
        }
      });
      return;
    }
    catch (PackageManager.NameNotFoundException paramView)
    {
      for (;;)
      {
        v.b("AboutUsActivity", paramView.getMessage());
      }
    }
  }
  
  /* Error */
  public final void b(final int paramInt)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 6
    //   3: aload_0
    //   4: invokevirtual 160	com/xueqiu/android/common/a:f	()Landroid/content/Context;
    //   7: ldc -94
    //   9: ldc -92
    //   11: invokestatic 170	com/xueqiu/android/base/storage/prefs/UserPrefs:getString	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   14: astore_2
    //   15: aload_2
    //   16: invokevirtual 175	java/lang/String:trim	()Ljava/lang/String;
    //   19: ldc -92
    //   21: invokevirtual 179	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   24: ifne +66 -> 90
    //   27: new 181	org/json/JSONObject
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 184	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   35: astore_2
    //   36: lload 6
    //   38: lstore 4
    //   40: aload_2
    //   41: ifnull +11 -> 52
    //   44: aload_2
    //   45: ldc -70
    //   47: invokevirtual 190	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   50: lstore 4
    //   52: new 20	com/xueqiu/android/common/a$6
    //   55: dup
    //   56: aload_0
    //   57: aload_0
    //   58: aload_2
    //   59: iload_1
    //   60: invokespecial 193	com/xueqiu/android/common/a$6:<init>	(Lcom/xueqiu/android/common/a;Lcom/xueqiu/android/base/b/q;Lorg/json/JSONObject;I)V
    //   63: astore_2
    //   64: invokestatic 198	com/xueqiu/android/base/q:a	()Lcom/xueqiu/android/base/q;
    //   67: invokevirtual 201	com/xueqiu/android/base/q:b	()Lcom/xueqiu/android/base/b/ai;
    //   70: iconst_2
    //   71: lload 4
    //   73: aload_2
    //   74: invokevirtual 206	com/xueqiu/android/base/b/ai:a	(IJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    //   77: pop
    //   78: aload_0
    //   79: invokevirtual 210	com/xueqiu/android/common/a:y	()Landroid/app/Dialog;
    //   82: pop
    //   83: return
    //   84: astore_2
    //   85: aload_2
    //   86: invokestatic 215	com/xueqiu/android/base/util/aa:a	(Ljava/lang/Throwable;)V
    //   89: return
    //   90: aconst_null
    //   91: astore_2
    //   92: goto -56 -> 36
    //   95: astore_3
    //   96: aload_3
    //   97: invokestatic 215	com/xueqiu/android/base/util/aa:a	(Ljava/lang/Throwable;)V
    //   100: lload 6
    //   102: lstore 4
    //   104: goto -52 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	a
    //   0	107	1	paramInt	int
    //   14	60	2	localObject1	Object
    //   84	2	2	localJSONException1	JSONException
    //   91	1	2	localObject2	Object
    //   95	2	3	localJSONException2	JSONException
    //   38	65	4	l1	long
    //   1	100	6	l2	long
    // Exception table:
    //   from	to	target	type
    //   27	36	84	org/json/JSONException
    //   44	52	95	org/json/JSONException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */