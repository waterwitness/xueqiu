package com.tencent.tauth;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.open.AsynLoadImgBack;
import com.tencent.open.Util;
import com.tencent.record.debug.WnsClientLog;

final class f
  implements AsynLoadImgBack
{
  f(Tencent paramTencent, Bundle paramBundle, String paramString1, String paramString2, IUiListener paramIUiListener, Activity paramActivity) {}
  
  public final void saved(int paramInt, String paramString)
  {
    if (paramInt == 0) {
      this.a.putString("imageLocalUrl", paramString);
    }
    while ((!Util.e(this.b)) || (!Util.e(this.c)))
    {
      Tencent.access$000(this.f, this.e, this.a, this.d);
      return;
    }
    this.d.onError(new UiError(-6, "获取分享图片失败!", null));
    WnsClientLog.a("shareToQQ", "获取分享图片失败!");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */