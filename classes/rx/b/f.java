package rx.b;

import java.util.HashSet;
import java.util.Set;

public final class f
{
  public static RuntimeException a(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof RuntimeException)) {
      throw ((RuntimeException)paramThrowable);
    }
    if ((paramThrowable instanceof Error)) {
      throw ((Error)paramThrowable);
    }
    throw new RuntimeException(paramThrowable);
  }
  
  public static void a(Throwable paramThrowable1, Throwable paramThrowable2)
  {
    HashSet localHashSet = new HashSet();
    int i = 0;
    Throwable localThrowable;
    for (;;)
    {
      localThrowable = paramThrowable1;
      if (paramThrowable1.getCause() == null) {
        break;
      }
      if (i >= 25) {
        return;
      }
      paramThrowable1 = paramThrowable1.getCause();
      localThrowable = paramThrowable1;
      if (localHashSet.contains(paramThrowable1.getCause())) {
        break;
      }
      localHashSet.add(paramThrowable1.getCause());
      i += 1;
    }
    try
    {
      localThrowable.initCause(paramThrowable2);
      return;
    }
    catch (Throwable paramThrowable1) {}
  }
  
  public static void b(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof i)) {
      throw ((i)paramThrowable);
    }
    if ((paramThrowable instanceof h))
    {
      Throwable localThrowable = ((h)paramThrowable).getCause();
      if ((localThrowable instanceof RuntimeException)) {
        throw ((RuntimeException)localThrowable);
      }
      throw ((h)paramThrowable);
    }
    if ((paramThrowable instanceof StackOverflowError)) {
      throw ((StackOverflowError)paramThrowable);
    }
    if ((paramThrowable instanceof VirtualMachineError)) {
      throw ((VirtualMachineError)paramThrowable);
    }
    if ((paramThrowable instanceof ThreadDeath)) {
      throw ((ThreadDeath)paramThrowable);
    }
    if ((paramThrowable instanceof LinkageError)) {
      throw ((LinkageError)paramThrowable);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\b\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */