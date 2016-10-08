package org.apache.commons.codec.language.bm;

import java.io.InputStream;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.Set;

public class Languages
{
  public static final String ANY = "any";
  public static final Languages.LanguageSet ANY_LANGUAGE = new Languages.LanguageSet()
  {
    public final boolean contains(String paramAnonymousString)
    {
      return true;
    }
    
    public final String getAny()
    {
      throw new NoSuchElementException("Can't fetch any language from the any language set.");
    }
    
    public final boolean isEmpty()
    {
      return false;
    }
    
    public final boolean isSingleton()
    {
      return false;
    }
    
    public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramAnonymousLanguageSet)
    {
      return paramAnonymousLanguageSet;
    }
    
    public final String toString()
    {
      return "ANY_LANGUAGE";
    }
  };
  private static final Map<NameType, Languages> LANGUAGES = new EnumMap(NameType.class);
  public static final Languages.LanguageSet NO_LANGUAGES;
  private final Set<String> languages;
  
  static
  {
    NameType[] arrayOfNameType = NameType.values();
    int j = arrayOfNameType.length;
    int i = 0;
    while (i < j)
    {
      NameType localNameType = arrayOfNameType[i];
      LANGUAGES.put(localNameType, getInstance(langResourceName(localNameType)));
      i += 1;
    }
    NO_LANGUAGES = new Languages.LanguageSet()
    {
      public final boolean contains(String paramAnonymousString)
      {
        return false;
      }
      
      public final String getAny()
      {
        throw new NoSuchElementException("Can't fetch any language from the empty language set.");
      }
      
      public final boolean isEmpty()
      {
        return true;
      }
      
      public final boolean isSingleton()
      {
        return false;
      }
      
      public final Languages.LanguageSet restrictTo(Languages.LanguageSet paramAnonymousLanguageSet)
      {
        return this;
      }
      
      public final String toString()
      {
        return "NO_LANGUAGES";
      }
    };
  }
  
  private Languages(Set<String> paramSet)
  {
    this.languages = paramSet;
  }
  
  public static Languages getInstance(String paramString)
  {
    HashSet localHashSet = new HashSet();
    Object localObject = Languages.class.getClassLoader().getResourceAsStream(paramString);
    if (localObject == null) {
      throw new IllegalArgumentException("Unable to resolve required resource: " + paramString);
    }
    paramString = new Scanner((InputStream)localObject, "UTF-8");
    int i = 0;
    try
    {
      while (paramString.hasNextLine())
      {
        localObject = paramString.nextLine().trim();
        if (i != 0)
        {
          if (((String)localObject).endsWith("*/")) {
            i = 0;
          }
        }
        else if (((String)localObject).startsWith("/*")) {
          i = 1;
        } else if (((String)localObject).length() > 0) {
          localHashSet.add(localObject);
        }
      }
    }
    finally
    {
      paramString.close();
    }
    return new Languages(Collections.unmodifiableSet(localSet));
  }
  
  public static Languages getInstance(NameType paramNameType)
  {
    return (Languages)LANGUAGES.get(paramNameType);
  }
  
  private static String langResourceName(NameType paramNameType)
  {
    return String.format("org/apache/commons/codec/language/bm/%s_languages.txt", new Object[] { paramNameType.getName() });
  }
  
  public Set<String> getLanguages()
  {
    return this.languages;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\Languages.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */