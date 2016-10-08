package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.stock.model.OldPortFolio;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class PortFolioListParser
  implements Parser
{
  public Object parse(JSONObject paramJSONObject)
  {
    if ((paramJSONObject.has("quotes")) && (paramJSONObject.getJSONArray("quotes") != null)) {
      return parse(paramJSONObject.getJSONArray("quotes"));
    }
    return null;
  }
  
  public ArrayList<OldPortFolio> parse(JSONArray paramJSONArray)
  {
    return new GroupParser(new PortFolioParser()).parse(paramJSONArray);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\PortFolioListParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */