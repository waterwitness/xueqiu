package org.apache.http.client.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.http.annotation.Immutable;

@Immutable
public class CloneUtils
{
  public static Object clone(Object paramObject)
  {
    return cloneObject(paramObject);
  }
  
  public static <T> T cloneObject(T paramT)
  {
    if (paramT == null) {
      return null;
    }
    if ((paramT instanceof Cloneable))
    {
      Object localObject = paramT.getClass();
      try
      {
        localObject = ((Class)localObject).getMethod("clone", null);
        throw new CloneNotSupportedException();
      }
      catch (NoSuchMethodException paramT)
      {
        try
        {
          paramT = ((Method)localObject).invoke(paramT, null);
          return paramT;
        }
        catch (InvocationTargetException paramT)
        {
          paramT = paramT.getCause();
          if (!(paramT instanceof CloneNotSupportedException)) {
            break label66;
          }
          throw ((CloneNotSupportedException)paramT);
          throw new Error("Unexpected exception", paramT);
        }
        catch (IllegalAccessException paramT)
        {
          throw new IllegalAccessError(paramT.getMessage());
        }
        paramT = paramT;
        throw new NoSuchMethodError(paramT.getMessage());
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\CloneUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */