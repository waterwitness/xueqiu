package com.f.a.c;

import android.content.Context;
import com.f.a.a.a.g;
import com.f.a.a.a.h;
import java.util.zip.Adler32;

public final class b
{
  static String a = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";
  static final Object b = new Object();
  private static a c = null;
  
  public static a a(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if (c != null)
        {
          paramContext = c;
          return paramContext;
        }
        if (paramContext != null)
        {
          paramContext = b(paramContext);
          c = paramContext;
        }
        else
        {
          paramContext = null;
        }
      }
      finally {}
    }
  }
  
  private static a b(Context paramContext)
  {
    if (paramContext != null)
    {
      new a();
      for (;;)
      {
        synchronized (b)
        {
          Object localObject1 = c.a(paramContext).a();
          if (!h.a((String)localObject1))
          {
            if (!((String)localObject1).endsWith("\n")) {
              break label207;
            }
            localObject1 = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
            a locala = new a();
            l = System.currentTimeMillis();
            String str = g.a(paramContext);
            paramContext = g.b(paramContext);
            locala.c = str;
            locala.a = str;
            locala.e = l;
            locala.b = paramContext;
            locala.d = ((String)localObject1);
            paramContext = String.format("%s%s%s%s%s", new Object[] { locala.d, locala.c, Long.valueOf(locala.e), locala.b, locala.a });
            if (h.a(paramContext)) {
              break label210;
            }
            localObject1 = new Adler32();
            ((Adler32)localObject1).reset();
            ((Adler32)localObject1).update(paramContext.getBytes());
            l = ((Adler32)localObject1).getValue();
            locala.f = l;
            return locala;
          }
        }
        label207:
        continue;
        label210:
        long l = 0L;
      }
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */