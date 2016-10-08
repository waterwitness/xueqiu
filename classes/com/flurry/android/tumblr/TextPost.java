package com.flurry.android.tumblr;

import android.os.Bundle;
import android.text.TextUtils;

public class TextPost
  extends Post
{
  private String a;
  private String b;
  
  public TextPost(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Body to post cannot be null or empty");
    }
    this.b = paramString;
  }
  
  String a()
  {
    return this.a;
  }
  
  String b()
  {
    return this.b;
  }
  
  Bundle c()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("com.flurry.android.post_title", a());
    localBundle.putString("com.flurry.android.post_body", b());
    localBundle.putString("com.flurry.android.post_ios_deeplinks", e());
    localBundle.putString("com.flurry.android.post_android_deeplinks", d());
    localBundle.putString("com.flurry.android.post_weblink", f());
    localBundle.putBoolean("com.flurry.android.is_text_post", true);
    localBundle.putInt("com.flurry.android.post_id", g());
    return localBundle;
  }
  
  public void setTitle(String paramString)
  {
    this.a = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\android\tumblr\TextPost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */