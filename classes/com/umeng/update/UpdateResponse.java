package com.umeng.update;

import android.content.Context;
import java.io.Serializable;
import org.json.JSONObject;
import u.a.c;
import u.a.i;
import u.a.m;

public class UpdateResponse
  extends i
  implements Serializable
{
  private static final long a = -7768683594079202710L;
  public boolean delta = false;
  public boolean hasUpdate = false;
  public String new_md5;
  public String origin;
  public String patch_md5;
  public String path;
  public String proto_ver;
  public String size;
  public String target_size;
  public String updateLog = null;
  public String version = null;
  
  public UpdateResponse(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    a(paramJSONObject);
  }
  
  private void a(JSONObject paramJSONObject)
  {
    try
    {
      this.hasUpdate = "Yes".equalsIgnoreCase(paramJSONObject.optString("update"));
      if (this.hasUpdate)
      {
        this.updateLog = paramJSONObject.getString("update_log");
        this.version = paramJSONObject.getString("version");
        this.path = paramJSONObject.getString("path");
        this.target_size = paramJSONObject.optString("target_size");
        this.new_md5 = paramJSONObject.optString("new_md5");
        this.delta = paramJSONObject.optBoolean("delta");
        if (this.delta)
        {
          this.patch_md5 = paramJSONObject.optString("patch_md5");
          this.size = paramJSONObject.optString("size");
          this.origin = paramJSONObject.optString("origin");
        }
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public String a(Context paramContext, boolean paramBoolean)
  {
    String str1 = paramContext.getString(c.a(paramContext).a("UMNewVersion", "string"));
    String str2 = paramContext.getString(c.a(paramContext).a("UMTargetSize", "string"));
    String str4 = paramContext.getString(c.a(paramContext).a("UMUpdateSize", "string"));
    String str3 = paramContext.getString(c.a(paramContext).a("UMUpdateContent", "string"));
    paramContext = paramContext.getString(c.a(paramContext).a("UMDialog_InstallAPK", "string"));
    if (paramBoolean) {
      return String.format("%s %s\n%s\n\n%s\n%s\n", new Object[] { str1, this.version, paramContext, str3, this.updateLog });
    }
    if (this.delta) {}
    for (paramContext = String.format("\n%s %s", new Object[] { str4, m.c(this.size) });; paramContext = "") {
      return String.format("%s %s\n%s %s%s\n\n%s\n%s\n", new Object[] { str1, this.version, str2, m.c(this.target_size), paramContext, str3, this.updateLog });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\UpdateResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */