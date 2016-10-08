package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.Html.ImageGetter;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.text.style.URLSpan;
import android.view.View;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.r;
import com.xueqiu.android.common.q;
import com.xueqiu.android.community.widget.c;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public final class ai
{
  public static Spanned a(CharSequence paramCharSequence, Context paramContext)
  {
    return a(paramCharSequence, paramContext, false);
  }
  
  public static Spanned a(CharSequence paramCharSequence, Context paramContext, final TextView paramTextView)
  {
    int k = 0;
    int m = paramContext.obtainStyledAttributes(new int[] { 2130772260 }).getResourceId(0, 0);
    paramCharSequence = b(paramCharSequence, paramContext, true);
    if (paramCharSequence == null) {}
    for (paramCharSequence = "";; paramCharSequence = paramCharSequence.toString())
    {
      paramCharSequence = b(paramCharSequence);
      paramTextView = new Html.ImageGetter()
      {
        int a = ay.a(ai.this) - (int)ay.a(24.0F);
        
        public final Drawable getDrawable(String paramAnonymousString)
        {
          boolean bool = "[呵呵傻逼]".endsWith(paramAnonymousString);
          int i = Arrays.asList(ai.this.getString(2131165525).split(",")).indexOf(paramAnonymousString);
          if (((i < 54) && (i >= 0)) || (bool))
          {
            paramAnonymousString = ad.a(ai.this, i);
            if (paramAnonymousString != null)
            {
              i = ai.this.getResources().getDimensionPixelOffset(2131230802);
              paramAnonymousString.setBounds(0, 0, i, i);
            }
            return paramAnonymousString;
          }
          final aj localaj = new aj();
          Object localObject = n.a();
          ((com.d.a.b.e)localObject).j = com.d.a.b.a.e.a;
          com.d.a.b.d locald = ((com.d.a.b.e)localObject).b();
          if ((!paramAnonymousString.contains(".jpg!")) && (!paramAnonymousString.contains(".jpeg!")))
          {
            localObject = paramAnonymousString;
            if (!paramAnonymousString.contains(".png!")) {}
          }
          else
          {
            paramAnonymousString = paramAnonymousString.substring(0, paramAnonymousString.lastIndexOf('!'));
            localObject = String.format(Locale.CHINA, "%s!custom660.jpg", new Object[] { paramAnonymousString });
          }
          f.a().a((String)localObject, locald, new com.d.a.b.f.d()
          {
            public final void a(String paramAnonymous2String, View paramAnonymous2View, Bitmap paramAnonymous2Bitmap)
            {
              try
              {
                float f = ai.2.this.a / paramAnonymous2Bitmap.getWidth();
                if (paramAnonymous2Bitmap.getHeight() / paramAnonymous2Bitmap.getWidth() > 4) {
                  f = 1.0F;
                }
                if (paramAnonymous2Bitmap.getWidth() <= 48) {
                  f = 3.0F;
                }
                paramAnonymous2String = new Matrix();
                paramAnonymous2String.postScale(f, f);
                paramAnonymous2String = Bitmap.createBitmap(paramAnonymous2Bitmap, 0, 0, paramAnonymous2Bitmap.getWidth(), paramAnonymous2Bitmap.getHeight(), paramAnonymous2String, true);
                localaj.a = paramAnonymous2String;
                localaj.setBounds(0, 0, paramAnonymous2String.getWidth(), paramAnonymous2String.getHeight());
                if (ai.2.this.c != null)
                {
                  ai.2.this.c.invalidate();
                  ai.2.this.c.setText(ai.2.this.c.getText());
                }
                return;
              }
              catch (OutOfMemoryError paramAnonymous2String)
              {
                b.a();
                b.g();
              }
            }
          });
          return localaj;
        }
      };
      paramCharSequence = new SpannableStringBuilder(Html.fromHtml(paramCharSequence.toString(), paramTextView, new c()));
      a(paramCharSequence, paramContext);
      a(paramCharSequence, paramContext.getResources().getColor(m));
      return paramCharSequence;
      paramCharSequence = new StringBuilder(paramCharSequence);
      int i = 0;
      int j;
      for (;;)
      {
        j = k;
        if (paramCharSequence.indexOf("<p>", i) < 0) {
          break;
        }
        paramCharSequence.replace(paramCharSequence.indexOf("<p>", i), paramCharSequence.indexOf("<p>", i) + "<p>".length(), "<androidP>");
        i += 1;
      }
      while (paramCharSequence.indexOf("</p>", j) >= 0)
      {
        paramCharSequence.replace(paramCharSequence.indexOf("</p>", j), paramCharSequence.indexOf("</p>", j) + "</p>".length(), "<androidP>");
        j += 1;
      }
      if (paramCharSequence.toString().endsWith("<androidP>")) {
        paramCharSequence.replace(paramCharSequence.length() - 10, paramCharSequence.length(), "");
      }
    }
  }
  
  public static Spanned a(CharSequence paramCharSequence, Context paramContext, boolean paramBoolean)
  {
    return a(paramCharSequence, paramContext, paramBoolean, paramContext.obtainStyledAttributes(new int[] { 2130772260 }).getResourceId(0, 0), false);
  }
  
  private static Spanned a(CharSequence paramCharSequence, Context paramContext, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    int k = 0;
    if (paramCharSequence == null) {}
    for (paramCharSequence = "";; paramCharSequence = paramCharSequence.toString())
    {
      paramCharSequence = b(paramCharSequence, paramContext, false);
      Object localObject1 = new Html.ImageGetter()
      {
        public final Drawable getDrawable(String paramAnonymousString)
        {
          String str = null;
          boolean bool = "[呵呵傻逼]".endsWith(paramAnonymousString);
          int i = Arrays.asList(ai.this.getString(2131165525).split(",")).indexOf(paramAnonymousString);
          if (((i < 54) && (i >= 0)) || (bool))
          {
            paramAnonymousString = ad.a(ai.this, i);
            str = paramAnonymousString;
            if (paramAnonymousString != null)
            {
              i = ai.this.getResources().getDimensionPixelOffset(2131230802);
              paramAnonymousString.setBounds(0, 0, i, i);
              str = paramAnonymousString;
            }
          }
          while (!"[网页链接]".equals(paramAnonymousString)) {
            return str;
          }
          b.a();
          if (!b.i()) {}
          for (paramAnonymousString = r.h(2130838260);; paramAnonymousString = r.h(2130838261))
          {
            str = paramAnonymousString;
            if (paramAnonymousString == null) {
              break;
            }
            i = ai.this.getResources().getDimensionPixelOffset(2131230870);
            paramAnonymousString.setBounds(0, 0, i, i);
            return paramAnonymousString;
          }
        }
      };
      paramCharSequence = new SpannableStringBuilder(Html.fromHtml(paramCharSequence.toString(), (Html.ImageGetter)localObject1, null));
      if (!paramBoolean1) {
        break;
      }
      localObject1 = (ImageSpan[])paramCharSequence.getSpans(0, paramCharSequence.length(), ImageSpan.class);
      int j = localObject1.length;
      int i = k;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        k = paramCharSequence.getSpanStart(localObject2);
        paramCharSequence.delete(k, paramCharSequence.getSpanStart(localObject2));
        paramCharSequence.setSpan(new ImageSpan(((ImageSpan)localObject2).getDrawable(), 1), k, k + 1, 18);
        i += 1;
      }
      paramCharSequence = new StringBuffer(paramCharSequence);
      i = 0;
      while (paramCharSequence.indexOf("<a", i) >= 0)
      {
        int m = paramCharSequence.indexOf("<a", i);
        int n = paramCharSequence.indexOf(">", paramCharSequence.indexOf("<a", i));
        int i1 = paramCharSequence.indexOf("</a>", paramCharSequence.indexOf("<a", i));
        if (i1 == -1) {
          break;
        }
        if (!paramCharSequence.subSequence(m, n).toString().contains("class=\"status-link\""))
        {
          i = i1 + 4;
        }
        else
        {
          i = paramCharSequence.indexOf("<a", m + 2);
          j = m;
          if (i != -1)
          {
            j = m;
            if (i < i1) {
              j = i;
            }
          }
          m = paramCharSequence.indexOf("/>", j);
          if (m != -1)
          {
            i = m;
            if (m < i1) {}
          }
          else if ("网页链接".equals(paramCharSequence.subSequence(n + 1, i1)))
          {
            paramCharSequence.insert(j, " <img src=\"http://js.xueqiu.com/images/face/emoji_link_40.png\" title=\"[网页链接]\" alt=\"[网页链接]\" height=\"24\" />");
            i = i1 + 4 + " <img src=\"http://js.xueqiu.com/images/face/emoji_link_40.png\" title=\"[网页链接]\" alt=\"[网页链接]\" height=\"24\" />".length();
          }
          else
          {
            i = i1 + 4;
          }
        }
      }
    }
    if (paramBoolean2)
    {
      a(paramCharSequence);
      return paramCharSequence;
    }
    a(paramCharSequence, paramContext.getResources().getColor(paramInt));
    return paramCharSequence;
  }
  
  public static String a(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return "";
    }
    int i = 0;
    StringBuilder localStringBuilder = new StringBuilder(paramCharSequence);
    while (localStringBuilder.indexOf("<img", i) >= 0)
    {
      int j = localStringBuilder.indexOf("<img", i);
      int k = localStringBuilder.indexOf(">", localStringBuilder.indexOf("<img", i));
      if (k == -1) {
        break;
      }
      String str2 = localStringBuilder.substring(j, k);
      int m = localStringBuilder.indexOf("alt=\"", j);
      String str1 = "[图片]";
      paramCharSequence = str1;
      if (m > 0)
      {
        paramCharSequence = str1;
        if (m < k)
        {
          m = localStringBuilder.indexOf("alt=\"", j);
          int n = localStringBuilder.indexOf("\"", "alt=\"".length() + m);
          paramCharSequence = localStringBuilder.substring(m + "alt=\"".length(), n);
        }
      }
      localStringBuilder.replace(j, k + 1, paramCharSequence);
      j = k - (str2.length() - paramCharSequence.length());
      if (i >= j) {
        break;
      }
      i = j;
    }
    return localStringBuilder.toString();
  }
  
  private static void a(Spannable paramSpannable)
  {
    int i = 0;
    URLSpan[] arrayOfURLSpan = (URLSpan[])paramSpannable.getSpans(0, paramSpannable.length(), URLSpan.class);
    int j = arrayOfURLSpan.length;
    while (i < j)
    {
      paramSpannable.removeSpan(arrayOfURLSpan[i]);
      i += 1;
    }
  }
  
  private static void a(Spannable paramSpannable, int paramInt)
  {
    URLSpan[] arrayOfURLSpan = (URLSpan[])paramSpannable.getSpans(0, paramSpannable.length(), URLSpan.class);
    int j = arrayOfURLSpan.length;
    int i = 0;
    while (i < j)
    {
      URLSpan localURLSpan = arrayOfURLSpan[i];
      int k = paramSpannable.getSpanStart(localURLSpan);
      int m = paramSpannable.getSpanEnd(localURLSpan);
      paramSpannable.removeSpan(localURLSpan);
      paramSpannable.setSpan(new ak(localURLSpan.getURL(), paramInt), k, m, 0);
      i += 1;
    }
  }
  
  private static void a(SpannableStringBuilder paramSpannableStringBuilder, final Context paramContext)
  {
    ImageSpan[] arrayOfImageSpan = (ImageSpan[])paramSpannableStringBuilder.getSpans(0, paramSpannableStringBuilder.length(), ImageSpan.class);
    List localList = Arrays.asList(paramContext.getString(2131165525).split(","));
    int k = arrayOfImageSpan.length;
    int i = 0;
    if (i < k)
    {
      Object localObject = arrayOfImageSpan[i];
      int m = paramSpannableStringBuilder.getSpanStart(localObject);
      int n = paramSpannableStringBuilder.getSpanEnd(localObject);
      int j = localList.indexOf(((ImageSpan)localObject).getSource());
      if ((j < 54) && (j >= 0))
      {
        paramSpannableStringBuilder.removeSpan(localObject);
        paramSpannableStringBuilder.setSpan(new ImageSpan(((ImageSpan)localObject).getDrawable(), 1), m, n, 18);
      }
      for (;;)
      {
        i += 1;
        break;
        localObject = new ClickableSpan()
        {
          public final void onClick(View paramAnonymousView)
          {
            q.a(ai.this.getSource(), paramContext);
          }
        };
        ClickableSpan[] arrayOfClickableSpan = (ClickableSpan[])paramSpannableStringBuilder.getSpans(m, n, ClickableSpan.class);
        if (arrayOfClickableSpan.length != 0)
        {
          int i1 = arrayOfClickableSpan.length;
          j = 0;
          while (j < i1)
          {
            paramSpannableStringBuilder.removeSpan(arrayOfClickableSpan[j]);
            j += 1;
          }
        }
        paramSpannableStringBuilder.setSpan(localObject, m, n, 33);
      }
    }
  }
  
  public static Spanned b(CharSequence paramCharSequence, Context paramContext)
  {
    return a(paramCharSequence, paramContext, false, 0, true);
  }
  
  private static String b(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramCharSequence);
    int i = 0;
    if (localStringBuilder.indexOf("<div class=\"img_desc\">", i) >= 0)
    {
      int j = localStringBuilder.indexOf("<div class=\"img_desc\">", i) + "<div class=\"img_desc\">".length();
      int k = localStringBuilder.indexOf("<div class=\"img_desc\">", i);
      int m = localStringBuilder.indexOf("</div>", j);
      i = "</div>".length() + m;
      paramCharSequence = localStringBuilder.subSequence(j, m).toString();
      if (k - 5 >= 0) {
        if (("<br/>".equalsIgnoreCase(localStringBuilder.substring(k - 5, k))) || ("<br>".equalsIgnoreCase(localStringBuilder.substring(k - 4, k)))) {
          paramCharSequence = String.format("<gray><size><center>%s<br/></center></size></gray>", new Object[] { paramCharSequence });
        }
      }
      for (;;)
      {
        localStringBuilder.replace(k, i, paramCharSequence);
        break;
        paramCharSequence = String.format("<br/><gray><size><center>%s<br/></center></size></gray>", new Object[] { paramCharSequence });
        continue;
        paramCharSequence = String.format("<br/><gray><size><center>%s<br/></center></size></gray>", new Object[] { paramCharSequence });
      }
    }
    return localStringBuilder.toString();
  }
  
  private static String b(CharSequence paramCharSequence, Context paramContext, boolean paramBoolean)
  {
    if (paramCharSequence == null) {
      return "";
    }
    int k = 0;
    paramCharSequence = new StringBuffer(paramCharSequence);
    while (paramCharSequence.indexOf("<img", k) >= 0)
    {
      int m = paramCharSequence.indexOf("<img", k);
      int i = paramCharSequence.indexOf(">", paramCharSequence.indexOf("<img", k));
      if (i != -1)
      {
        int j = paramCharSequence.indexOf("src=\"", m);
        int n = paramCharSequence.indexOf("\"", "src=\"".length() + j);
        if ((j == -1) || (n == -1) || (j > i) || (n > i))
        {
          paramCharSequence.delete(m, i + 1);
        }
        else
        {
          String str1 = paramCharSequence.substring("src=\"".length() + j, n);
          int i1 = paramCharSequence.indexOf("alt=\"", m);
          String str2;
          if ((i1 > 0) && (i1 < i))
          {
            i1 = paramCharSequence.indexOf("alt=\"", m);
            int i2 = paramCharSequence.indexOf("\"", "alt=\"".length() + i1);
            str2 = paramCharSequence.substring("alt=\"".length() + i1, i2);
            if ((paramContext.getString(2131165524).contains(str2)) || ("[网页链接]".equals(str2)))
            {
              paramCharSequence.replace("src=\"".length() + j, n, str2);
              i -= str1.length() - str2.length();
            }
          }
          for (;;)
          {
            if (k >= i) {
              break label538;
            }
            k = i;
            break;
            paramCharSequence.replace(m, i + 1, str2);
            i = str2.length() + m;
            continue;
            j = i;
            if (!paramBoolean)
            {
              paramCharSequence.replace(m, i + 1, "&nbsp;");
              j = m + 6;
            }
            n = m - "<br>".length();
            if ((m > 0) && (n < 0))
            {
              paramCharSequence.insert(m, "<br>");
              i = j;
            }
            else
            {
              i = j;
              if (n >= 0)
              {
                i = j;
                if (!"<br>".equals(paramCharSequence.subSequence(m - "<br>".length(), m)))
                {
                  i = j;
                  if (!"<br/>".equals(paramCharSequence.subSequence(m - "<br/>".length(), m)))
                  {
                    i = j;
                    if (!"</h4>".equals(paramCharSequence.subSequence(m - "</h4>".length(), m)))
                    {
                      i = j;
                      if (!"<p>".equals(paramCharSequence.subSequence(m - "<p>".length(), m)))
                      {
                        i = j;
                        if (!"</p>".equals(paramCharSequence.subSequence(m - "</p>".length(), m)))
                        {
                          paramCharSequence.insert(m, "<br>");
                          i = j;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    label538:
    return paramCharSequence.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */