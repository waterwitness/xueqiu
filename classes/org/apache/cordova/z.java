package org.apache.cordova;

import org.json.JSONObject;

public final class z
{
  public static String[] e = { "No result", "OK", "Class not found", "Illegal access", "Instantiation error", "Malformed url", "IO error", "Invalid action", "JSON error", "Error" };
  final int a;
  final int b;
  boolean c = false;
  String d;
  private String f;
  
  public z(int paramInt)
  {
    this(paramInt, e[(paramInt - 1)]);
  }
  
  public z(int paramInt1, int paramInt2)
  {
    this.a = (paramInt1 - 1);
    this.b = 3;
    this.f = String.valueOf(paramInt2);
  }
  
  public z(int paramInt, String paramString)
  {
    this.a = (paramInt - 1);
    if (paramString == null) {}
    for (paramInt = 5;; paramInt = 1)
    {
      this.b = paramInt;
      this.d = paramString;
      return;
    }
  }
  
  public z(int paramInt, JSONObject paramJSONObject)
  {
    this.a = (paramInt - 1);
    this.b = 2;
    this.f = paramJSONObject.toString();
  }
  
  public final String a()
  {
    if (this.f == null) {
      this.f = JSONObject.quote(this.d);
    }
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */