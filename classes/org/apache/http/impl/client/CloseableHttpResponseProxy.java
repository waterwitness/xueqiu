package org.apache.http.impl.client;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.util.EntityUtils;

@Deprecated
@NotThreadSafe
class CloseableHttpResponseProxy
  implements InvocationHandler
{
  private static final Constructor<?> CONSTRUCTOR;
  private final HttpResponse original;
  
  static
  {
    try
    {
      CONSTRUCTOR = Proxy.getProxyClass(CloseableHttpResponseProxy.class.getClassLoader(), new Class[] { CloseableHttpResponse.class }).getConstructor(new Class[] { InvocationHandler.class });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new IllegalStateException(localNoSuchMethodException);
    }
  }
  
  CloseableHttpResponseProxy(HttpResponse paramHttpResponse)
  {
    this.original = paramHttpResponse;
  }
  
  public static CloseableHttpResponse newProxy(HttpResponse paramHttpResponse)
  {
    try
    {
      paramHttpResponse = (CloseableHttpResponse)CONSTRUCTOR.newInstance(new Object[] { new CloseableHttpResponseProxy(paramHttpResponse) });
      return paramHttpResponse;
    }
    catch (InstantiationException paramHttpResponse)
    {
      throw new IllegalStateException(paramHttpResponse);
    }
    catch (InvocationTargetException paramHttpResponse)
    {
      throw new IllegalStateException(paramHttpResponse);
    }
    catch (IllegalAccessException paramHttpResponse)
    {
      throw new IllegalStateException(paramHttpResponse);
    }
  }
  
  public void close()
  {
    EntityUtils.consume(this.original.getEntity());
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if (paramMethod.getName().equals("close"))
    {
      close();
      return null;
    }
    try
    {
      paramObject = paramMethod.invoke(this.original, paramArrayOfObject);
      return paramObject;
    }
    catch (InvocationTargetException paramObject)
    {
      paramMethod = ((InvocationTargetException)paramObject).getCause();
      if (paramMethod != null) {
        throw paramMethod;
      }
      throw ((Throwable)paramObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\CloseableHttpResponseProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */