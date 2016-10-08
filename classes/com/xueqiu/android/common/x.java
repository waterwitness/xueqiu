package com.xueqiu.android.common;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;

public final class x
{
  public final AudioManager a;
  public SoundPool b = new SoundPool(10, 3, 5);
  public int c;
  
  public x(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, (byte)0);
  }
  
  private x(Context paramContext, int paramInt, byte paramByte)
  {
    this(paramContext, paramInt, '\000');
  }
  
  private x(Context paramContext, int paramInt, char paramChar)
  {
    this.c = this.b.load(paramContext, paramInt, 5);
    this.a = ((AudioManager)paramContext.getSystemService("audio"));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */