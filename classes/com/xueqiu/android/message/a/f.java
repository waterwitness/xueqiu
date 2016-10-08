package com.xueqiu.android.message.a;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.d.a.a.a.b;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.at;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.ImageActivity;
import com.xueqiu.android.common.model.parser.JSONUtils;
import com.xueqiu.android.common.q;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.ChatActivity;
import com.xueqiu.android.message.model.Message;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public final class f
{
  public TextView a;
  public ImageView b;
  public ImageView c;
  public WebView d;
  public TextView e;
  public TextView f;
  public TextView g;
  public TextView h;
  public View i;
  public View j;
  public TextView k;
  public Map<String, String> l = new HashMap();
  com.d.a.b.d m;
  
  private f()
  {
    this.l.put("Cookie", String.format("xq_a_token=%s", new Object[] { u.a().a }));
    com.d.a.b.e locale = new com.d.a.b.e();
    locale.h = true;
    locale.n = this.l;
    locale.a = 2130837766;
    locale.i = true;
    locale.j = com.d.a.b.a.e.e;
    locale.m = true;
    this.m = locale.b();
  }
  
  public static f a(View paramView)
  {
    f localf = new f();
    localf.j = paramView.findViewById(2131625297);
    localf.a = ((TextView)paramView.findViewById(2131625303));
    localf.b = ((ImageView)paramView.findViewById(2131625304));
    localf.k = ((TextView)paramView.findViewById(2131625305));
    localf.d = ((WebView)paramView.findViewById(2131625302));
    localf.c = ((ImageView)paramView.findViewById(2131625320));
    localf.e = ((TextView)paramView.findViewById(2131625299));
    localf.f = ((TextView)paramView.findViewById(2131625298));
    localf.g = ((TextView)paramView.findViewById(2131625300));
    localf.h = ((TextView)paramView.findViewById(2131624400));
    localf.i = paramView.findViewById(2131625301);
    localf.d.setOverScrollMode(2);
    localf.d.setVerticalScrollBarEnabled(false);
    localf.d.setHorizontalScrollBarEnabled(false);
    localf.d.getSettings().setJavaScriptEnabled(false);
    localf.d.setOnLongClickListener(new View.OnLongClickListener()
    {
      public final boolean onLongClick(View paramAnonymousView)
      {
        return true;
      }
    });
    localf.d.setWebViewClient(new WebViewClient()
    {
      public final boolean shouldOverrideKeyEvent(WebView paramAnonymousWebView, KeyEvent paramAnonymousKeyEvent)
      {
        return true;
      }
      
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        return true;
      }
    });
    return localf;
  }
  
  private static void a(ImageView paramImageView, String paramString)
  {
    if (paramString.contains("?"))
    {
      paramString = paramString.split("\\?")[1];
      if (paramString != null)
      {
        v.a("ChatAdapter", "size: " + paramString);
        paramString = paramString.split("x");
        if (paramString.length != 2) {
          break label214;
        }
      }
    }
    try
    {
      i1 = Integer.parseInt(paramString[0]);
      n = Integer.parseInt(paramString[1]);
      paramString = paramImageView.getContext().getResources().getDisplayMetrics();
      f1 = (float)(1.0D * i1 / n);
      if (f1 >= 1.0F)
      {
        i1 = Math.min(i1, Math.round(TypedValue.applyDimension(1, 150.0F, paramString)));
        i2 = Math.round(i1 / f1);
        paramImageView.getLayoutParams().width = i1;
        paramImageView.getLayoutParams().height = i2;
        return;
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        float f1;
        v.c("ChatAdapter", "", paramString);
        int i1 = 1;
        int n = 1;
        continue;
        int i2 = n;
        if (f1 < 1.0F)
        {
          i2 = Math.min(n, Math.round(TypedValue.applyDimension(1, 150.0F, paramString)));
          i1 = Math.max(Math.round(i2 * f1), Math.round(TypedValue.applyDimension(1, 36.0F, paramString)));
        }
      }
    }
    label214:
    paramImageView.getLayoutParams().width = -2;
    paramImageView.getLayoutParams().height = -2;
  }
  
  public final void a(final Message paramMessage, final ChatActivity paramChatActivity)
  {
    this.k.setVisibility(8);
    e locale = (e)this.j.getTag();
    final Object localObject1;
    Object localObject2;
    final Object localObject3;
    if (locale != null)
    {
      int n;
      if ((paramMessage.isByMyself()) && ((paramMessage.getStatus() == 1) || (paramMessage.getStatus() == -1)))
      {
        locale.e.setVisibility(0);
        paramChatActivity = locale.b;
        localObject1 = locale.c;
        localObject2 = locale.d;
        n = 0;
      }
      while (n < 3)
      {
        new View[] { paramChatActivity, localObject1, localObject2 }[n].setVisibility(4);
        n += 1;
        continue;
        locale.e.setVisibility(8);
        localObject1 = locale.b;
        localObject2 = locale.c;
        localObject3 = locale.d;
        n = 0;
        while (n < 3)
        {
          new View[] { localObject1, localObject2, localObject3 }[n].setVisibility(0);
          n += 1;
        }
      }
    }
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramMessage.getText());
        if (paramMessage.getType() != 11) {
          continue;
        }
        localObject1 = paramChatActivity.s;
        localObject2 = locale.f;
        str1 = JSONUtils.getString(localJSONObject, "symbol");
        locale.b.setText(String.format("%s(%s)", new Object[] { JSONUtils.getString(localJSONObject, "name"), str1 }));
        ((com.d.a.b.f)localObject1).a(JSONUtils.getString(localJSONObject, "icon"), locale.c, (com.d.a.b.d)localObject2);
        d1 = JSONUtils.getDouble(localJSONObject, "change");
        double d2 = JSONUtils.getDouble(localJSONObject, "price");
        double d3 = JSONUtils.getDouble(localJSONObject, "changePercentage");
        locale.d.setTextColor(ar.a().a(d1));
        if (d1 <= 0.0D) {
          continue;
        }
        localObject1 = "+";
        localObject3 = JSONUtils.getString(localJSONObject, "unit");
        if (localObject3 != null)
        {
          localObject2 = localObject3;
          if (((String)localObject3).trim().length() != 0) {}
        }
        else
        {
          localObject2 = as.a(str1).a;
        }
        localObject2 = String.format("%s%.2f", new Object[] { localObject2, Double.valueOf(d2) });
        localObject1 = String.format("%s%.2f(%s%.2f%%)", new Object[] { localObject1, Double.valueOf(d1), localObject1, Double.valueOf(100.0D * d3) });
        localObject2 = new SpannableStringBuilder((CharSequence)localObject2);
        ((SpannableStringBuilder)localObject2).setSpan(new AbsoluteSizeSpan(16, true), 0, ((SpannableStringBuilder)localObject2).length(), 0);
        ((SpannableStringBuilder)localObject2).setSpan(new StyleSpan(1), 0, ((SpannableStringBuilder)localObject2).length(), 0);
        ((SpannableStringBuilder)localObject2).append("\n").append((CharSequence)localObject1);
        locale.d.setText((CharSequence)localObject2);
      }
      catch (JSONException paramChatActivity)
      {
        JSONObject localJSONObject;
        String str1;
        double d1;
        String str3;
        String str2;
        TextView localTextView;
        paramChatActivity.printStackTrace();
        continue;
        localObject1 = str3 + ":";
        continue;
        if (paramMessage.getType() != 12) {
          continue;
        }
        localObject1 = paramChatActivity.s;
        localObject2 = locale.f;
        locale.b.setText(JSONUtils.getString(localJSONObject, "name"));
        ((com.d.a.b.f)localObject1).a(JSONUtils.getString(localJSONObject, "icon"), locale.c, (com.d.a.b.d)localObject2);
        locale.d.setText(String.format("被%d人关注\n%d条评论\n关注%d只股票", new Object[] { Integer.valueOf(localJSONObject.optInt("fans", 0)), Integer.valueOf(localJSONObject.optInt("posts", 0)), Integer.valueOf(localJSONObject.optInt("stocks", 0)) }));
        locale.d.setTextColor(locale.d.getContext().getResources().getColor(2131558417));
        continue;
      }
      locale.a.setOnClickListener(new e.1(locale, localJSONObject, paramChatActivity));
      locale.a.setOnLongClickListener(new h(locale.g, paramMessage));
      if (this.e != null)
      {
        if (paramMessage.isFailed())
        {
          this.e.setVisibility(8);
          this.g.setVisibility(0);
          this.f.setVisibility(0);
        }
      }
      else
      {
        if (this.h != null)
        {
          paramChatActivity = DBManager.getInstance().queryUserByUserId(paramMessage.getFromId());
          if ((!paramMessage.isToGroup()) || (paramChatActivity == null)) {
            break label1759;
          }
          this.h.setText(paramChatActivity.getScreenName());
          this.h.setVisibility(0);
        }
        paramChatActivity = new SimpleDateFormat("HH:mm");
        paramChatActivity.setTimeZone(TimeZone.getDefault());
        this.g.setText(paramChatActivity.format(paramMessage.getCreatedAt()));
        return;
        if (d1 >= 0.0D) {
          break label1771;
        }
        localObject1 = "";
        continue;
        if (paramMessage.getType() == 13)
        {
          localObject2 = paramChatActivity.s;
          localObject3 = locale.f;
          localObject1 = JSONUtils.getString(localJSONObject, "title");
          str3 = JSONUtils.getString(localJSONObject, "user");
          str1 = JSONUtils.getString(localJSONObject, "image");
          str2 = JSONUtils.getString(localJSONObject, "text");
          localTextView = locale.b;
          if ((localObject1 != null) && (((String)localObject1).length() > 0))
          {
            localTextView.setText((CharSequence)localObject1);
            ((com.d.a.b.f)localObject2).a(str1, locale.c, (com.d.a.b.d)localObject3);
            locale.d.setText(str2);
            locale.d.setTextColor(locale.d.getContext().getResources().getColor(2131558417));
            continue;
          }
        }
        if (paramMessage.getType() == 0)
        {
          this.a.setText(paramMessage.getText());
          this.a.setVisibility(0);
          this.b.setVisibility(8);
          this.d.setVisibility(8);
          continue;
        }
        if (paramMessage.getType() == 4)
        {
          if ((paramMessage.getStatus() == 5) || (paramMessage.getStatus() == -1) || (paramMessage.getStatus() == 1))
          {
            a(this.b, paramMessage.getText());
            paramChatActivity.s.a(paramMessage.getText().split("\\?")[0], this.b, this.m);
            this.k.setVisibility(0);
          }
          for (;;)
          {
            this.b.setVisibility(0);
            this.a.setVisibility(8);
            this.d.setVisibility(8);
            this.b.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                paramAnonymousView = new Intent(paramChatActivity, ImageActivity.class);
                paramAnonymousView.putExtra("url", paramMessage.getText().split("\\?")[0]);
                paramChatActivity.startActivity(paramAnonymousView);
                paramChatActivity.overridePendingTransition(2130968583, 2130968584);
              }
            });
            break;
            this.k.setVisibility(8);
            localObject2 = paramMessage.getText();
            localObject1 = "";
            if (((String)localObject2).contains("?")) {
              localObject1 = localObject2.split("\\?")[0];
            }
            localObject3 = String.format("%s!thumb.png", new Object[] { localObject1 });
            if (((String)localObject2).contains("?")) {
              a(this.b, (String)localObject2);
            }
            localObject2 = paramChatActivity.s.d().a((String)localObject1);
            if ((localObject2 != null) && (((File)localObject2).exists()))
            {
              if ((this.b.getTag() == null) || (!this.b.getTag().equals(localObject1))) {
                paramChatActivity.s.a((String)localObject1, this.b, this.m, new com.d.a.b.f.d()
                {
                  public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
                  {
                    super.a(paramAnonymousString, paramAnonymousView, paramAnonymousBitmap);
                    f.this.b.setTag(localObject1);
                  }
                });
              }
            }
            else if ((this.b.getTag() == null) || (!this.b.getTag().equals(localObject3))) {
              paramChatActivity.s.a((String)localObject3, this.b, this.m, new com.d.a.b.f.d()
              {
                public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
                {
                  super.a(paramAnonymousString, paramAnonymousView, paramAnonymousBitmap);
                  f.this.b.setTag(localObject3);
                }
              });
            }
          }
        }
        if ((paramMessage.getType() != 3) && (paramMessage.getType() != 1)) {
          continue;
        }
        this.b.setVisibility(8);
        this.a.setVisibility(8);
        this.d.setVisibility(0);
        localObject1 = paramMessage.getText();
        if (((String)localObject1).contains("?")) {}
        for (localObject1 = String.format("%s&access_token=%s", new Object[] { localObject1, u.a().a });; localObject1 = String.format("%s?access_token=%s", new Object[] { localObject1, u.a().a }))
        {
          this.d.loadUrl((String)localObject1);
          localObject1 = paramChatActivity.getResources().getDisplayMetrics();
          this.d.getLayoutParams().width = ((int)TypedValue.applyDimension(1, 150.0F, (DisplayMetrics)localObject1));
          this.d.getLayoutParams().height = ((int)TypedValue.applyDimension(1, 80.0F, (DisplayMetrics)localObject1));
          this.d.setOnTouchListener(new View.OnTouchListener()
          {
            GestureDetector a = new GestureDetector(paramChatActivity, new GestureDetector.SimpleOnGestureListener()
            {
              public final boolean onSingleTapConfirmed(MotionEvent paramAnonymous2MotionEvent)
              {
                if ((f.6.this.c.getType() == 1) || (f.6.this.c.getType() == 3)) {
                  q.a(f.6.this.c.getText().split("\\?")[0], f.6.this.b);
                }
                return true;
              }
            });
            
            public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
            {
              return this.a.onTouchEvent(paramAnonymousMotionEvent);
            }
          });
          break;
        }
      }
      this.f.setVisibility(8);
      this.e.setVisibility(0);
      this.g.setVisibility(0);
      if ((paramMessage.isToGroup()) && (paramMessage.getStatus() != 1) && (paramMessage.getStatus() != 5))
      {
        this.e.setVisibility(4);
      }
      else if ((paramMessage.getStatus() == 1) || (paramMessage.getStatus() == 5))
      {
        this.e.setText("发送中");
        this.e.setVisibility(0);
      }
      else if (paramMessage.getStatus() == 4)
      {
        this.e.setText("已读");
      }
      else if (paramMessage.getStatus() == 0)
      {
        this.e.setText("已发送");
      }
      else
      {
        this.e.setText("");
        continue;
        label1759:
        this.h.setVisibility(8);
        continue;
        label1771:
        localObject1 = "";
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */