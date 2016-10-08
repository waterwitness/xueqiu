package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.annotation.NonNull;
import android.view.View;

public final class m
  extends BitmapDrawable
{
  float a;
  float b;
  float c;
  
  m(@NonNull View paramView, float paramFloat)
  {
    super(localResources, localBitmap);
    this.a = paramView.getTop();
    this.b = paramFloat;
    setBounds(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  final void a(int paramInt)
  {
    setBounds(getBounds().left, paramInt, getBounds().left + getIntrinsicWidth(), getIntrinsicHeight() + paramInt);
  }
  
  final boolean a()
  {
    return this.a > getBounds().top;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */