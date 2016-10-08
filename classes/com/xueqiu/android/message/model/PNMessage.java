package com.xueqiu.android.message.model;

import org.json.JSONException;
import org.json.JSONObject;

public class PNMessage
{
  private String attachment;
  private String badge;
  private boolean push;
  private String sound;
  private String text;
  private PNMessage.MessageType type;
  
  public PNMessage() {}
  
  public PNMessage(String paramString1, String paramString2, String paramString3, PNMessage.MessageType paramMessageType, String paramString4, boolean paramBoolean)
  {
    this.badge = paramString1;
    this.sound = paramString2;
    this.text = paramString3;
    this.type = paramMessageType;
    this.attachment = paramString4;
    this.push = paramBoolean;
  }
  
  public String getAttachment()
  {
    return this.attachment;
  }
  
  public String getBadge()
  {
    return this.badge;
  }
  
  public PNMessage.MessageType getMsgType()
  {
    return this.type;
  }
  
  public String getSound()
  {
    return this.sound;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public boolean isPush()
  {
    return this.push;
  }
  
  public void setAttachment(String paramString)
  {
    this.attachment = paramString;
  }
  
  public void setBadge(String paramString)
  {
    this.badge = paramString;
  }
  
  public void setMsgType(PNMessage.MessageType paramMessageType)
  {
    this.type = paramMessageType;
  }
  
  public void setPush(boolean paramBoolean)
  {
    this.push = paramBoolean;
  }
  
  public void setSound(String paramString)
  {
    this.sound = paramString;
  }
  
  public void setText(String paramString)
  {
    this.text = paramString;
  }
  
  public JSONObject toJson()
  {
    localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("text", this.text);
      localJSONObject.put("badge", this.badge);
      localJSONObject.put("sound", this.sound);
      localJSONObject.put("attachment", this.attachment);
      if (this.type != null) {}
      for (String str = this.type.toString();; str = null)
      {
        localJSONObject.put("type", str);
        localJSONObject.put("push", this.push);
        return localJSONObject;
      }
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\PNMessage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */