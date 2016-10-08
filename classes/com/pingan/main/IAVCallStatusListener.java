package com.pingan.main;

public abstract interface IAVCallStatusListener
{
  public static final int STATUS_AUTH_FAILED = 400;
  public static final int STATUS_AUTH_SUCCESS = 420;
  public static final int STATUS_CALL_AGENT_ALL_BUSY = 14;
  public static final int STATUS_CALL_BUSY = 12;
  public static final int STATUS_CALL_CONNECTED = 5;
  public static final int STATUS_CALL_FAILED = 6;
  public static final int STATUS_CALL_IDLE = 8;
  public static final int STATUS_CALL_INCOMING = 7;
  public static final int STATUS_CALL_NON_EXIST = 13;
  public static final int STATUS_CALL_NOT_ONLINE = 19;
  public static final int STATUS_CALL_REFUSED = 11;
  public static final int STATUS_CALL_RINGING = 4;
  public static final int STATUS_FUNC_EVENT = 999;
  public static final int STATUS_HEADSET_CONNECTED = 16;
  public static final int STATUS_HEADSET_NOT_CONNECTED = 17;
  public static final int STATUS_NET_CONNECTED = 901;
  public static final int STATUS_NET_DISCONNECTED = 902;
  public static final int STATUS_NET_SIP = 15;
  public static final int STATUS_NET_VIDEO = 10;
  public static final int STATUS_NET_VOICE = 9;
  public static final int STATUS_PERMISSION_ERROR = 20;
  public static final int STATUS_SIP_MSG_RECE = 18;
  public static final int STATUS_SIP_REG_FAILED = 2;
  public static final int STATUS_SIP_REG_OK = 1;
  public static final int STATUS_SIP_UN_REG_OK = 3;
  
  public abstract void outputAVCallStatus(int paramInt, Object paramObject);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\IAVCallStatusListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */