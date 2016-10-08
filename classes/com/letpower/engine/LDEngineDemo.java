package com.letpower.engine;

import android.content.Context;
import com.pingan.a.a.e;
import com.pingan.main.IAVCallStatusListener;
import com.pingan.main.PAVideoSdkApiManager;

public class LDEngineDemo
  implements IAndroidCallback
{
  public static AndroidJavaAPI LDVoiceEngAndroidAPI;
  public static String TAG = "LDEngine";
  public static boolean isRegister = false;
  public static IAVCallStatusListener mAvCallStatusListener;
  public static Context mContext;
  
  static
  {
    LDVoiceEngAndroidAPI = null;
    mAvCallStatusListener = null;
  }
  
  private void DoAuthTips(int paramInt)
  {
    outputAVCallStatus(400, null);
  }
  
  private void DoCallTips(int paramInt)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    if (paramInt < 600) {
      if (paramInt == 400)
      {
        LDVoiceEngAndroidAPI.endcall();
        outputAVCallStatus(6, null);
        e.a(TAG, "DoCallTips c =400 ");
      }
    }
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
                  if (paramInt != 486) {
                    break;
                  }
                  LDVoiceEngAndroidAPI.endcall();
                  e.a(TAG, "DoCallTips---对方拒绝-486");
                  outputAVCallStatus(11, null);
                } while (PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
                PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
                return;
                if ((paramInt != 480) && (paramInt != 484)) {
                  break;
                }
                e.a(TAG, "DoCallTips---对方繁忙-480|484");
                outputAVCallStatus(12, null);
              } while (PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
              PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
              return;
              if ((paramInt != 404) && (paramInt != 488)) {
                break;
              }
              e.a(TAG, "DoCallTips---号码不存在-404|488");
              LDVoiceEngAndroidAPI.endcall();
              outputAVCallStatus(13, null);
            } while (PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
            PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
            return;
            if (paramInt != 484) {
              break;
            }
            e.a(TAG, "DoCallTips---对方不在线-599");
            outputAVCallStatus(19, null);
          } while (PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
          PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
          return;
          if (paramInt != 599) {
            break;
          }
          e.a(TAG, "DoCallTips---对方挂机-599");
          PAVideoSdkApiManager.releaseAudioFocus();
          LDVoiceEngAndroidAPI.endcall();
          outputAVCallStatus(8, null);
        } while (PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
        PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
        return;
        if (paramInt == 487)
        {
          e.b(TAG, "DoCallTips---487");
          return;
        }
        String str;
        StringBuilder localStringBuilder;
        if (LDEngineDemo.UA_CALL_STATE.getByValue(LDVoiceEngAndroidAPI.getCallState()) == LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_CONNECTED)
        {
          e.b(TAG, "DoCallTips---呼叫接通");
          e.b(TAG, "1--" + PAEngine.local_call_type);
          e.b(TAG, "1--" + PAEngine.UA_CALL_TYPE.getByValue(LDVoiceEngAndroidAPI.getCallType()));
          e.b(TAG, "2--" + PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
          str = TAG;
          localStringBuilder = new StringBuilder("3--");
          if ((PAEngine.local_call_type == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO) && (PAEngine.UA_CALL_TYPE.getByValue(LDVoiceEngAndroidAPI.getCallType()) == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO)) {}
          for (;;)
          {
            e.b(str, bool1);
            if ((PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO) || (PAEngine.UA_CALL_TYPE.getByValue(LDVoiceEngAndroidAPI.getCallType()) != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO)) {
              break;
            }
            outputAVCallStatus(5, "video");
            return;
            bool1 = false;
          }
          if ((PAEngine.local_call_type == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO) && (PAEngine.UA_CALL_TYPE.getByValue(LDVoiceEngAndroidAPI.getCallType()) == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE))
          {
            e.a(TAG, "DoCallTips--坐席全忙");
            outputAVCallStatus(14, null);
            return;
          }
          e.a(TAG, "DoCallTips--坐席接通");
          outputAVCallStatus(5, "voice");
          return;
        }
        if ((paramInt == 601) || (LDEngineDemo.UA_CALL_STATE.getByValue(LDVoiceEngAndroidAPI.getCallState()) == LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_RINGING))
        {
          e.a(TAG, "DoCallTips---被叫振铃");
          e.b(TAG, "1--" + PAEngine.local_call_type);
          e.b(TAG, "1--" + PAEngine.UA_CALL_TYPE.getByValue(LDVoiceEngAndroidAPI.getCallType()));
          e.b(TAG, "2--" + PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
          str = TAG;
          localStringBuilder = new StringBuilder("3--");
          if ((PAEngine.local_call_type == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO) && (PAEngine.UA_CALL_TYPE.getByValue(LDVoiceEngAndroidAPI.getCallType()) == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO)) {}
          for (bool1 = bool2;; bool1 = false)
          {
            e.b(str, bool1);
            outputAVCallStatus(4, null);
            return;
          }
        }
        if ((paramInt != 599) && ((LDEngineDemo.UA_CALL_STATE.getByValue(LDVoiceEngAndroidAPI.getCallState()) != LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_IDLE) || (paramInt != 100))) {
          break;
        }
        e.a(TAG, "LDStart---DoCallTips---对方挂机");
        PAVideoSdkApiManager.releaseAudioFocus();
        outputAVCallStatus(8, null);
      } while (PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
      PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
      return;
      LDVoiceEngAndroidAPI.endcall();
      outputAVCallStatus(6, null);
      e.a(TAG, "DoCallTips c < 600,  c=" + paramInt + ", LDVoiceEngAndroidAPI.getCallState()=" + LDVoiceEngAndroidAPI.getCallState());
      return;
      if ((paramInt != 600) && (LDEngineDemo.UA_CALL_STATE.getByValue(LDVoiceEngAndroidAPI.getCallState()) != LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_IDLE)) {
        break;
      }
      e.a(TAG, "DoCallTips---作为被叫时对方挂机");
      PAVideoSdkApiManager.releaseAudioFocus();
      LDVoiceEngAndroidAPI.endcall();
      outputAVCallStatus(8, null);
    } while (PAEngine.local_call_type != PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO);
    PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
    return;
    if (LDEngineDemo.UA_CALL_STATE.getByValue(LDVoiceEngAndroidAPI.getCallState()) == LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_CONNECTED)
    {
      e.a(TAG, "DoCallTips---被叫时接通---");
      outputAVCallStatus(5, "inbound");
      return;
    }
    if ((paramInt == 601) || (LDEngineDemo.UA_CALL_STATE.getByValue(LDVoiceEngAndroidAPI.getCallState()) == LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_RINGING))
    {
      PAVideoSdkApiManager.catchAudioFocus();
      e.a(TAG, "DoCallTips---来电---getCallType=" + LDVoiceEngAndroidAPI.getCallType());
      if (LDVoiceEngAndroidAPI.getCallType() == 1) {}
      for (PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO;; PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE)
      {
        e.a(TAG, "DoCallTips---来电---getIncomingCaller=" + LDVoiceEngAndroidAPI.getIncomingCaller());
        com.pingan.main.GlobalVarHolder.callFrom = LDVoiceEngAndroidAPI.getIncomingCaller();
        outputAVCallStatus(7, null);
        return;
      }
    }
    e.a(TAG, "DoCallTips c >= 600,  c=" + paramInt + ", LDVoiceEngAndroidAPI.getCallState()=" + LDVoiceEngAndroidAPI.getCallState());
  }
  
  private void DoRTCPReport(int paramInt)
  {
    if (paramInt == 100) {
      outputAVCallStatus(9, LDVoiceEngAndroidAPI.getVoiceRTCPReport());
    }
    while (paramInt != 200) {
      return;
    }
    outputAVCallStatus(10, LDVoiceEngAndroidAPI.getVideoRTCPReport());
  }
  
  private void DoRegisterTips(int paramInt)
  {
    e.a(TAG, "LDEngine---DoRegisterTips---c=" + paramInt + "...registerState=" + LDVoiceEngAndroidAPI.getRegisterState());
    switch (paramInt)
    {
    default: 
      e.a(TAG, "LDEngine---DoRegisterTips---c=other");
      return;
    case 200: 
      if (LDVoiceEngAndroidAPI.getRegisterState() == 0)
      {
        e.a(TAG, "LDEngine---DoRegisterTips---注销成功");
        isRegister = false;
        outputAVCallStatus(3, null);
        return;
      }
      e.a(TAG, "LDEngine---DoRegisterTips---注册成功");
      isRegister = true;
      outputAVCallStatus(1, null);
      return;
    case 400: 
      e.a(TAG, "LDEngine---DoRegisterTips---注册/注销失败，error c=400");
      outputAVCallStatus(2, null);
      return;
    }
    e.a(TAG, "LDEngine---DoRegisterTips---注册/注销失败，error c=403");
    outputAVCallStatus(2, null);
  }
  
  private void DoSipMsgRece(int paramInt)
  {
    if (paramInt == 0) {
      outputAVCallStatus(18, LDVoiceEngAndroidAPI.getSipMsg());
    }
  }
  
  public static IAVCallStatusListener getIAVCallStatusListener()
  {
    return mAvCallStatusListener;
  }
  
  public static void outputAVCallStatus(int paramInt, Object paramObject)
  {
    if ((paramInt != 15) && (paramInt != 10) && (paramInt != 9)) {
      e.b(TAG, "outputAVCallStatus mAvCallStatusListener:" + mAvCallStatusListener + "--status:" + paramInt + "--obj:" + paramObject);
    }
    if (mAvCallStatusListener != null) {
      mAvCallStatusListener.outputAVCallStatus(paramInt, paramObject);
    }
  }
  
  public static void setIAVCallStatusListener(IAVCallStatusListener paramIAVCallStatusListener)
  {
    e.a(TAG, "set IAVCallStatusListener :" + paramIAVCallStatusListener);
    mAvCallStatusListener = paramIAVCallStatusListener;
  }
  
  public int messagecallback(int paramInt1, int paramInt2)
  {
    e.a(TAG, "messagecallback s:" + paramInt1 + "--c:" + paramInt2);
    switch (LDEngineDemo.UA_MESSAGE_SOURCE.getByValue(paramInt1))
    {
    }
    for (;;)
    {
      return 1;
      DoRegisterTips(paramInt2);
      continue;
      DoCallTips(paramInt2);
      continue;
      DoRTCPReport(paramInt2);
      continue;
      DoAuthTips(paramInt2);
      continue;
      DoSipMsgRece(paramInt2);
    }
  }
  
  public void sipmessagecallback(String paramString)
  {
    e.b("sdkSipLog", paramString);
    outputAVCallStatus(15, paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\LDEngineDemo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */