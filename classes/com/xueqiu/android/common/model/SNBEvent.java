package com.xueqiu.android.common.model;

import com.google.gson.Gson;
import com.xueqiu.android.base.util.ax;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.m;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public class SNBEvent
{
  public static final String EVENT_CLICK = "click";
  public static final String EVENT_DOWN = "down";
  public static final String EVENT_EXCHANGE = "exchange";
  public static final String EVENT_FLUSH = "flush";
  public static final String EVENT_REMAIN = "remain";
  public static final String EVENT_SHOW = "show";
  public static final String EVENT_UP = "up";
  public static final String EVENT_ZOOM_IN = "zoom_in";
  public static final String EVENT_ZOOM_OUT = "zoom_out";
  private Map<String, String> attach = new HashMap();
  private int pageId;
  private int widgetId;
  private int widgetPosition;
  
  public SNBEvent(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, 0);
  }
  
  public SNBEvent(int paramInt1, int paramInt2, int paramInt3)
  {
    this.pageId = paramInt1;
    this.widgetId = paramInt2;
    this.widgetPosition = paramInt3;
  }
  
  public static String formatAttach(Map<String, String> paramMap)
  {
    Object localObject = paramMap;
    if (paramMap == null) {
      localObject = new HashMap();
    }
    if (!((Map)localObject).containsKey("action")) {
      ((Map)localObject).put("action", "click");
    }
    ((Map)localObject).put("platform", i.h());
    return m.a().toJson(localObject);
  }
  
  public void addProperty(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      return;
    }
    if (this.attach == null) {
      this.attach = new HashMap();
    }
    this.attach.put(paramString1, paramString2);
  }
  
  public Map<String, String> getAttach()
  {
    return this.attach;
  }
  
  public int getPageId()
  {
    return this.pageId;
  }
  
  public int getWidgetId()
  {
    return this.widgetId;
  }
  
  public void setAttach(Map<String, String> paramMap)
  {
    this.attach = paramMap;
  }
  
  public void setPageId(int paramInt)
  {
    this.pageId = paramInt;
  }
  
  public void setWidgetId(int paramInt)
  {
    this.widgetId = paramInt;
  }
  
  public void setWidgetPosition(int paramInt)
  {
    this.widgetPosition = paramInt;
  }
  
  public String toString()
  {
    String str1 = formatAttach(this.attach).replaceAll("\\|", "_");
    String str2 = ax.b().replaceAll("\\|", "_");
    return String.format(Locale.CHINA, "%d|%d|%d|%d|%s|%s", new Object[] { Long.valueOf(System.currentTimeMillis()), Integer.valueOf(this.pageId), Integer.valueOf(this.widgetId), Integer.valueOf(this.widgetPosition), str1, str2 });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\SNBEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */