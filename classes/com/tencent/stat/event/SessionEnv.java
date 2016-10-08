package com.tencent.stat.event;

import android.content.Context;
import com.tencent.stat.common.Env;
import com.tencent.stat.common.User;
import org.json.JSONObject;

public class SessionEnv
  extends Event
{
  private JSONObject cfgJson = null;
  private Env env;
  
  public SessionEnv(Context paramContext, int paramInt, JSONObject paramJSONObject)
  {
    super(paramContext, paramInt);
    this.env = new Env(paramContext);
    this.cfgJson = paramJSONObject;
  }
  
  public EventType getType()
  {
    return EventType.SESSION_ENV;
  }
  
  public boolean onEncode(JSONObject paramJSONObject)
  {
    paramJSONObject.put("ut", this.user.getType());
    if (this.cfgJson != null) {
      paramJSONObject.put("cfg", this.cfgJson);
    }
    this.env.encode(paramJSONObject);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\event\SessionEnv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */