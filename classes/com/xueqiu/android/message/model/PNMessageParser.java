package com.xueqiu.android.message.model;

import com.xueqiu.android.common.model.parser.AbstractParser;
import org.json.JSONObject;

public class PNMessageParser
  extends AbstractParser<PNMessage>
{
  public PNMessage parse(JSONObject paramJSONObject)
  {
    PNMessage localPNMessage = new PNMessage();
    if (hasKeyAndValueNotNull(paramJSONObject, "badge")) {
      localPNMessage.setBadge(paramJSONObject.getString("badge"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "sound")) {
      localPNMessage.setSound(paramJSONObject.getString("sound"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "text")) {
      localPNMessage.setText(paramJSONObject.getString("text"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "type")) {
      localPNMessage.setMsgType(PNMessage.MessageType.valueOf(paramJSONObject.getString("type")));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "attachment")) {
      localPNMessage.setAttachment(paramJSONObject.getString("attachment"));
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "push")) {
      localPNMessage.setPush(paramJSONObject.getBoolean("push"));
    }
    return localPNMessage;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\model\PNMessageParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */