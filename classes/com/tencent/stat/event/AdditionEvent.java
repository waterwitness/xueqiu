package com.tencent.stat.event;

import android.content.Context;
import com.tencent.stat.StatConfig;
import com.tencent.stat.common.StatCommonHelper;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class AdditionEvent
  extends Event
{
  Map<String, ?> map = null;
  
  public AdditionEvent(Context paramContext, int paramInt, Map<String, ?> paramMap)
  {
    super(paramContext, paramInt);
    this.map = paramMap;
  }
  
  public EventType getType()
  {
    return EventType.ADDITION;
  }
  
  public boolean onEncode(JSONObject paramJSONObject)
  {
    StatCommonHelper.jsonPut(paramJSONObject, "qq", StatConfig.getQQ());
    if ((this.map != null) && (this.map.size() > 0))
    {
      Iterator localIterator = this.map.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramJSONObject.put((String)localEntry.getKey(), localEntry.getValue());
      }
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\event\AdditionEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */