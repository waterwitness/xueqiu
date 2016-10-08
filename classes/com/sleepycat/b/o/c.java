package com.sleepycat.b.o;

import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.w;
import java.io.PrintStream;
import java.util.logging.ErrorManager;
import java.util.logging.FileHandler;
import java.util.logging.Formatter;

public class c
  extends FileHandler
{
  public static boolean a = false;
  
  public c(String paramString, int paramInt1, int paramInt2, Formatter paramFormatter, ad paramad)
  {
    super(paramString, paramInt1, paramInt2, true);
    setErrorManager(new ErrorManager()
    {
      public final void error(String paramAnonymousString, Exception paramAnonymousException, int paramAnonymousInt)
      {
        if (c.a)
        {
          System.out.println("FileHandler stifled exception: " + paramAnonymousException);
          return;
        }
        super.error(paramAnonymousString, paramAnonymousException, paramAnonymousInt);
      }
    });
    setFormatter(paramFormatter);
    setLevel(w.a(paramad.u, d.bp, getClass().getName() + ".level"));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\o\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */