package com.flurry.sdk;

import android.util.SparseArray;
import com.flurry.android.tumblr.Post;

public class me
{
  private static me b = null;
  private SparseArray<Post> a = new SparseArray();
  
  public static me a()
  {
    if (b == null) {
      b = new me();
    }
    return b;
  }
  
  public void a(int paramInt)
  {
    this.a.remove(paramInt);
  }
  
  public void a(int paramInt, Post paramPost)
  {
    this.a.append(paramInt, paramPost);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\me.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */