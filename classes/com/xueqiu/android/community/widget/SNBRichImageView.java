package com.xueqiu.android.community.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class SNBRichImageView
  extends ImageView
{
  public static int a = 1;
  public static int b = 2;
  public static int c = 3;
  private String d;
  private String e;
  private String f;
  private int g = a;
  
  public SNBRichImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public SNBRichImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public SNBRichImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public String getImageDescription()
  {
    return this.f;
  }
  
  public String getImagePath()
  {
    return this.e;
  }
  
  public String getImageUrl()
  {
    return this.d;
  }
  
  public int getUploadState()
  {
    return this.g;
  }
  
  public void setImageDescription(String paramString)
  {
    this.f = paramString;
  }
  
  public void setImagePath(String paramString)
  {
    this.e = paramString;
  }
  
  public void setImageUrl(String paramString)
  {
    this.d = paramString;
  }
  
  public void setUploadState(int paramInt)
  {
    this.g = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\SNBRichImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */