package com.xueqiu.android.base.a;

import com.android.volley.y;
import com.google.gson.JsonObject;
import com.google.gson.annotations.Expose;

public class a
  extends y
{
  @Expose
  public JsonObject data;
  @Expose
  public String errorCode;
  @Expose
  public String errorDescription;
  @Expose
  private String errorUri;
  
  public String getMessage()
  {
    return this.errorDescription;
  }
  
  public String toString()
  {
    String str2 = this.errorCode;
    String str3 = this.errorDescription;
    String str4 = this.errorUri;
    if (this.data == null) {}
    for (String str1 = "";; str1 = this.data.toString()) {
      return String.format("{\"error_code\": \"%s\", \"error_description\":\"%s\", \"error_uri\":\"%s\", \"data\":\"%s\"}", new Object[] { str2, str3, str4, str1 });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */