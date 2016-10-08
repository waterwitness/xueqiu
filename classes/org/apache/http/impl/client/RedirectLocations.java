package org.apache.http.impl.client;

import java.net.URI;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
public class RedirectLocations
  extends AbstractList<Object>
{
  private final List<URI> all = new ArrayList();
  private final Set<URI> unique = new HashSet();
  
  public void add(int paramInt, Object paramObject)
  {
    this.all.add(paramInt, (URI)paramObject);
    this.unique.add((URI)paramObject);
  }
  
  public void add(URI paramURI)
  {
    this.unique.add(paramURI);
    this.all.add(paramURI);
  }
  
  public boolean contains(Object paramObject)
  {
    return this.unique.contains(paramObject);
  }
  
  public boolean contains(URI paramURI)
  {
    return this.unique.contains(paramURI);
  }
  
  public URI get(int paramInt)
  {
    return (URI)this.all.get(paramInt);
  }
  
  public List<URI> getAll()
  {
    return new ArrayList(this.all);
  }
  
  public URI remove(int paramInt)
  {
    URI localURI = (URI)this.all.remove(paramInt);
    this.unique.remove(localURI);
    if (this.all.size() != this.unique.size()) {
      this.unique.addAll(this.all);
    }
    return localURI;
  }
  
  public boolean remove(URI paramURI)
  {
    boolean bool = this.unique.remove(paramURI);
    if (bool)
    {
      Iterator localIterator = this.all.iterator();
      while (localIterator.hasNext()) {
        if (((URI)localIterator.next()).equals(paramURI)) {
          localIterator.remove();
        }
      }
    }
    return bool;
  }
  
  public Object set(int paramInt, Object paramObject)
  {
    URI localURI = (URI)this.all.set(paramInt, (URI)paramObject);
    this.unique.remove(localURI);
    this.unique.add((URI)paramObject);
    if (this.all.size() != this.unique.size()) {
      this.unique.addAll(this.all);
    }
    return localURI;
  }
  
  public int size()
  {
    return this.all.size();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\RedirectLocations.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */