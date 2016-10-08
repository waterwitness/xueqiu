package com.bairuitech.anychat;

import android.content.Context;
import android.view.OrientationEventListener;

public final class g
  extends OrientationEventListener
{
  public g(Context paramContext)
  {
    super(paramContext, 3);
  }
  
  public final void onOrientationChanged(int paramInt)
  {
    if (paramInt == -1) {
      paramInt = 1;
    }
    for (;;)
    {
      AnyChatCoreSDK.SetSDKOptionInt(97, paramInt);
      return;
      if ((paramInt > 325) || (paramInt <= 45)) {
        paramInt = 5;
      } else if ((paramInt > 45) && (paramInt <= 135)) {
        paramInt = 4;
      } else if ((paramInt > 135) && (paramInt < 225)) {
        paramInt = 6;
      } else {
        paramInt = 3;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */