package org.apache.http.impl.client;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.util.Args;

@ThreadSafe
public class BasicCredentialsProvider
  implements CredentialsProvider
{
  private final ConcurrentHashMap<AuthScope, Credentials> credMap = new ConcurrentHashMap();
  
  private static Credentials matchCredentials(Map<AuthScope, Credentials> paramMap, AuthScope paramAuthScope)
  {
    Credentials localCredentials = (Credentials)paramMap.get(paramAuthScope);
    Object localObject2 = localCredentials;
    Object localObject1;
    if (localCredentials == null)
    {
      int i = -1;
      localObject1 = null;
      Iterator localIterator = paramMap.keySet().iterator();
      if (localIterator.hasNext())
      {
        localObject2 = (AuthScope)localIterator.next();
        int j = paramAuthScope.match((AuthScope)localObject2);
        if (j <= i) {
          break label102;
        }
        i = j;
        localObject1 = localObject2;
      }
    }
    label102:
    for (;;)
    {
      break;
      localObject2 = localCredentials;
      if (localObject1 != null) {
        localObject2 = (Credentials)paramMap.get(localObject1);
      }
      return (Credentials)localObject2;
    }
  }
  
  public void clear()
  {
    this.credMap.clear();
  }
  
  public Credentials getCredentials(AuthScope paramAuthScope)
  {
    Args.notNull(paramAuthScope, "Authentication scope");
    return matchCredentials(this.credMap, paramAuthScope);
  }
  
  public void setCredentials(AuthScope paramAuthScope, Credentials paramCredentials)
  {
    Args.notNull(paramAuthScope, "Authentication scope");
    this.credMap.put(paramAuthScope, paramCredentials);
  }
  
  public String toString()
  {
    return this.credMap.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\BasicCredentialsProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */