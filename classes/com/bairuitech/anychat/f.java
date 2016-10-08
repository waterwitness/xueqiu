package com.bairuitech.anychat;

import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;

public final class f
  extends Handler
{
  WeakReference<AnyChatCoreSDK> a;
  
  public f(AnyChatCoreSDK paramAnyChatCoreSDK)
  {
    this.a = new WeakReference(paramAnyChatCoreSDK);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    Object localObject1 = (AnyChatCoreSDK)this.a.get();
    if (localObject1 == null) {}
    int i;
    do
    {
      do
      {
        int j;
        int k;
        int m;
        int n;
        do
        {
          do
          {
            Object localObject2;
            do
            {
              do
              {
                String str;
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    do
                                    {
                                      do
                                      {
                                        do
                                        {
                                          do
                                          {
                                            do
                                            {
                                              do
                                              {
                                                do
                                                {
                                                  do
                                                  {
                                                    do
                                                    {
                                                      do
                                                      {
                                                        do
                                                        {
                                                          do
                                                          {
                                                            do
                                                            {
                                                              do
                                                              {
                                                                return;
                                                                super.handleMessage(paramMessage);
                                                                paramMessage = paramMessage.getData();
                                                                i = paramMessage.getInt("HANDLETYPE");
                                                                if (i != AnyChatCoreSDK.a()) {
                                                                  break;
                                                                }
                                                                i = paramMessage.getInt("MSG");
                                                                j = paramMessage.getInt("WPARAM");
                                                                k = paramMessage.getInt("LPARAM");
                                                                switch (i)
                                                                {
                                                                case 1239: 
                                                                default: 
                                                                  return;
                                                                }
                                                              } while (((AnyChatCoreSDK)localObject1).a == null);
                                                              paramMessage = ((AnyChatCoreSDK)localObject1).a;
                                                              if (j > 0) {}
                                                              for (bool1 = true;; bool1 = false)
                                                              {
                                                                paramMessage.OnAnyChatConnectMessage(bool1);
                                                                return;
                                                              }
                                                            } while (((AnyChatCoreSDK)localObject1).a == null);
                                                            ((AnyChatCoreSDK)localObject1).a.OnAnyChatLoginMessage(j, k);
                                                            return;
                                                          } while (((AnyChatCoreSDK)localObject1).a == null);
                                                          ((AnyChatCoreSDK)localObject1).a.OnAnyChatEnterRoomMessage(j, k);
                                                          return;
                                                        } while (((AnyChatCoreSDK)localObject1).a == null);
                                                        paramMessage = ((AnyChatCoreSDK)localObject1).a;
                                                        if (k > 0) {}
                                                        for (;;)
                                                        {
                                                          paramMessage.OnAnyChatUserAtRoomMessage(j, bool1);
                                                          return;
                                                          bool1 = false;
                                                        }
                                                      } while (((AnyChatCoreSDK)localObject1).a == null);
                                                      ((AnyChatCoreSDK)localObject1).a.OnAnyChatLinkCloseMessage(k);
                                                      return;
                                                    } while (((AnyChatCoreSDK)localObject1).a == null);
                                                    ((AnyChatCoreSDK)localObject1).a.OnAnyChatOnlineUserMessage(j, k);
                                                    return;
                                                  } while (((AnyChatCoreSDK)localObject1).b == null);
                                                  return;
                                                } while (((AnyChatCoreSDK)localObject1).b == null);
                                                return;
                                              } while (((AnyChatCoreSDK)localObject1).b == null);
                                              return;
                                            } while (((AnyChatCoreSDK)localObject1).b == null);
                                            return;
                                          } while (((AnyChatCoreSDK)localObject1).b == null);
                                          return;
                                        } while (((AnyChatCoreSDK)localObject1).c == null);
                                        return;
                                      } while (((AnyChatCoreSDK)localObject1).c == null);
                                      return;
                                    } while (((AnyChatCoreSDK)localObject1).c == null);
                                    return;
                                  } while (((AnyChatCoreSDK)localObject1).g == null);
                                  return;
                                } while (((AnyChatCoreSDK)localObject1).g == null);
                                return;
                              } while (AnyChatCoreSDK.j == null);
                              if (j == 1)
                              {
                                AnyChatCoreSDK.j.a(k);
                                return;
                              }
                              paramMessage = AnyChatCoreSDK.j;
                            } while (paramMessage.e);
                            paramMessage.e = true;
                            Log.d("ANYCHAT", "ReleaseAudioPlayer");
                            if (paramMessage.c != null)
                            {
                              paramMessage.d = true;
                              paramMessage.c = null;
                            }
                          } while (paramMessage.a == null);
                          try
                          {
                            paramMessage.a.stop();
                            paramMessage.a.release();
                            paramMessage.a = null;
                            return;
                          }
                          catch (Exception paramMessage)
                          {
                            return;
                          }
                        } while (AnyChatCoreSDK.j == null);
                        if (j == 1)
                        {
                          AnyChatCoreSDK.j.b(k);
                          return;
                        }
                        paramMessage = AnyChatCoreSDK.j;
                      } while (paramMessage.h);
                      paramMessage.h = true;
                      Log.d("ANYCHAT", "ReleaseAudioRecorder");
                      if (paramMessage.f != null)
                      {
                        paramMessage.g = true;
                        paramMessage.f = null;
                      }
                    } while (paramMessage.b == null);
                    try
                    {
                      paramMessage.b.stop();
                      paramMessage.b.release();
                      paramMessage.b = null;
                      return;
                    }
                    catch (Exception paramMessage)
                    {
                      return;
                    }
                    paramMessage = AnyChatCoreSDK.k;
                    bool1 = bool2;
                    if (j == 0) {
                      bool1 = false;
                    }
                    paramMessage.c = bool1;
                    if ((paramMessage.c) && (paramMessage.f != -1)) {
                      try
                      {
                        localObject1 = paramMessage.a.getParameters().getPreviewSize();
                        AnyChatCoreSDK.SetSDKOptionInt(26, 1);
                        AnyChatCoreSDK.SetInputVideoFormat(paramMessage.f, ((Camera.Size)localObject1).width, ((Camera.Size)localObject1).height, paramMessage.a.getParameters().getPreviewFrameRate(), 0);
                        AnyChatCoreSDK.SetSDKOptionInt(100, paramMessage.h);
                        return;
                      }
                      catch (Exception paramMessage)
                      {
                        return;
                      }
                    }
                    AnyChatCoreSDK.SetSDKOptionInt(26, 0);
                    return;
                    if (i != AnyChatCoreSDK.b()) {
                      break;
                    }
                    paramMessage.getInt("FROMUSERID");
                    paramMessage.getInt("TOUSERID");
                    paramMessage.getInt("SECRET");
                    paramMessage.getString("MESSAGE");
                  } while (((AnyChatCoreSDK)localObject1).d == null);
                  paramMessage = ((AnyChatCoreSDK)localObject1).d;
                  return;
                  if (i != AnyChatCoreSDK.c()) {
                    break;
                  }
                  i = paramMessage.getInt("USERID");
                  localObject2 = paramMessage.getString("FILENAME");
                  str = paramMessage.getString("TEMPFILE");
                  j = paramMessage.getInt("LENGTH");
                  k = paramMessage.getInt("WPARAM");
                  m = paramMessage.getInt("LPARAM");
                  n = paramMessage.getInt("TASKID");
                } while (((AnyChatCoreSDK)localObject1).e == null);
                ((AnyChatCoreSDK)localObject1).e.OnAnyChatTransFile(i, (String)localObject2, str, j, k, m, n);
                return;
                if (i != AnyChatCoreSDK.d()) {
                  break;
                }
                i = paramMessage.getInt("USERID");
                j = paramMessage.getInt("LENGTH");
                paramMessage = paramMessage.getByteArray("BUF");
              } while (((AnyChatCoreSDK)localObject1).e == null);
              ((AnyChatCoreSDK)localObject1).e.OnAnyChatTransBuffer(i, paramMessage, j);
              return;
              if (i != AnyChatCoreSDK.e()) {
                break;
              }
              i = paramMessage.getInt("USERID");
              j = paramMessage.getInt("LENGTH");
              localObject2 = paramMessage.getByteArray("BUF");
              k = paramMessage.getInt("WPARAM");
              m = paramMessage.getInt("LPARAM");
              n = paramMessage.getInt("TASKID");
            } while (((AnyChatCoreSDK)localObject1).e == null);
            ((AnyChatCoreSDK)localObject1).e.OnAnyChatTransBufferEx(i, (byte[])localObject2, j, k, m, n);
            return;
            if (i != AnyChatCoreSDK.f()) {
              break;
            }
            i = paramMessage.getInt("LENGTH");
            paramMessage = paramMessage.getByteArray("BUF");
          } while (((AnyChatCoreSDK)localObject1).e == null);
          ((AnyChatCoreSDK)localObject1).e.OnAnyChatSDKFilterData(paramMessage, i);
          return;
          if (i != AnyChatCoreSDK.g()) {
            break;
          }
          i = paramMessage.getInt("EVENTTYPE");
          j = paramMessage.getInt("USERID");
          k = paramMessage.getInt("ERRORCODE");
          m = paramMessage.getInt("FLAGS");
          n = paramMessage.getInt("PARAM");
          paramMessage = paramMessage.getString("USERSTR");
        } while (((AnyChatCoreSDK)localObject1).f == null);
        ((AnyChatCoreSDK)localObject1).f.OnAnyChatVideoCallEvent(i, j, k, m, n, paramMessage);
        return;
      } while (i != AnyChatCoreSDK.h());
      paramMessage.getInt("USERID");
      paramMessage.getString("FILENAME");
      paramMessage.getInt("ELAPSE");
      i = paramMessage.getInt("FLAGS");
      paramMessage.getInt("PARAM");
      paramMessage.getString("USERSTR");
    } while (((AnyChatCoreSDK)localObject1).h == null);
    if ((i & 0x400) == 0)
    {
      paramMessage = ((AnyChatCoreSDK)localObject1).h;
      return;
    }
    paramMessage = ((AnyChatCoreSDK)localObject1).h;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */