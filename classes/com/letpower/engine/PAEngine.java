package com.letpower.engine;

public class PAEngine
  extends LDEngineDemo
{
  private static String TAG = "PAEngine";
  public static PAEngine.UA_CALL_TYPE local_call_type;
  
  public static PAEngine.UA_CALL_TYPE getLocalCallType()
  {
    return local_call_type;
  }
  
  public static void setLocalCallType(PAEngine.UA_CALL_TYPE paramUA_CALL_TYPE)
  {
    local_call_type = paramUA_CALL_TYPE;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\PAEngine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */