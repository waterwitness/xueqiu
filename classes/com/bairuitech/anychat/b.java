package com.bairuitech.anychat;

import android.media.AudioTrack;
import android.os.Process;
import android.util.Log;

final class b
  extends Thread
{
  b(a parama) {}
  
  public final void run()
  {
    if (this.a.a == null) {
      return;
    }
    try
    {
      Process.setThreadPriority(-19);
    }
    catch (Exception localException2)
    {
      try
      {
        for (;;)
        {
          this.a.a.play();
          Log.d("ANYCHAT", "audio play....");
          while (!this.a.d) {
            try
            {
              byte[] arrayOfByte = AnyChatCoreSDK.FetchAudioPlayBuffer(640);
              this.a.a.write(arrayOfByte, 0, arrayOfByte.length);
            }
            catch (Exception localException1) {}
          }
          Log.d("ANYCHAT", "audio play stop....");
          return;
          localException2 = localException2;
          Log.d("ANYCHAT", "Set play thread priority failed: " + localException2.getMessage());
        }
      }
      catch (Exception localException3)
      {
        for (;;)
        {
          localException3.printStackTrace();
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */