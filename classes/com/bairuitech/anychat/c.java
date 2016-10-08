package com.bairuitech.anychat;

import android.media.AudioRecord;
import android.os.Process;
import android.util.Log;

final class c
  extends Thread
{
  c(a parama) {}
  
  public final void run()
  {
    if (this.a.b == null) {
      return;
    }
    try
    {
      Process.setThreadPriority(-19);
    }
    catch (Exception localException1)
    {
      try
      {
        for (;;)
        {
          this.a.b.startRecording();
          Log.d("ANYCHAT", "audio record....");
          byte[] arrayOfByte = new byte['ʀ'];
          if (!this.a.g) {}
          try
          {
            i = this.a.b.read(arrayOfByte, 0, 640);
            if (i != -3) {
              if (i != -2) {
                break;
              }
            }
          }
          catch (Exception localException3)
          {
            int i;
            for (;;) {}
          }
          Log.d("ANYCHAT", "audio record stop....");
          return;
          localException1 = localException1;
          Log.d("ANYCHAT", "Set record thread priority failed: " + localException1.getMessage());
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localException2.printStackTrace();
          continue;
          AnyChatCoreSDK.InputAudioData(localException2, i, 0);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */