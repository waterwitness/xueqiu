package u.a;

import org.json.JSONObject;

public abstract class h
{
  protected static String a = "POST";
  protected static String b = "GET";
  public String c;
  
  public h(String paramString)
  {
    this.c = paramString;
  }
  
  public abstract JSONObject a();
  
  public void a(String paramString)
  {
    this.c = paramString;
  }
  
  public abstract String b();
  
  protected String c()
  {
    return a;
  }
  
  public String d()
  {
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */