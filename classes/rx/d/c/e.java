package rx.d.c;

import java.security.AccessController;
import java.security.PrivilegedAction;

public final class e
{
  private static final boolean a = ;
  
  public static boolean a()
  {
    return a;
  }
  
  private static boolean b()
  {
    try
    {
      if (System.getSecurityManager() == null) {}
      for (ClassLoader localClassLoader = ClassLoader.getSystemClassLoader();; localClassLoader = (ClassLoader)AccessController.doPrivileged(new PrivilegedAction() {}))
      {
        Class.forName("android.app.Application", false, localClassLoader);
        return true;
      }
      return false;
    }
    catch (Exception localException) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */