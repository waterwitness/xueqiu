package com.tencent.stat.event;

import android.content.Context;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONObject;

public class CustomEvent
  extends Event
{
  private long duration = -1L;
  protected CustomEvent.Key key = new CustomEvent.Key();
  
  public CustomEvent(Context paramContext, int paramInt, String paramString)
  {
    super(paramContext, paramInt);
    this.key.id = paramString;
  }
  
  public CustomEvent.Key getKey()
  {
    return this.key;
  }
  
  public EventType getType()
  {
    return EventType.CUSTOM;
  }
  
  public boolean onEncode(JSONObject paramJSONObject)
  {
    paramJSONObject.put("ei", this.key.id);
    if (this.duration > 0L) {
      paramJSONObject.put("du", this.duration);
    }
    if (this.key.args != null)
    {
      JSONArray localJSONArray = new JSONArray();
      String[] arrayOfString = this.key.args;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(arrayOfString[i]);
        i += 1;
      }
      paramJSONObject.put("ar", localJSONArray);
    }
    if (this.key.prop != null) {
      paramJSONObject.put("kv", new JSONObject(this.key.prop));
    }
    return true;
  }
  
  public void setArgs(String[] paramArrayOfString)
  {
    this.key.args = paramArrayOfString;
  }
  
  public void setDuration(long paramLong)
  {
    this.duration = paramLong;
  }
  
  public void setProperties(Properties paramProperties)
  {
    this.key.prop = paramProperties;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\event\CustomEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */