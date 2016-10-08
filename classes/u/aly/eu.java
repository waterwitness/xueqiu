package u.aly;

import org.json.JSONObject;

public abstract class eu
{
  protected static String b = "POST";
  protected static String c = "GET";
  public String d;
  
  public eu(String paramString)
  {
    this.d = paramString;
  }
  
  public abstract JSONObject a();
  
  public void a(String paramString)
  {
    this.d = paramString;
  }
  
  public abstract String b();
  
  protected String c()
  {
    return b;
  }
  
  public String d()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\eu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */