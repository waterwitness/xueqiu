package com.xueqiu.android.common.model.parser;

import com.xueqiu.android.common.model.PagedGroup;
import org.json.JSONObject;

public class PagedGroupParser<T>
  extends GroupParser
{
  private String itemsKey = null;
  
  public PagedGroupParser(Parser<? extends Object> paramParser)
  {
    super(paramParser);
  }
  
  public PagedGroupParser(Parser<? extends Object> paramParser, String paramString)
  {
    this(paramParser);
  }
  
  public PagedGroup<Object> parse(JSONObject paramJSONObject)
  {
    PagedGroup localPagedGroup = new PagedGroup();
    if ((this.itemsKey != null) && (paramJSONObject.has(this.itemsKey)) && (!paramJSONObject.isNull(this.itemsKey))) {
      parse(localPagedGroup, paramJSONObject.getJSONArray(this.itemsKey));
    }
    if (paramJSONObject.has("maxPage")) {
      localPagedGroup.setMaxPage(paramJSONObject.getInt("maxPage"));
    }
    if (paramJSONObject.has("page")) {
      localPagedGroup.setCurrentPage(paramJSONObject.getInt("page"));
    }
    if (paramJSONObject.has("count")) {
      localPagedGroup.setTotalCount(paramJSONObject.getInt("count"));
    }
    if (paramJSONObject.has("total")) {
      localPagedGroup.setTotalCount(paramJSONObject.getInt("total"));
    }
    if (paramJSONObject.has("totalCount")) {
      localPagedGroup.setTotalCount(paramJSONObject.getInt("totalCount"));
    }
    return localPagedGroup;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\parser\PagedGroupParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */