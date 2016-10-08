package com.xueqiu.android.community.widget;

import com.google.gson.annotations.Expose;

public class g
{
  @Expose
  int category;
  @Expose
  String htmlText;
  @Expose
  String imageDescription;
  @Expose
  String imagePath;
  @Expose
  boolean isHeader;
  
  public g(int paramInt, String paramString1, boolean paramBoolean, String paramString2, String paramString3)
  {
    this.category = paramInt;
    this.htmlText = paramString1;
    this.isHeader = paramBoolean;
    this.imagePath = paramString2;
    this.imageDescription = paramString3;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */