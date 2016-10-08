package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class gw
{
  boolean a = false;
  private final String b = "umeng_event_snapshot";
  private SharedPreferences c;
  private Map<String, ArrayList<b>> d = new HashMap();
  
  public gw(Context paramContext)
  {
    this.c = paramContext.getSharedPreferences("umeng_event_snapshot", 0);
  }
  
  private void b(String paramString)
  {
    Object localObject = null;
    if (this.d.containsKey(paramString)) {
      localObject = (ArrayList)this.d.get(paramString);
    }
    for (;;)
    {
      if (((ArrayList)localObject).size() <= 4)
      {
        localObject = hd.a((Serializable)localObject);
        this.c.edit().putString(paramString, (String)localObject).commit();
        return;
      }
      ((ArrayList)localObject).remove(0);
    }
  }
  
  private boolean c(String paramString)
  {
    if (this.d.containsKey(paramString)) {
      return true;
    }
    Object localObject = this.c.getString(paramString, null);
    if (localObject != null)
    {
      localObject = (ArrayList)hd.a((String)localObject);
      if (localObject != null)
      {
        this.d.put(paramString, localObject);
        return true;
      }
    }
    return false;
  }
  
  public final b a(String paramString)
  {
    if (this.a) {
      c(paramString);
    }
    if (this.d.containsKey(paramString))
    {
      localObject = (ArrayList)this.d.get(paramString);
      if (((ArrayList)localObject).size() <= 0) {}
    }
    for (Object localObject = (b)((ArrayList)localObject).remove(((ArrayList)localObject).size() - 1);; localObject = null)
    {
      if (this.a) {
        b(paramString);
      }
      return (b)localObject;
    }
  }
  
  public final void a(String paramString, b paramb)
  {
    if (this.a) {
      c(paramString);
    }
    if (this.d.containsKey(paramString)) {
      ((ArrayList)this.d.get(paramString)).add(paramb);
    }
    for (;;)
    {
      if (this.a) {
        b(paramString);
      }
      return;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramb);
      this.d.put(paramString, localArrayList);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */