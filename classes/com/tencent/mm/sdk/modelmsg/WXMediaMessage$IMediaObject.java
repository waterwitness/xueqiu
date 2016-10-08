package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;

public abstract interface WXMediaMessage$IMediaObject
{
  public static final int TYPE_APPDATA = 7;
  public static final int TYPE_EMOJI = 8;
  public static final int TYPE_FILE = 6;
  public static final int TYPE_IMAGE = 2;
  public static final int TYPE_MUSIC = 3;
  public static final int TYPE_PRODUCT = 10;
  public static final int TYPE_TEXT = 1;
  public static final int TYPE_UNKNOWN = 0;
  public static final int TYPE_URL = 5;
  public static final int TYPE_VIDEO = 4;
  
  public abstract boolean checkArgs();
  
  public abstract void serialize(Bundle paramBundle);
  
  public abstract int type();
  
  public abstract void unserialize(Bundle paramBundle);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\mm\sdk\modelmsg\WXMediaMessage$IMediaObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */