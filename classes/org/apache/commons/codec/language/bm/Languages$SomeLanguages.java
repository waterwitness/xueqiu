package org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class Languages$SomeLanguages
  extends Languages.LanguageSet
{
  private final Set<String> languages;
  
  private Languages$SomeLanguages(Set<String> paramSet)
  {
    this.languages = Collections.unmodifiableSet(paramSet);
  }
  
  public final boolean contains(String paramString)
  {
    return this.languages.contains(paramString);
  }
  
  public final String getAny()
  {
    return (String)this.languages.iterator().next();
  }
  
  public final Set<String> getLanguages()
  {
    return this.languages;
  }
  
  public final boolean isEmpty()
  {
    return this.languages.isEmpty();
  }
  
  public final boolean isSingleton()
  {
    return this.languages.size() == 1;
  }
  
  public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramLanguageSet)
  {
    if (paramLanguageSet == Languages.NO_LANGUAGES) {
      return paramLanguageSet;
    }
    if (paramLanguageSet == Languages.ANY_LANGUAGE) {
      return this;
    }
    paramLanguageSet = (SomeLanguages)paramLanguageSet;
    HashSet localHashSet = new HashSet(Math.min(this.languages.size(), paramLanguageSet.languages.size()));
    Iterator localIterator = this.languages.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramLanguageSet.languages.contains(str)) {
        localHashSet.add(str);
      }
    }
    return from(localHashSet);
  }
  
  public final String toString()
  {
    return "Languages(" + this.languages.toString() + ")";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\Languages$SomeLanguages.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */