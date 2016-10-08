package com.tencent.bugly;

import java.util.Map;

public class BuglyStrategy$a
{
  public static final int CRASHTYPE_ANR = 4;
  public static final int CRASHTYPE_COCOS2DX_JS = 5;
  public static final int CRASHTYPE_COCOS2DX_LUA = 6;
  public static final int CRASHTYPE_JAVA_CATCH = 1;
  public static final int CRASHTYPE_JAVA_CRASH = 0;
  public static final int CRASHTYPE_NATIVE = 2;
  public static final int CRASHTYPE_U3D = 3;
  public static final int MAX_USERDATA_KEY_LENGTH = 100;
  public static final int MAX_USERDATA_VALUE_LENGTH = 30000;
  
  public Map<String, String> onCrashHandleStart(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    return null;
  }
  
  public byte[] onCrashHandleStart2GetExtraDatas(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\BuglyStrategy$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */