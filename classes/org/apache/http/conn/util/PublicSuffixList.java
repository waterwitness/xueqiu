package org.apache.http.conn.util;

import java.util.Collections;
import java.util.List;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

@Immutable
public final class PublicSuffixList
{
  private final List<String> exceptions;
  private final List<String> rules;
  private final DomainType type;
  
  public PublicSuffixList(List<String> paramList1, List<String> paramList2)
  {
    this(DomainType.UNKNOWN, paramList1, paramList2);
  }
  
  public PublicSuffixList(DomainType paramDomainType, List<String> paramList1, List<String> paramList2)
  {
    this.type = ((DomainType)Args.notNull(paramDomainType, "Domain type"));
    this.rules = Collections.unmodifiableList((List)Args.notNull(paramList1, "Domain suffix rules"));
    if (paramList2 != null) {}
    for (;;)
    {
      this.exceptions = Collections.unmodifiableList(paramList2);
      return;
      paramList2 = Collections.emptyList();
    }
  }
  
  public final List<String> getExceptions()
  {
    return this.exceptions;
  }
  
  public final List<String> getRules()
  {
    return this.rules;
  }
  
  public final DomainType getType()
  {
    return this.type;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\util\PublicSuffixList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */