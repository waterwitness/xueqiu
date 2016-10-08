package com.sleepycat.b.o;

import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.w;
import java.util.logging.ConsoleHandler;
import java.util.logging.Formatter;
import java.util.logging.Level;

public class a
  extends ConsoleHandler
{
  public a(Formatter paramFormatter, ad paramad)
  {
    setFormatter(paramFormatter);
    paramFormatter = getClass().getName() + ".level";
    if (paramad != null) {
      paramFormatter = w.a(paramad.u, d.bo, paramFormatter);
    }
    for (;;)
    {
      setLevel(paramFormatter);
      return;
      paramFormatter = w.a(paramFormatter);
      if (paramFormatter == null) {
        paramFormatter = Level.OFF;
      } else {
        paramFormatter = Level.parse(paramFormatter);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\o\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */