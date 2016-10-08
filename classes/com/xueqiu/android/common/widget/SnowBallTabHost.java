package com.xueqiu.android.common.widget;

import android.content.Context;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.y;
import android.util.AttributeSet;
import com.xueqiu.android.common.d;

public class SnowBallTabHost
  extends y
{
  private q a;
  
  public SnowBallTabHost(Context paramContext)
  {
    super(paramContext);
  }
  
  public SnowBallTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final void a(Context paramContext, q paramq, int paramInt)
  {
    this.a = paramq;
    super.a(paramContext, paramq, paramInt);
  }
  
  protected void onAttachedToWindow()
  {
    try
    {
      super.onAttachedToWindow();
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public void setCurrentTab(int paramInt)
  {
    if ((paramInt != -1) && (paramInt == getCurrentTab()))
    {
      i locali = this.a.a(getCurrentTabTag());
      if (locali == null) {
        return;
      }
      if ((locali instanceof d))
      {
        ((d)locali).B_();
        return;
      }
    }
    try
    {
      super.setCurrentTab(paramInt);
      return;
    }
    catch (IllegalStateException localIllegalStateException) {}
  }
  
  public void setCurrentTabByTag(String paramString)
  {
    super.setCurrentTabByTag(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SnowBallTabHost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */