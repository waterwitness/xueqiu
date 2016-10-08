package org.apache.http.conn.util;

import java.net.IDN;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

@ThreadSafe
public final class PublicSuffixMatcher
{
  private final Map<String, DomainType> exceptions;
  private final Map<String, DomainType> rules;
  
  public PublicSuffixMatcher(Collection<PublicSuffixList> paramCollection)
  {
    Args.notNull(paramCollection, "Domain suffix lists");
    this.rules = new ConcurrentHashMap();
    this.exceptions = new ConcurrentHashMap();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject1 = (PublicSuffixList)paramCollection.next();
      DomainType localDomainType = ((PublicSuffixList)localObject1).getType();
      Object localObject2 = ((PublicSuffixList)localObject1).getRules().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        this.rules.put(str, localDomainType);
      }
      localObject1 = ((PublicSuffixList)localObject1).getExceptions();
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          this.exceptions.put(localObject2, localDomainType);
        }
      }
    }
  }
  
  public PublicSuffixMatcher(Collection<String> paramCollection1, Collection<String> paramCollection2)
  {
    this(DomainType.UNKNOWN, paramCollection1, paramCollection2);
  }
  
  public PublicSuffixMatcher(DomainType paramDomainType, Collection<String> paramCollection1, Collection<String> paramCollection2)
  {
    Args.notNull(paramDomainType, "Domain type");
    Args.notNull(paramCollection1, "Domain suffix rules");
    this.rules = new ConcurrentHashMap(paramCollection1.size());
    paramCollection1 = paramCollection1.iterator();
    while (paramCollection1.hasNext())
    {
      String str = (String)paramCollection1.next();
      this.rules.put(str, paramDomainType);
    }
    this.exceptions = new ConcurrentHashMap();
    if (paramCollection2 != null)
    {
      paramCollection1 = paramCollection2.iterator();
      while (paramCollection1.hasNext())
      {
        paramCollection2 = (String)paramCollection1.next();
        this.exceptions.put(paramCollection2, paramDomainType);
      }
    }
  }
  
  private static boolean hasEntry(Map<String, DomainType> paramMap, String paramString, DomainType paramDomainType)
  {
    if (paramMap == null) {
      return false;
    }
    paramMap = (DomainType)paramMap.get(paramString);
    if (paramMap == null) {
      return false;
    }
    return (paramDomainType == null) || (paramMap.equals(paramDomainType));
  }
  
  private boolean hasException(String paramString, DomainType paramDomainType)
  {
    return hasEntry(this.exceptions, paramString, paramDomainType);
  }
  
  private boolean hasRule(String paramString, DomainType paramDomainType)
  {
    return hasEntry(this.rules, paramString, paramDomainType);
  }
  
  public final String getDomainRoot(String paramString)
  {
    return getDomainRoot(paramString, null);
  }
  
  public final String getDomainRoot(String paramString, DomainType paramDomainType)
  {
    String str2;
    if (paramString == null) {
      str2 = null;
    }
    String str1;
    do
    {
      return str2;
      if (paramString.startsWith(".")) {
        return null;
      }
      paramString = paramString.toLowerCase(Locale.ROOT);
      str1 = null;
      if (paramString == null) {
        break;
      }
      str2 = paramString;
    } while (hasException(IDN.toUnicode(paramString), paramDomainType));
    if (!hasRule(IDN.toUnicode(paramString), paramDomainType))
    {
      int i = paramString.indexOf('.');
      if (i != -1)
      {
        str2 = paramString.substring(i + 1);
        label86:
        if ((str2 != null) && (hasRule("*." + IDN.toUnicode(str2), paramDomainType))) {
          break label139;
        }
        if (i == -1) {
          break label141;
        }
      }
    }
    for (;;)
    {
      str1 = paramString;
      paramString = str2;
      break;
      str2 = null;
      break label86;
      label139:
      return str1;
      label141:
      paramString = str1;
    }
  }
  
  public final boolean matches(String paramString)
  {
    return matches(paramString, null);
  }
  
  public final boolean matches(String paramString, DomainType paramDomainType)
  {
    if (paramString == null) {}
    String str;
    do
    {
      return false;
      str = paramString;
      if (paramString.startsWith(".")) {
        str = paramString.substring(1);
      }
    } while (getDomainRoot(str, paramDomainType) != null);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\util\PublicSuffixMatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */