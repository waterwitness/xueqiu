package com.flurry.android.tumblr;

import android.os.Bundle;
import android.text.TextUtils;

public class PhotoPost
  extends Post
{
  private String a;
  private String b;
  
  public PhotoPost(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Url to post cannot be null or empty");
    }
    this.a = paramString;
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
    localBundle.putString("com.flurry.android.post_caption", b());
    localBundle.putString("com.flurry.android.post_url", a());
    localBundle.putString("com.flurry.android.post_ios_deeplinks", e());
    localBundle.putString("com.flurry.android.post_android_deeplinks", d());
    localBundle.putString("com.flurry.android.post_weblink", f());
    localBundle.putBoolean("com.flurry.android.is_image_post", true);
    localBundle.putInt("com.flurry.android.post_id", g());
    return localBundle;
  }
  
  public void setCaption(String paramString)
  {
    this.b = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\android\tumblr\PhotoPost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */