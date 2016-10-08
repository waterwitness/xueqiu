package com.xueqiu.android.base.h5;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.Base64;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.pingan.main.CheckChannelCallback;
import com.pingan.main.PAVideoManage;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ao;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.az;
import com.xueqiu.android.base.util.bd;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.WebViewActivity;
import com.xueqiu.android.common.account.VerifyPhoneNumActivity;
import com.xueqiu.android.common.model.OAuthBindResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.search.StockSearchActivity;
import com.xueqiu.android.common.widget.SNBWebView;
import com.xueqiu.android.community.CashierActivity;
import com.xueqiu.android.community.RechargeActivity;
import com.xueqiu.android.community.RewardActivity;
import com.xueqiu.android.community.WriteStatusActivity;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.RebalanceActivity;
import com.xueqiu.android.trade.kwlopen.KwlOpenActivity;
import com.xueqiu.android.trade.model.BrokerAccountToken;
import com.xueqiu.android.trade.model.TradeAccount;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class l
{
  c a;
  SNBWebView b;
  boolean c = false;
  ao d = null;
  
  public l(c paramc, SNBWebView paramSNBWebView)
  {
    this.a = paramc;
    this.b = paramSNBWebView;
  }
  
  private static int a(JsonObject paramJsonObject, String paramString, int paramInt)
  {
    if (c(paramJsonObject, paramString)) {
      paramInt = paramJsonObject.get(paramString).getAsInt();
    }
    return paramInt;
  }
  
  private static String a(JsonObject paramJsonObject, String paramString)
  {
    if (c(paramJsonObject, paramString)) {
      return paramJsonObject.get(paramString).getAsString();
    }
    return "";
  }
  
  private void a()
  {
    android.support.v4.content.r.a(this.a.f()).a(new Intent("com.xueqiu.android.action.updateBrokerList"));
  }
  
  @SuppressLint({"NewApi"})
  public static void a(WebView paramWebView, String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0)) {
      return;
    }
    if (paramString2 == null) {}
    for (String str = "";; str = String.format("'%s'", new Object[] { az.b(paramString2) })) {
      try
      {
        str = String.format("javascript:setTimeout(function(){%s(%s)}, 0)", new Object[] { paramString1, str });
        if (Build.VERSION.SDK_INT < 19) {
          break;
        }
        paramWebView.evaluateJavascript(str, null);
        return;
      }
      catch (Throwable paramWebView)
      {
        com.xueqiu.android.base.util.v.a("JSBridge", String.format("evaluate:%s(%s)", new Object[] { paramString1, paramString2 }), paramWebView);
        return;
      }
    }
    paramWebView.loadUrl(str);
  }
  
  private void a(String paramString1, String paramString2, int paramInt, JsonObject paramJsonObject, final String paramString3, final String paramString4, final String paramString5, boolean paramBoolean)
  {
    HashMap localHashMap;
    if ((paramJsonObject != null) && (!paramJsonObject.isJsonNull()))
    {
      localHashMap = new HashMap();
      Iterator localIterator = paramJsonObject.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((localEntry.getValue() != null) && (((JsonElement)localEntry.getValue()).isJsonPrimitive())) {
          localHashMap.put(localEntry.getKey(), ((JsonElement)localEntry.getValue()).getAsString());
        } else {
          localHashMap.put(localEntry.getKey(), com.xueqiu.android.base.util.m.a().toJson((JsonElement)localEntry.getValue()));
        }
      }
    }
    for (;;)
    {
      if (paramBoolean)
      {
        paramJsonObject = b(a(paramJsonObject, "aid"));
        if (paramJsonObject != null) {
          localHashMap.put("write_access_token", paramJsonObject.getWriteToken());
        }
      }
      paramJsonObject = new p(this.a)
      {
        public final void a(y paramAnonymousy)
        {
          if ((paramAnonymousy instanceof com.xueqiu.android.base.a.a)) {}
          for (paramAnonymousy = com.xueqiu.android.base.util.m.a().toJson(paramAnonymousy, com.xueqiu.android.base.a.a.class);; paramAnonymousy = paramAnonymousy.toString())
          {
            Object localObject = paramAnonymousy;
            if (paramAnonymousy != null)
            {
              localObject = paramAnonymousy;
              if (paramAnonymousy.indexOf("404 Not Found") >= 0) {
                localObject = "404";
              }
            }
            l.a(l.this.b, paramString5, (String)localObject);
            l.a(l.this.b, paramString4, null);
            return;
          }
        }
      };
      if (!paramString1.startsWith("/tc/")) {
        break label308;
      }
      localHashMap.put("signature", w.b(String.format("%s%s", new Object[] { "XQTC_SINCE_2015", w.a(Long.toString(System.currentTimeMillis())) })));
      if (paramInt <= 1000) {
        break;
      }
      this.a.x().a(paramString1, paramString2, localHashMap, paramInt, paramJsonObject);
      return;
      localHashMap = new HashMap();
    }
    this.a.x().b(paramString1, paramString2, localHashMap, paramJsonObject);
    return;
    label308:
    this.a.x().b(paramString1, paramString2, localHashMap, paramJsonObject);
  }
  
  private static void a(String paramString1, String paramString2, JsonArray paramJsonArray)
  {
    com.xueqiu.android.base.b.a();
    Context localContext = com.xueqiu.android.base.b.d();
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.addFlags(268435456);
    try
    {
      localIntent.setClassName(paramString1, paramString2);
      int j = paramJsonArray.size();
      int i = 0;
      while (i < j)
      {
        paramString1 = paramJsonArray.get(i).getAsJsonObject();
        localIntent.putExtra(paramString1.get("key").getAsString(), paramString1.get("value").getAsString());
        i += 1;
      }
      localContext.startActivity(localIntent);
      return;
    }
    catch (Exception paramString1)
    {
      aa.a(paramString1);
    }
  }
  
  private static BrokerAccountToken b(String paramString)
  {
    return u.a().a(paramString);
  }
  
  private static boolean b(JsonObject paramJsonObject, String paramString)
  {
    return (c(paramJsonObject, paramString)) && (paramJsonObject.get(paramString).getAsBoolean());
  }
  
  private static boolean c(JsonObject paramJsonObject, String paramString)
  {
    return (paramJsonObject.has(paramString)) && (paramJsonObject.get(paramString) != null) && (!paramJsonObject.get(paramString).isJsonNull());
  }
  
  public final boolean a(final String paramString)
  {
    final Object localObject2 = null;
    int j = 0;
    int i = 0;
    boolean bool3 = true;
    boolean bool1;
    if ((this.c) || (TextUtils.isEmpty(paramString))) {
      bool1 = false;
    }
    final Object localObject1;
    final Object localObject4;
    label299:
    label328:
    Object localObject5;
    String str1;
    label517:
    do
    {
      do
      {
        for (;;)
        {
          return bool1;
          if (!paramString.startsWith("js://"))
          {
            localObject1 = CookieManager.getInstance();
            if ((!com.xueqiu.android.base.v.a(paramString)) && (!((CookieManager)localObject1).acceptCookie())) {
              CookieManager.getInstance().setAcceptCookie(true);
            }
          }
          else
          {
            if ((!paramString.startsWith("js:")) && (!paramString.startsWith("js://"))) {
              break label4923;
            }
            localObject1 = "";
            if (!paramString.startsWith("js://")) {
              break label299;
            }
            localObject1 = paramString.substring(5);
          }
          try
          {
            for (;;)
            {
              paramString = URLDecoder.decode((String)localObject1, "utf-8");
              if (!paramString.startsWith("{")) {
                break label4754;
              }
              localObject1 = (JsonObject)com.xueqiu.android.base.util.m.a().fromJson(paramString, JsonObject.class);
              if (!((JsonObject)localObject1).has("name")) {
                break label4752;
              }
              paramString = ((JsonObject)localObject1).get("name").getAsString();
              if (!paramString.equals("alert")) {
                break label328;
              }
              paramString = a((JsonObject)localObject1, "title");
              localObject4 = a((JsonObject)localObject1, "message");
              localObject2 = a((JsonObject)localObject1, "success");
              localObject1 = a((JsonObject)localObject1, "button_title");
              localObject3 = new AlertDialog.Builder(this.a.g());
              ((AlertDialog.Builder)localObject3).setTitle(paramString);
              ((AlertDialog.Builder)localObject3).setMessage((CharSequence)localObject4);
              paramString = (String)localObject1;
              if (au.a((String)localObject1)) {
                paramString = this.a.a(2131165361);
              }
              ((AlertDialog.Builder)localObject3).setPositiveButton(paramString, new DialogInterface.OnClickListener()
              {
                public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
                {
                  l.a(l.this.b, localObject2, null);
                }
              });
              ((AlertDialog.Builder)localObject3).show();
              return true;
              if ((!com.xueqiu.android.base.v.a(paramString)) || (!((CookieManager)localObject1).acceptCookie())) {
                break;
              }
              CookieManager.getInstance().setAcceptCookie(false);
              break;
              if (paramString.startsWith("js:")) {
                localObject1 = paramString.substring(3);
              }
            }
          }
          catch (UnsupportedEncodingException paramString)
          {
            for (;;)
            {
              paramString.printStackTrace();
              paramString = (String)localObject1;
            }
            if (paramString.equals("confirm"))
            {
              localObject5 = a((JsonObject)localObject1, "title");
              str1 = a((JsonObject)localObject1, "message");
              localObject4 = a((JsonObject)localObject1, "success");
              localObject2 = a((JsonObject)localObject1, "cancel");
              paramString = a((JsonObject)localObject1, "success_button");
              localObject1 = a((JsonObject)localObject1, "cancel_button");
              localObject3 = new AlertDialog.Builder(this.a.g());
              ((AlertDialog.Builder)localObject3).setTitle((CharSequence)localObject5);
              ((AlertDialog.Builder)localObject3).setMessage(str1);
              if (au.a(paramString))
              {
                paramString = this.a.a(2131165361);
                localObject4 = ((AlertDialog.Builder)localObject3).setPositiveButton(paramString, new DialogInterface.OnClickListener()
                {
                  public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
                  {
                    l.a(l.this.b, localObject4, null);
                  }
                });
                if (!au.a((String)localObject1)) {
                  break label517;
                }
              }
              for (paramString = this.a.a(2131165296);; paramString = (String)localObject1)
              {
                ((AlertDialog.Builder)localObject4).setNegativeButton(paramString, new DialogInterface.OnClickListener()
                {
                  public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
                  {
                    l.a(l.this.b, localObject2, null);
                  }
                });
                ((AlertDialog.Builder)localObject3).setOnCancelListener(new DialogInterface.OnCancelListener()
                {
                  public final void onCancel(DialogInterface paramAnonymousDialogInterface)
                  {
                    l.a(l.this.b, localObject2, null);
                  }
                });
                ((AlertDialog.Builder)localObject3).show();
                return true;
                break;
              }
            }
            if (paramString.equals("request"))
            {
              bool1 = b((JsonObject)localObject1, "need_write_token");
              localObject2 = a((JsonObject)localObject1, "url");
              localObject3 = a((JsonObject)localObject1, "type");
              i = a((JsonObject)localObject1, "timeout", 1000);
              if (((JsonObject)localObject1).has("data")) {}
              for (paramString = ((JsonObject)localObject1).get("data").getAsJsonObject();; paramString = null)
              {
                a((String)localObject2, (String)localObject3, i, paramString, a((JsonObject)localObject1, "success"), a((JsonObject)localObject1, "complete"), a((JsonObject)localObject1, "error"), bool1);
                return true;
              }
            }
            if (paramString.equals("wxBind"))
            {
              paramString = a((JsonObject)localObject1, "success");
              localObject1 = a((JsonObject)localObject1, "error");
              this.d = new ao(this.a.g(), new com.xueqiu.android.base.b.h()
              {
                public final void a()
                {
                  l.this.d.a(new com.xueqiu.android.base.b.i()
                  {
                    public final void a()
                    {
                      l locall = l.this;
                      String str1 = l.11.this.a;
                      String str2 = l.11.this.b;
                      Context localContext = locall.a.f();
                      AlertDialog.Builder localBuilder = new AlertDialog.Builder(localContext);
                      localBuilder.setTitle("输入雪球登录密码");
                      LinearLayout localLinearLayout = new LinearLayout(localContext);
                      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
                      Object localObject = localContext.getResources();
                      localLayoutParams.setMargins(((Resources)localObject).getDimensionPixelSize(2131230794), ((Resources)localObject).getDimensionPixelSize(2131230796), ((Resources)localObject).getDimensionPixelSize(2131230795), 0);
                      localLinearLayout.setLayoutParams(localLayoutParams);
                      localObject = new EditText(localContext);
                      ((EditText)localObject).setLayoutParams(localLayoutParams);
                      ((EditText)localObject).setRawInputType(129);
                      ((EditText)localObject).setTransformationMethod(PasswordTransformationMethod.getInstance());
                      localLinearLayout.addView((View)localObject);
                      localBuilder.setView(localLinearLayout);
                      ((EditText)localObject).post(new l.12(locall, (EditText)localObject, localContext));
                      localBuilder.setPositiveButton(2131165361, new l.13(locall, (EditText)localObject, str1, str2));
                      localBuilder.setNegativeButton(2131165296, new l.14(locall));
                      localBuilder.show();
                    }
                  });
                }
              });
              if (!this.d.b())
              {
                aa.a("请先安装微信");
                return true;
              }
              this.d.a();
              return true;
            }
            if (paramString.equals("switchToSNBIconReward"))
            {
              paramString = a((JsonObject)localObject1, "type");
              long l = ((JsonObject)localObject1).get("id").getAsLong();
              localObject1 = new Intent(this.a.g(), RewardActivity.class);
              ((Intent)localObject1).putExtra("extra_donate_to_id", l);
              ((Intent)localObject1).putExtra("extra_donate_to_type", paramString);
              this.a.g().startActivity((Intent)localObject1);
              bool1 = bool3;
              if ((this.a.g() instanceof CashierActivity))
              {
                paramString = (CashierActivity)this.a.g();
                paramString.j = true;
                paramString.finish();
                return true;
              }
            }
            else
            {
              if (paramString.equals("mergeRequests"))
              {
                localObject2 = ((JsonObject)localObject1).get("urls").getAsJsonArray();
                paramString = new ArrayList();
                while (i < ((JsonArray)localObject2).size())
                {
                  paramString.add(((JsonArray)localObject2).get(i).getAsString());
                  i += 1;
                }
                localObject2 = a((JsonObject)localObject1, "success");
                localObject3 = a((JsonObject)localObject1, "complete");
                localObject1 = a((JsonObject)localObject1, "error");
                this.a.x().a(paramString, new p(this.a)
                {
                  public final void a(y paramAnonymousy)
                  {
                    l.a(l.this.b, localObject1, paramAnonymousy.getMessage());
                    l.a(l.this.b, localObject3, null);
                  }
                });
                return true;
              }
              if (!paramString.equals("redirect")) {
                break label1682;
              }
            }
          }
        }
        paramString = a((JsonObject)localObject1, "url");
        localObject2 = a((JsonObject)localObject1, "type");
        i = a((JsonObject)localObject1, "backward_count", -1);
        if (!paramString.matches("^/?cube/contract-result\\?(.*)")) {
          break;
        }
        localObject1 = Pattern.compile("^/?cube/contract-result\\?(.*)").matcher(paramString);
        bool1 = bool3;
      } while (!((Matcher)localObject1).matches());
      localObject3 = az.c(((Matcher)localObject1).group(1));
      localObject1 = new Intent(this.a.f(), CubeActivity.class);
      ((Intent)localObject1).putExtra("extra_cube_symbol", (String)((Map)localObject3).get("symbol"));
      ((Intent)localObject1).setFlags(67108864);
      localObject2 = new Intent(this.a.f(), RebalanceActivity.class);
      ((Intent)localObject2).putExtra("extra_cube_symbol", (String)((Map)localObject3).get("symbol"));
      ((Intent)localObject2).putExtra("extra_readonly", true);
      localObject3 = new Intent(this.a.f(), H5Activity.class);
      ((Intent)localObject3).putExtra("extra_url", paramString);
      this.a.g().startActivities(new Intent[] { localObject1, localObject2, localObject3 });
      return true;
      if (paramString.equals("")) {
        break;
      }
      if (f.a().b.find(paramString) == null) {
        break label1339;
      }
      bool1 = bool3;
    } while (this.a == null);
    final Object localObject3 = this.a;
    if (("PUSH".equals(localObject2)) || ("MODAL".equals(localObject2)))
    {
      localObject4 = new Intent(((c)localObject3).g(), H5Activity.class);
      ((Intent)localObject4).putExtra("extra_url", paramString);
      paramString = new b();
      paramString.b = ((JsonObject)localObject1).toString();
      localObject1 = new Bundle();
      ((Bundle)localObject1).putParcelable("extra_event", paramString);
      ((Intent)localObject4).putExtras((Bundle)localObject1);
      if ("MODAL".equals(localObject2))
      {
        ((c)localObject3).a((Intent)localObject4, paramString.a, 2130968594, 2130968584);
        label1331:
        ((c)localObject3).a(paramString);
        return true;
        label1339:
        if (!paramString.startsWith("/")) {
          break label5049;
        }
        paramString = String.format("%s%s", new Object[] { "https://xueqiu.com", paramString });
      }
    }
    label1676:
    label1682:
    label1875:
    label4752:
    label4754:
    label4923:
    label5049:
    for (;;)
    {
      if (com.xueqiu.android.base.v.a(paramString))
      {
        com.xueqiu.android.common.q.a(paramString, this.a.f());
        return true;
      }
      localObject1 = new Intent(this.a.f(), WebViewActivity.class);
      localObject2 = new Bundle();
      ((Bundle)localObject2).putString("extra_url_path", paramString);
      ((Intent)localObject1).putExtras((Bundle)localObject2);
      this.a.a((Intent)localObject1);
      return true;
      ((c)localObject3).a((Intent)localObject4, paramString.a);
      break label1331;
      if ((!"POP".equals(localObject2)) && (!"CLOSE".equals(localObject2)) && (!"POP_CANCEL".equals(localObject2)))
      {
        bool1 = bool3;
        if (!"CLOSE_CANCEL".equals(localObject2)) {
          break;
        }
      }
      localObject4 = new Intent();
      if (((c)localObject3).d != null)
      {
        localObject5 = ((c)localObject3).d;
        if (!((JsonObject)localObject1).has("successData")) {
          break label1676;
        }
      }
      for (paramString = ((JsonObject)localObject1).get("successData").getAsString();; paramString = "")
      {
        ((b)localObject5).b = paramString;
        ((c)localObject3).d.c = (i - 1);
        paramString = new Bundle();
        paramString.putParcelable("extra_event", ((c)localObject3).d);
        ((Intent)localObject4).putExtras(paramString);
        if (("POP_CANCEL".equals(localObject2)) || ("CLOSE_CANCEL".equals(localObject2))) {
          ((Intent)localObject4).putExtra("extra_event_result", 1);
        }
        ((c)localObject3).g().setResult(-1, (Intent)localObject4);
        ((c)localObject3).g().finish();
        if (!"CLOSE".equals(localObject2))
        {
          bool1 = bool3;
          if (!"CLOSE_CANCEL".equals(localObject2)) {
            break;
          }
        }
        ((c)localObject3).g().overridePendingTransition(2130968583, 2130968595);
        return true;
      }
      if (paramString.equals("setToolbar"))
      {
        paramString = ((JsonObject)localObject1).get("buttons").getAsJsonArray();
        this.a.a(this, paramString);
        return true;
      }
      if (paramString.equals("setRightNavigationButton"))
      {
        paramString = a((JsonObject)localObject1, "title");
        localObject2 = a((JsonObject)localObject1, "icon");
        localObject4 = a((JsonObject)localObject1, "action");
        localObject1 = this.a;
        localObject3 = new d((c)localObject1, (byte)0);
        ((d)localObject3).a = paramString;
        ((d)localObject3).c = ((String)localObject4);
        if ((localObject2 != null) && (((String)localObject2).length() > 0) && (!((String)localObject2).startsWith("http")))
        {
          localObject4 = f.a().b.find(((c)localObject1).b).a();
          if (!((String)localObject2).startsWith("/")) {
            break label1875;
          }
        }
        for (paramString = "";; paramString = "/")
        {
          ((d)localObject3).b = String.format("%s%s%s", new Object[] { localObject4, paramString, localObject2 });
          ((c)localObject1).c = ((d)localObject3);
          ((c)localObject1).g().invalidateOptionsMenu();
          return true;
        }
      }
      if (paramString.equals("updateBroker"))
      {
        paramString = (BrokerAccountToken)com.xueqiu.android.base.util.m.a().fromJson((JsonElement)localObject1, BrokerAccountToken.class);
        u.a().a(paramString);
        a();
        return true;
      }
      if (paramString.equals("getAccessToken"))
      {
        paramString = a((JsonObject)localObject1, "success");
        a(this.b, paramString, u.a().a);
        return true;
      }
      if (paramString.equals("getWriteToken"))
      {
        paramString = a((JsonObject)localObject1, "aid");
        localObject1 = a((JsonObject)localObject1, "success");
        paramString = b(paramString);
        if (paramString != null) {}
        for (paramString = paramString.getWriteToken();; paramString = "")
        {
          a(this.b, (String)localObject1, paramString);
          return true;
        }
      }
      if (paramString.equals("verifyTelephone"))
      {
        paramString = this.a;
        if (u.a().d)
        {
          com.xueqiu.android.base.t.a(paramString.g(), false);
          return true;
        }
        localObject2 = new Intent(paramString.g(), VerifyPhoneNumActivity.class);
        ((Intent)localObject2).putExtra("extra_verify_phone_intent", 3);
        localObject3 = new b();
        ((b)localObject3).b = ((JsonObject)localObject1).toString();
        localObject1 = new Bundle();
        ((Bundle)localObject1).putParcelable("extra_event", (Parcelable)localObject3);
        ((Intent)localObject2).putExtras((Bundle)localObject1);
        paramString.a((Intent)localObject2, ((b)localObject3).a);
        paramString.a((b)localObject3);
        return true;
      }
      if (paramString.equals("getUserInfo"))
      {
        localObject1 = a((JsonObject)localObject1, "success");
        i = Integer.parseInt(PreferenceManager.getDefaultSharedPreferences(this.a.f()).getString(this.a.h().getString(2131165678), "1"));
        localObject2 = new JsonObject();
        ((JsonObject)localObject2).addProperty("stColor", Integer.valueOf(i));
        u.a();
        ((JsonObject)localObject2).addProperty("uid", Long.valueOf(UserLogonDataPrefs.getLogonUserId()));
        com.xueqiu.android.base.b.a();
        if (com.xueqiu.android.base.b.i()) {}
        for (paramString = "night";; paramString = "day")
        {
          ((JsonObject)localObject2).addProperty("theme", paramString);
          a(this.b, (String)localObject1, com.xueqiu.android.base.util.m.a().toJson((JsonElement)localObject2));
          return true;
        }
      }
      if (paramString.equals("floatNotification"))
      {
        paramString = a((JsonObject)localObject1, "title");
        localObject2 = a((JsonObject)localObject1, "message");
        localObject1 = a((JsonObject)localObject1, "duration");
        aa.a(this.a.f(), 9997);
        aa.a(this.a.f(), paramString, (String)localObject2);
        aa.a(this.a.f(), Integer.parseInt((String)localObject1) * 1000);
        return true;
      }
      if (paramString.equals("datePicker"))
      {
        paramString = a((JsonObject)localObject1, "success");
        localObject2 = a((JsonObject)localObject1, "cancel");
        localObject1 = a((JsonObject)localObject1, "date");
        localObject3 = Calendar.getInstance();
        ((Calendar)localObject3).setTimeInMillis(Long.parseLong((String)localObject1));
        localObject1 = new DatePickerDialog(this.a.f(), null, ((Calendar)localObject3).get(1), ((Calendar)localObject3).get(2), ((Calendar)localObject3).get(5));
        ((DatePickerDialog)localObject1).setCancelable(true);
        ((DatePickerDialog)localObject1).setCanceledOnTouchOutside(true);
        ((DatePickerDialog)localObject1).setButton(-1, this.a.a(2131165361), new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface = localObject1.getDatePicker();
            Calendar localCalendar = Calendar.getInstance();
            localCalendar.set(paramAnonymousDialogInterface.getYear(), paramAnonymousDialogInterface.getMonth(), paramAnonymousDialogInterface.getDayOfMonth());
            l.a(l.this.b, paramString, Long.toString(localCalendar.getTimeInMillis()));
          }
        });
        ((DatePickerDialog)localObject1).setButton(-2, this.a.a(2131165296), new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            l.a(l.this.b, localObject2, "");
          }
        });
        ((DatePickerDialog)localObject1).setOnCancelListener(new DialogInterface.OnCancelListener()
        {
          public final void onCancel(DialogInterface paramAnonymousDialogInterface)
          {
            l.a(l.this.b, localObject2, "");
          }
        });
        ((DatePickerDialog)localObject1).show();
        return true;
      }
      if (paramString.equals("searchTCStock"))
      {
        paramString = this.a;
        localObject2 = new Intent(paramString.f(), StockSearchActivity.class);
        localObject3 = new b();
        ((b)localObject3).b = ((JsonObject)localObject1).toString();
        localObject4 = new Bundle();
        ((Bundle)localObject4).putParcelable("extra_event", (Parcelable)localObject3);
        if (((JsonObject)localObject1).get("etype") != null) {
          ((Bundle)localObject4).putString("market_type", ((JsonObject)localObject1).get("etype").getAsString());
        }
        ((Intent)localObject2).putExtras((Bundle)localObject4);
        paramString.a((Intent)localObject2, ((b)localObject3).a, 2130968592, 2130968584);
        paramString.a((b)localObject3);
        return true;
      }
      if (paramString.equals("pickPhoto"))
      {
        paramString = this.a;
        if (((JsonObject)localObject1).has("maxWidth")) {}
        for (i = ((JsonObject)localObject1).get("maxWidth").getAsInt();; i = 1100)
        {
          paramString.h = i;
          localObject2 = new b();
          ((b)localObject2).b = ((JsonObject)localObject1).toString();
          ((b)localObject2).a = 10003;
          paramString.a((b)localObject2);
          localObject3 = paramString.a(2131165713);
          localObject4 = paramString.a(2131166198);
          localObject5 = new AlertDialog.Builder(paramString.g()).setTitle(2131166562);
          localObject1 = new c.7(paramString, (JsonObject)localObject1, (b)localObject2);
          ((AlertDialog.Builder)localObject5).setItems(new String[] { localObject3, localObject4 }, (DialogInterface.OnClickListener)localObject1).setOnCancelListener(new c.6(paramString, (b)localObject2)).create().show();
          return true;
        }
      }
      if (paramString.equals("SNBTrackEvent"))
      {
        paramString = (String)localObject2;
        if (!com.xueqiu.android.base.util.r.a((JsonObject)localObject1, "info"))
        {
          paramString = (String)localObject2;
          if (((JsonObject)localObject1).get("info").isJsonObject()) {
            paramString = ((JsonObject)localObject1).getAsJsonObject("info");
          }
        }
        localObject1 = new SNBEvent(a((JsonObject)localObject1, "page", 0), a((JsonObject)localObject1, "event", 0));
        if (paramString != null) {
          ((SNBEvent)localObject1).setAttach((Map)com.xueqiu.android.base.util.m.a().fromJson(paramString, new TypeToken() {}.getType()));
        }
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
        return true;
      }
      if (paramString.equals("share"))
      {
        this.a.a((JsonObject)localObject1, null);
        return true;
      }
      if (paramString.equals("screenshotAndShare"))
      {
        paramString = this.a;
        bool1 = bool3;
        if (com.xueqiu.android.base.util.r.a((JsonObject)localObject1, "screenshot")) {
          break;
        }
        bool1 = bool3;
        if (com.xueqiu.android.base.util.r.a((JsonObject)localObject1, "share")) {
          break;
        }
        localObject2 = paramString.a(((JsonObject)localObject1).getAsJsonObject("screenshot"));
        paramString.a(((JsonObject)localObject1).getAsJsonObject("share"), (Bitmap)localObject2);
        return true;
      }
      if (paramString.equals("screenshot"))
      {
        localObject2 = this.a;
        try
        {
          paramString = ((c)localObject2).a((JsonObject)localObject1);
          j = 100;
          i = j;
          if (com.xueqiu.android.base.util.r.a((JsonObject)localObject1, "compressRate"))
          {
            i = j;
            if (((JsonObject)localObject1).get("compressRate").getAsFloat() != 1.0F) {
              i = (int)(((JsonObject)localObject1).get("compressRate").getAsFloat() * 100.0F);
            }
          }
          localObject3 = new ByteArrayOutputStream();
          paramString.compress(Bitmap.CompressFormat.JPEG, i, (OutputStream)localObject3);
          paramString.recycle();
          localObject4 = ((ByteArrayOutputStream)localObject3).toByteArray();
          if (((JsonObject)localObject1).has("success"))
          {
            paramString = ((JsonObject)localObject1).get("success").getAsString();
            localObject4 = Base64.encodeToString((byte[])localObject4, 0);
            localObject5 = new JsonObject();
            ((JsonObject)localObject5).addProperty("imageBase64", (String)localObject4);
            a(((c)localObject2).e, paramString, ((JsonObject)localObject5).toString());
            ((ByteArrayOutputStream)localObject3).close();
            return true;
          }
        }
        catch (Exception paramString)
        {
          if (!((JsonObject)localObject1).has("cancel")) {}
        }
        for (paramString = ((JsonObject)localObject1).get("cancel").getAsString();; paramString = "")
        {
          a(((c)localObject2).e, paramString, null);
          return true;
          paramString = "";
          break;
        }
      }
      if (paramString.equals("wakeApp"))
      {
        i = a((JsonObject)localObject1, "notifyType", 1);
        paramString = a((JsonObject)localObject1, "notifyUrl");
        localObject2 = a((JsonObject)localObject1, "downloadUrl");
        j = a((JsonObject)localObject1, "openType", 1);
        if (i == 2)
        {
          localObject1 = new Intent(this.a.f(), KwlOpenActivity.class);
          ((Intent)localObject1).putExtra("extra_url", paramString);
          this.a.a((Intent)localObject1);
          return true;
        }
        bool1 = bool3;
        if (bd.a(paramString, j)) {
          break;
        }
        paramString = new Intent("android.intent.action.VIEW");
        paramString.setData(Uri.parse((String)localObject2));
        this.a.a(paramString);
        aa.a(2131166245);
        return true;
      }
      if (paramString.equals("pay"))
      {
        this.a.b((JsonObject)localObject1);
        return true;
      }
      if (paramString.equals("purchaseSnowCoin"))
      {
        paramString = this.a;
        localObject2 = new Intent(paramString.g(), RechargeActivity.class);
        localObject3 = new b();
        ((b)localObject3).b = ((JsonObject)localObject1).toString();
        localObject1 = new Bundle();
        ((Bundle)localObject1).putParcelable("extra_event", (Parcelable)localObject3);
        ((Intent)localObject2).putExtras((Bundle)localObject1);
        paramString.a((Intent)localObject2, ((b)localObject3).a);
        paramString.a((b)localObject3);
        return true;
      }
      if (paramString.equals("newRetweet"))
      {
        if (((JsonObject)localObject1).has("data")) {}
        for (paramString = ((JsonObject)localObject1).get("data").getAsJsonObject();; paramString = null)
        {
          localObject2 = a((JsonObject)localObject1, "success");
          localObject3 = a((JsonObject)localObject1, "cancel");
          localObject4 = a((JsonObject)localObject1, "erro");
          localObject1 = a((JsonObject)localObject1, "complete");
          if (paramString != null) {
            break;
          }
          a(this.b, (String)localObject4, null);
          return true;
        }
        localObject5 = a(paramString, "content");
        str1 = a(paramString, "statusId");
        a(paramString, "username");
        paramString = new Intent(this.a.f(), WriteStatusActivity.class);
        paramString.putExtra("extra_write_type", 2);
        paramString.putExtra("extra_status_id", Long.valueOf(str1));
        paramString.putExtra("extra_retweet_text", (String)localObject5);
        paramString.putExtra("JSBridge", "newRetweet");
        localObject1 = new m(this, this.b, (String)localObject2, (String)localObject4, (String)localObject3, (String)localObject1);
        ((com.xueqiu.android.common.b)this.a.g()).o = ((BroadcastReceiver)localObject1);
        android.support.v4.content.r.a(this.a.f()).a((BroadcastReceiver)localObject1, new IntentFilter("newRetweet"));
        this.a.a(paramString);
        return true;
      }
      if (paramString.equals("replyComment"))
      {
        if (((JsonObject)localObject1).has("data")) {}
        for (paramString = ((JsonObject)localObject1).get("data").getAsJsonObject();; paramString = null)
        {
          localObject2 = a((JsonObject)localObject1, "success");
          localObject3 = a((JsonObject)localObject1, "cancel");
          localObject4 = a((JsonObject)localObject1, "erro");
          localObject1 = a((JsonObject)localObject1, "complete");
          if (paramString != null) {
            break;
          }
          a(this.b, (String)localObject4, null);
          return true;
        }
        localObject5 = a(paramString, "content");
        str1 = a(paramString, "statusId");
        String str2 = a(paramString, "commentId");
        String str3 = a(paramString, "username");
        bool1 = b(paramString, "isRetweet");
        paramString = new Intent(this.a.f(), WriteStatusActivity.class);
        Comment localComment = new Comment();
        localComment.setId(Long.parseLong(str2));
        localComment.setStatusId(Long.parseLong(str1));
        localComment.setText((String)localObject5);
        localComment.setScreenName(str3);
        paramString.putExtra("extra_write_type", 1);
        paramString.putExtra("extra_comment", localComment);
        paramString.putExtra("extra_status_id", Long.valueOf(str1));
        paramString.putExtra("extra_isretweet", bool1);
        paramString.putExtra("extra_reply_somebody", str3);
        paramString.putExtra("extra_retweet_text", (String)localObject5);
        paramString.putExtra("JSBridge", "replyComment");
        localObject1 = new m(this, this.b, (String)localObject2, (String)localObject4, (String)localObject3, (String)localObject1);
        ((com.xueqiu.android.common.b)this.a.g()).o = ((BroadcastReceiver)localObject1);
        android.support.v4.content.r.a(this.a.f()).a((BroadcastReceiver)localObject1, new IntentFilter("replyComment"));
        this.a.a(paramString);
        return true;
      }
      if (paramString.equals("bindBroker"))
      {
        paramString = this.a;
        bool1 = bool3;
        if (!((JsonObject)localObject1).has("broker")) {
          break;
        }
        bool1 = bool3;
        if (((JsonObject)localObject1).get("broker") == null) {
          break;
        }
        paramString.a((JsonObject)localObject1, com.xueqiu.android.trade.g.a(((JsonObject)localObject1).getAsJsonObject("broker")), 1);
        return true;
      }
      if (paramString.equals("refreshBrokerToken"))
      {
        localObject2 = this.a;
        bool1 = bool3;
        if (!((JsonObject)localObject1).has("data")) {
          break;
        }
        bool1 = bool3;
        if (((JsonObject)localObject1).get("data") == null) {
          break;
        }
        paramString = ((JsonObject)localObject1).get("data").getAsJsonObject();
        bool1 = bool3;
        if (!paramString.has("result_data")) {
          break;
        }
        bool1 = bool3;
        if (paramString.get("result_data") == null) {
          break;
        }
        localObject3 = com.xueqiu.android.trade.g.a(paramString.getAsJsonObject("result_data"));
        i = j;
        if (paramString.has("result_code"))
        {
          i = j;
          if ("70006".equals(paramString.get("result_code").getAsString())) {
            i = 1;
          }
        }
        if (i != 0)
        {
          ((c)localObject2).a((JsonObject)localObject1, (TradeAccount)localObject3, 2);
          return true;
        }
        localObject4 = new b();
        ((b)localObject4).b = ((JsonObject)localObject1).toString();
        ((c)localObject2).a((b)localObject4);
        if (paramString.has("result_code")) {}
        for (paramString = paramString.get("result_code").getAsString();; paramString = "70005")
        {
          com.xueqiu.android.trade.c.a(paramString, (TradeAccount)localObject3, (com.xueqiu.android.common.b)((c)localObject2).g(), new c.8((c)localObject2, (b)localObject4)).a();
          return true;
        }
      }
      if (paramString.equals("encryptWithRSA"))
      {
        paramString = a((JsonObject)localObject1, "origin");
        localObject2 = a((JsonObject)localObject1, "success");
        localObject1 = a((JsonObject)localObject1, "error");
        try
        {
          a(this.b, (String)localObject2, com.xueqiu.android.trade.g.a(paramString));
          return true;
        }
        catch (Exception paramString)
        {
          a(this.b, (String)localObject1, "");
          return true;
        }
      }
      if (paramString.equals("isAppInstalled"))
      {
        paramString = a((JsonObject)localObject1, "package");
        localObject1 = a((JsonObject)localObject1, "success");
        com.xueqiu.android.base.b.a();
        localObject2 = com.xueqiu.android.base.b.d().getPackageManager();
        try
        {
          ((PackageManager)localObject2).getPackageInfo(paramString, 1);
          bool2 = true;
        }
        catch (PackageManager.NameNotFoundException paramString)
        {
          for (;;)
          {
            boolean bool2 = false;
            continue;
            paramString = "false";
          }
          ((WebView)localObject2).loadUrl(paramString);
          return true;
        }
        localObject2 = this.b;
        bool1 = bool3;
        if (localObject1 == null) {
          break;
        }
        bool1 = bool3;
        if (((String)localObject1).length() == 0) {
          break;
        }
        if (bool2)
        {
          paramString = "true";
          try
          {
            paramString = String.format("javascript:setTimeout(function(){%s(%s)}, 0)", new Object[] { localObject1, paramString });
            if (Build.VERSION.SDK_INT >= 19)
            {
              ((WebView)localObject2).evaluateJavascript(paramString, null);
              return true;
            }
          }
          catch (Throwable paramString)
          {
            com.xueqiu.android.base.util.v.a("JSBridge", String.format("evaluate:%s(%s)", new Object[] { localObject1, Boolean.valueOf(bool2) }), paramString);
            return true;
          }
        }
      }
      if (paramString.equals("openApp"))
      {
        a(a((JsonObject)localObject1, "package"), a((JsonObject)localObject1, "activity"), ((JsonObject)localObject1).get("params").getAsJsonArray());
        return true;
      }
      if (paramString.equals("startPAOpenAccountVideo"))
      {
        localObject2 = this.a;
        localObject3 = new b();
        ((b)localObject3).b = ((JsonObject)localObject1).toString();
        ((c)localObject2).a((b)localObject3);
        paramString = com.xueqiu.android.base.util.r.a((JsonObject)localObject1, "channel_id", "");
        localObject1 = com.xueqiu.android.base.util.r.a((JsonObject)localObject1, "uid", "");
        PAVideoManage.setEnvironment(3);
        localObject4 = ((c)localObject2).f();
        localObject2 = new c.9((c)localObject2, (b)localObject3, paramString, (String)localObject1);
        PAVideoManage.checkChannel((Context)localObject4, "WOPgRx", (String)localObject1, paramString, new String[] { paramString }, "com.xueqiu.android", (CheckChannelCallback)localObject2);
        return true;
      }
      bool1 = bool3;
      if (!paramString.equals("notifyPayState")) {
        break;
      }
      bool1 = b((JsonObject)localObject1, "state");
      paramString = new Intent("com.xueqiu.android.action.paySuccess");
      paramString.putExtra("extra_pay_state", bool1);
      android.support.v4.content.r.a(this.a.f()).a(paramString);
      return true;
      return false;
      if (paramString.equals("hideloading"))
      {
        this.a.z();
        return true;
      }
      if (paramString.equals("showloading"))
      {
        this.a.y();
        return true;
      }
      bool1 = bool3;
      if (paramString.equals("walletDonateSucced")) {
        break;
      }
      if (paramString.equals("walletDeposit"))
      {
        paramString = new Intent(this.a.f(), RechargeActivity.class);
        this.a.a(paramString);
        return true;
      }
      if (paramString.equals("goToTradeHome"))
      {
        paramString = new Intent(this.a.f(), MainActivity.class);
        paramString.putExtra("extra_notification", 9);
        paramString.setFlags(67108864);
        this.a.a(paramString);
        a();
        return true;
      }
      if (paramString.equals("updateBrokerList"))
      {
        a();
        return true;
      }
      return false;
      if (paramString.startsWith("tel:")) {
        try
        {
          paramString = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
          this.a.a(paramString);
          return true;
        }
        catch (Exception paramString)
        {
          return true;
        }
      }
      if (paramString.equals("close://"))
      {
        this.a.g().finish();
        return true;
      }
      bool1 = com.xueqiu.android.common.q.b(paramString, this.a.g());
      if ((bool1) && ((this.a.g() instanceof H5Activity)) && (((H5Activity)this.a.g()).d()))
      {
        ((H5Activity)this.a.g()).k = true;
        return true;
      }
      return bool1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */