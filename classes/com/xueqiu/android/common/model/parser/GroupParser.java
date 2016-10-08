package com.xueqiu.android.common.model.parser;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class GroupParser
  extends AbstractParser<ArrayList>
{
  protected Parser<? extends Object> mSubParser;
  
  public GroupParser(Parser paramParser)
  {
    this.mSubParser = paramParser;
  }
  
  public ArrayList parse(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    parse(localArrayList, paramJSONArray);
    return localArrayList;
  }
  
  public ArrayList<Object> parse(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      Object localObject = paramJSONObject.get((String)localIterator.next());
      if ((localObject instanceof JSONArray)) {
        parse(localArrayList, (JSONArray)localObject);
      } else {
        throw new JSONException("Could not parse data.");
      }
    }
    return localArrayList;
  }
  
  protected void parse(ArrayList paramArrayList, JSONArray paramJSONArray)
  {
    int j = paramJSONArray.length();
    int i = 0;
    if (i < j)
    {
      Object localObject = paramJSONArray.get(i);
      if ((localObject != null) && (localObject != JSONObject.NULL)) {
        if (!(localObject instanceof JSONArray)) {
          break label70;
        }
      }
      label70:
      for (localObject = this.mSubParser.parse((JSONArray)localObject);; localObject = this.mSubParser.parse((JSONObject)localObject))
      {
        paramArrayList.add(localObject);
        i += 1;
        break;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\GroupParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */