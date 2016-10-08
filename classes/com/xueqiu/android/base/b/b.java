package com.xueqiu.android.base.b;

import com.xueqiu.android.base.util.ax;
import com.xueqiu.android.base.util.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public abstract class b
{
  public static List<NameValuePair> a(NameValuePair... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      int i = 0;
      while (i < paramVarArgs.length)
      {
        NameValuePair localNameValuePair = paramVarArgs[i];
        if (localNameValuePair.getValue() != null)
        {
          v.c("AbstractHttpApi", "Param: " + localNameValuePair);
          localArrayList.add(localNameValuePair);
        }
        i += 1;
      }
    }
    localArrayList.add(new BasicNameValuePair("_t", ax.b()));
    Collections.sort(localArrayList, new Comparator() {});
    return localArrayList;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */