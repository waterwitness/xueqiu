package u.a;

import org.json.JSONObject;

public class e
  extends i
{
  public f a;
  
  public e(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    if (("ok".equalsIgnoreCase(paramJSONObject.optString("status"))) || ("ok".equalsIgnoreCase(paramJSONObject.optString("success"))))
    {
      this.a = f.a;
      return;
    }
    this.a = f.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */