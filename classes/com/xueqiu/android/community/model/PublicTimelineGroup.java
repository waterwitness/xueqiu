package com.xueqiu.android.community.model;

import com.google.gson.JsonArray;
import java.util.ArrayList;

public class PublicTimelineGroup
  extends ArrayList<PublicTimeline>
{
  private JsonArray addition;
  private long nextId;
  private long nextMaxId;
  
  public JsonArray getAddition()
  {
    return this.addition;
  }
  
  public long getNextId()
  {
    return this.nextId;
  }
  
  public long getNextMaxId()
  {
    return this.nextMaxId;
  }
  
  public boolean hasMore()
  {
    return this.nextMaxId >= 0L;
  }
  
  public void setAddition(JsonArray paramJsonArray)
  {
    this.addition = paramJsonArray;
  }
  
  public void setNextId(long paramLong)
  {
    this.nextId = paramLong;
  }
  
  public void setNextMaxId(long paramLong)
  {
    this.nextMaxId = paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\PublicTimelineGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */