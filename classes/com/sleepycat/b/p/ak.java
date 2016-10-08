package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.q;
import java.util.logging.Level;
import java.util.logging.Logger;

final class ak
  implements Thread.UncaughtExceptionHandler
{
  private ak(aj paramaj) {}
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Logger localLogger = this.a.a();
    Object localObject;
    if (localLogger != null)
    {
      if (this.a.D == null)
      {
        localObject = "";
        String str = (String)localObject + ":" + paramThread.getName() + " exited unexpectedly with exception " + paramThrowable;
        localObject = str;
        if (paramThrowable != null) {
          localObject = str + w.a(paramThrowable);
        }
        if (this.a.D == null) {
          break label142;
        }
        w.a(localLogger, this.a.D, (String)localObject);
      }
    }
    else {
      label117:
      if (this.a.D != null) {
        break label154;
      }
    }
    label142:
    label154:
    do
    {
      return;
      localObject = this.a.D.B();
      break;
      localLogger.log(Level.SEVERE, (String)localObject);
      break label117;
      if ((this.a.D.H != null) && ((paramThrowable instanceof Exception))) {
        q.a((Exception)paramThrowable, paramThread.getName());
      }
    } while (!this.a.D.j());
    new aa(this.a.D, ac.y, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */