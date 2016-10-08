package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.common.model.CountryCode;
import org.json.JSONObject;

public class CountryCodeParser
  extends AbstractParser<CountryCode>
{
  public CountryCode parse(JSONObject paramJSONObject)
  {
    CountryCode localCountryCode = new CountryCode();
    if (hasKeyAndValueNotNull(paramJSONObject, "code")) {
      localCountryCode.code = paramJSONObject.getString("code");
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "name_en")) {
      localCountryCode.enName = paramJSONObject.getString("name_en");
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "name_py")) {
      localCountryCode.pyName = paramJSONObject.getString("name_py");
    }
    if (hasKeyAndValueNotNull(paramJSONObject, "name_cn")) {
      localCountryCode.cnName = paramJSONObject.getString("name_cn");
    }
    return localCountryCode;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\CountryCodeParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */