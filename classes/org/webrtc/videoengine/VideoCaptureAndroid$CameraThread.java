package org.webrtc.videoengine;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Exchanger;

class VideoCaptureAndroid$CameraThread
  extends Thread
{
  private Exchanger<Handler> handlerExchanger;
  
  public VideoCaptureAndroid$CameraThread(Exchanger<Handler> paramExchanger)
  {
    Exchanger localExchanger;
    this.handlerExchanger = localExchanger;
  }
  
  public void run()
  {
    Looper.prepare();
    VideoCaptureAndroid.access$0(this.handlerExchanger, new Handler());
    Looper.loop();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\webrtc\videoengine\VideoCaptureAndroid$CameraThread.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */