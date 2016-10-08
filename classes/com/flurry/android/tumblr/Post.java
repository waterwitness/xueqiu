package com.flurry.android.tumblr;

import android.os.Bundle;
import android.text.TextUtils;
import com.flurry.sdk.ec;
import com.flurry.sdk.js;
import com.flurry.sdk.kb;
import com.flurry.sdk.kc;
import com.flurry.sdk.kg;
import com.flurry.sdk.ly;
import com.flurry.sdk.me;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class Post
{
  private static final String a = Post.class.getName();
  private static AtomicInteger g = new AtomicInteger(0);
  private String b;
  private String c;
  private String d;
  private PostListener e;
  private int f = 0;
  private final kb<ec> h = new kb()
  {
    public void a(final ec paramAnonymousec)
    {
      if (paramAnonymousec.c != Post.a(Post.this)) {}
      final PostListener localPostListener;
      do
      {
        do
        {
          return;
        } while (paramAnonymousec.b == null);
        localPostListener = Post.b(Post.this);
      } while (localPostListener == null);
      js.a().a(new ly()
      {
        public void a()
        {
          switch (Post.2.a[paramAnonymousec.b.ordinal()])
          {
          default: 
            return;
          case 1: 
            kg.a(3, Post.h(), "Post success for " + paramAnonymousec.c);
            localPostListener.onPostSuccess(paramAnonymousec.f);
            kc.a().b("com.flurry.android.impl.analytics.tumblr.TumblrEvents", Post.c(Post.this));
            me.a().a(Post.a(Post.this));
            return;
          }
          String str2 = paramAnonymousec.e;
          String str1 = str2;
          if (TextUtils.isEmpty(str2)) {
            str1 = "Internal error.";
          }
          kg.a(3, Post.h(), "Post failed for " + paramAnonymousec.c + " with error code: " + paramAnonymousec.d + "  and error message: " + str1);
          localPostListener.onPostFailure(str1);
          kc.a().b("com.flurry.android.impl.analytics.tumblr.TumblrEvents", Post.c(Post.this));
          me.a().a(Post.a(Post.this));
        }
      });
    }
  };
  
  Post()
  {
    kc.a().a("com.flurry.android.impl.analytics.tumblr.TumblrEvents", this.h);
  }
  
  abstract Bundle c();
  
  String d()
  {
    return this.c;
  }
  
  String e()
  {
    return this.b;
  }
  
  String f()
  {
    return this.d;
  }
  
  int g()
  {
    return this.f;
  }
  
  public void setAndroidDeeplink(String paramString)
  {
    this.c = paramString;
  }
  
  public void setIOSDeepLink(String paramString)
  {
    this.b = paramString;
  }
  
  public void setPostListener(PostListener paramPostListener)
  {
    this.e = paramPostListener;
  }
  
  public void setWebLink(String paramString)
  {
    this.d = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\android\tumblr\Post.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */