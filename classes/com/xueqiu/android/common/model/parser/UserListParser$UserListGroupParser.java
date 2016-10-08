package com.xueqiu.android.common.model.parser;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

class UserListParser$UserListGroupParser
  extends GroupParser
{
  public UserListParser$UserListGroupParser(Parser<? extends Object> paramParser)
  {
    super(paramParser);
  }
  
  protected void parse(ArrayList paramArrayList, JSONArray paramJSONArray)
  {
    int j = paramJSONArray.length();
    int i = 0;
    Object localObject;
    if (i < j)
    {
      localObject = paramJSONArray.get(i);
      if (!(localObject instanceof JSONObject)) {
        break label118;
      }
      localObject = (JSONObject)localObject;
      if (((JSONObject)localObject).has("friend")) {
        localObject = this.mSubParser.parse(((JSONObject)localObject).getJSONObject("friend"));
      }
    }
    for (;;)
    {
      paramArrayList.add(localObject);
      i += 1;
      break;
      if (((JSONObject)localObject).has("follower"))
      {
        localObject = this.mSubParser.parse(((JSONObject)localObject).getJSONObject("follower"));
      }
      else
      {
        localObject = this.mSubParser.parse((JSONObject)localObject);
        continue;
        return;
        label118:
        localObject = null;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\UserListParser$UserListGroupParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */