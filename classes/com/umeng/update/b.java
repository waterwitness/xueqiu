package com.umeng.update;

import android.content.Context;
import com.umeng.update.util.DeltaUpdate;
import u.a.g;

public class b
  extends g
{
  private static final String c = b.class.getName();
  Context a;
  private final String[] b = { "http://au.umeng.com/api/check_app_update", "http://au.umeng.co/api/check_app_update" };
  
  public b(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public boolean a()
  {
    return false;
  }
  
  public UpdateResponse b()
  {
    u.a.b.c(c, String.format("is .so file ready: %b", new Object[] { Boolean.valueOf(DeltaUpdate.a()) }));
    d locald = new d(this.a);
    Object localObject = null;
    int i = 0;
    for (;;)
    {
      if (i >= this.b.length) {}
      UpdateResponse localUpdateResponse;
      do
      {
        return (UpdateResponse)localObject;
        locald.a(this.b[i]);
        localUpdateResponse = (UpdateResponse)a(locald, UpdateResponse.class);
        localObject = localUpdateResponse;
      } while (localUpdateResponse != null);
      i += 1;
      localObject = localUpdateResponse;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */