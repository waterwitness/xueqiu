package org.apache.commons.codec.language.bm;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Rule
{
  public static final String ALL = "ALL";
  public static final Rule.RPattern ALL_STRINGS_RMATCHER = new Rule.RPattern()
  {
    public final boolean isMatch(CharSequence paramAnonymousCharSequence)
    {
      return true;
    }
  };
  private static final String DOUBLE_QUOTE = "\"";
  private static final String HASH_INCLUDE = "#include";
  private static final Map<NameType, Map<RuleType, Map<String, Map<String, List<Rule>>>>> RULES = new EnumMap(NameType.class);
  private final Rule.RPattern lContext;
  private final String pattern;
  private final Rule.PhonemeExpr phoneme;
  private final Rule.RPattern rContext;
  
  static
  {
    NameType[] arrayOfNameType = NameType.values();
    int k = arrayOfNameType.length;
    int i = 0;
    while (i < k)
    {
      NameType localNameType = arrayOfNameType[i];
      EnumMap localEnumMap = new EnumMap(RuleType.class);
      RuleType[] arrayOfRuleType = RuleType.values();
      int m = arrayOfRuleType.length;
      int j = 0;
      while (j < m)
      {
        RuleType localRuleType = arrayOfRuleType[j];
        HashMap localHashMap = new HashMap();
        Iterator localIterator = Languages.getInstance(localNameType).getLanguages().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          try
          {
            localHashMap.put(str, parseRules(createScanner(localNameType, localRuleType, str), createResourceName(localNameType, localRuleType, str)));
          }
          catch (IllegalStateException localIllegalStateException)
          {
            throw new IllegalStateException("Problem processing " + createResourceName(localNameType, localRuleType, str), localIllegalStateException);
          }
        }
        if (!localRuleType.equals(RuleType.RULES)) {
          localHashMap.put("common", parseRules(createScanner(localNameType, localRuleType, "common"), createResourceName(localNameType, localRuleType, "common")));
        }
        localEnumMap.put(localRuleType, Collections.unmodifiableMap(localHashMap));
        j += 1;
      }
      RULES.put(localNameType, Collections.unmodifiableMap(localEnumMap));
      i += 1;
    }
  }
  
  public Rule(String paramString1, String paramString2, String paramString3, Rule.PhonemeExpr paramPhonemeExpr)
  {
    this.pattern = paramString1;
    this.lContext = pattern(paramString2 + "$");
    this.rContext = pattern("^" + paramString3);
    this.phoneme = paramPhonemeExpr;
  }
  
  private static boolean contains(CharSequence paramCharSequence, char paramChar)
  {
    boolean bool2 = false;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramCharSequence.length())
      {
        if (paramCharSequence.charAt(i) == paramChar) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private static String createResourceName(NameType paramNameType, RuleType paramRuleType, String paramString)
  {
    return String.format("org/apache/commons/codec/language/bm/%s_%s_%s.txt", new Object[] { paramNameType.getName(), paramRuleType.getName(), paramString });
  }
  
  private static Scanner createScanner(String paramString)
  {
    paramString = String.format("org/apache/commons/codec/language/bm/%s.txt", new Object[] { paramString });
    InputStream localInputStream = Languages.class.getClassLoader().getResourceAsStream(paramString);
    if (localInputStream == null) {
      throw new IllegalArgumentException("Unable to load resource: " + paramString);
    }
    return new Scanner(localInputStream, "UTF-8");
  }
  
  private static Scanner createScanner(NameType paramNameType, RuleType paramRuleType, String paramString)
  {
    paramNameType = createResourceName(paramNameType, paramRuleType, paramString);
    paramRuleType = Languages.class.getClassLoader().getResourceAsStream(paramNameType);
    if (paramRuleType == null) {
      throw new IllegalArgumentException("Unable to load resource: " + paramNameType);
    }
    return new Scanner(paramRuleType, "UTF-8");
  }
  
  private static boolean endsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence2.length() > paramCharSequence1.length()) {
      return false;
    }
    int j = paramCharSequence1.length() - 1;
    int i = paramCharSequence2.length() - 1;
    for (;;)
    {
      if (i < 0) {
        break label67;
      }
      if (paramCharSequence1.charAt(j) != paramCharSequence2.charAt(i)) {
        break;
      }
      j -= 1;
      i -= 1;
    }
    label67:
    return true;
  }
  
  public static List<Rule> getInstance(NameType paramNameType, RuleType paramRuleType, String paramString)
  {
    return getInstance(paramNameType, paramRuleType, Languages.LanguageSet.from(new HashSet(Arrays.asList(new String[] { paramString }))));
  }
  
  public static List<Rule> getInstance(NameType paramNameType, RuleType paramRuleType, Languages.LanguageSet paramLanguageSet)
  {
    paramRuleType = getInstanceMap(paramNameType, paramRuleType, paramLanguageSet);
    paramNameType = new ArrayList();
    paramRuleType = paramRuleType.values().iterator();
    while (paramRuleType.hasNext()) {
      paramNameType.addAll((List)paramRuleType.next());
    }
    return paramNameType;
  }
  
  public static Map<String, List<Rule>> getInstanceMap(NameType paramNameType, RuleType paramRuleType, String paramString)
  {
    Map localMap = (Map)((Map)((Map)RULES.get(paramNameType)).get(paramRuleType)).get(paramString);
    if (localMap == null) {
      throw new IllegalArgumentException(String.format("No rules found for %s, %s, %s.", new Object[] { paramNameType.getName(), paramRuleType.getName(), paramString }));
    }
    return localMap;
  }
  
  public static Map<String, List<Rule>> getInstanceMap(NameType paramNameType, RuleType paramRuleType, Languages.LanguageSet paramLanguageSet)
  {
    if (paramLanguageSet.isSingleton()) {
      return getInstanceMap(paramNameType, paramRuleType, paramLanguageSet.getAny());
    }
    return getInstanceMap(paramNameType, paramRuleType, "any");
  }
  
  private static Rule.Phoneme parsePhoneme(String paramString)
  {
    int i = paramString.indexOf("[");
    if (i >= 0)
    {
      if (!paramString.endsWith("]")) {
        throw new IllegalArgumentException("Phoneme expression contains a '[' but does not end in ']'");
      }
      return new Rule.Phoneme(paramString.substring(0, i), Languages.LanguageSet.from(new HashSet(Arrays.asList(paramString.substring(i + 1, paramString.length() - 1).split("[+]")))));
    }
    return new Rule.Phoneme(paramString, Languages.ANY_LANGUAGE);
  }
  
  private static Rule.PhonemeExpr parsePhonemeExpr(String paramString)
  {
    if (paramString.startsWith("("))
    {
      if (!paramString.endsWith(")")) {
        throw new IllegalArgumentException("Phoneme starts with '(' so must end with ')'");
      }
      ArrayList localArrayList = new ArrayList();
      paramString = paramString.substring(1, paramString.length() - 1);
      String[] arrayOfString = paramString.split("[|]");
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        localArrayList.add(parsePhoneme(arrayOfString[i]));
        i += 1;
      }
      if ((paramString.startsWith("|")) || (paramString.endsWith("|"))) {
        localArrayList.add(new Rule.Phoneme("", Languages.ANY_LANGUAGE));
      }
      return new Rule.PhonemeList(localArrayList);
    }
    return parsePhoneme(paramString);
  }
  
  private static Map<String, List<Rule>> parseRules(Scanner paramScanner, final String paramString)
  {
    HashMap localHashMap = new HashMap();
    int i = 0;
    int j = 0;
    final int k;
    Object localObject2;
    while (paramScanner.hasNextLine())
    {
      k = j + 1;
      localObject2 = paramScanner.nextLine();
      if (i != 0)
      {
        j = k;
        if (((String)localObject2).endsWith("*/"))
        {
          i = 0;
          j = k;
        }
      }
      else if (((String)localObject2).startsWith("/*"))
      {
        i = 1;
        j = k;
      }
      else
      {
        j = ((String)localObject2).indexOf("//");
        if (j < 0) {
          break label435;
        }
      }
    }
    label435:
    for (Object localObject1 = ((String)localObject2).substring(0, j);; localObject1 = localObject2)
    {
      localObject1 = ((String)localObject1).trim();
      j = k;
      if (((String)localObject1).length() == 0) {
        break;
      }
      if (((String)localObject1).startsWith("#include"))
      {
        localObject1 = ((String)localObject1).substring(8).trim();
        if (((String)localObject1).contains(" ")) {
          throw new IllegalArgumentException("Malformed import statement '" + (String)localObject2 + "' in " + paramString);
        }
        localHashMap.putAll(parseRules(createScanner((String)localObject1), paramString + "->" + (String)localObject1));
        j = k;
        break;
      }
      localObject1 = ((String)localObject1).split("\\s+");
      if (localObject1.length != 4) {
        throw new IllegalArgumentException("Malformed rule statement split into " + localObject1.length + " parts: " + (String)localObject2 + " in " + paramString);
      }
      try
      {
        Rule local2 = new Rule(stripQuotes(localObject1[0]), stripQuotes(localObject1[1]), stripQuotes(localObject1[2]), parsePhonemeExpr(stripQuotes(localObject1[3])))
        {
          private final String loc = paramString;
          private final int myLine = k;
          
          public final String toString()
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Rule");
            localStringBuilder.append("{line=").append(this.myLine);
            localStringBuilder.append(", loc='").append(this.loc).append('\'');
            localStringBuilder.append('}');
            return localStringBuilder.toString();
          }
        };
        String str = local2.pattern.substring(0, 1);
        localObject2 = (List)localHashMap.get(str);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = new ArrayList();
          localHashMap.put(str, localObject1);
        }
        ((List)localObject1).add(local2);
        j = k;
      }
      catch (IllegalArgumentException paramScanner)
      {
        throw new IllegalStateException("Problem parsing line '" + k + "' in " + paramString, paramScanner);
      }
      return localHashMap;
    }
  }
  
  private static Rule.RPattern pattern(String paramString)
  {
    final boolean bool1 = true;
    boolean bool2 = paramString.startsWith("^");
    boolean bool3 = paramString.endsWith("$");
    int i;
    if (bool2)
    {
      i = 1;
      if (!bool3) {
        break label85;
      }
    }
    String str;
    label85:
    for (int j = paramString.length() - 1;; j = paramString.length())
    {
      str = paramString.substring(i, j);
      if (str.contains("[")) {
        break label151;
      }
      if ((!bool2) || (!bool3)) {
        break label102;
      }
      if (str.length() != 0) {
        break label93;
      }
      new Rule.RPattern()
      {
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return paramAnonymousCharSequence.length() == 0;
        }
      };
      i = 0;
      break;
    }
    label93:
    new Rule.RPattern()
    {
      public final boolean isMatch(CharSequence paramAnonymousCharSequence)
      {
        return paramAnonymousCharSequence.equals(Rule.this);
      }
    };
    label102:
    if (((bool2) || (bool3)) && (str.length() == 0)) {
      return ALL_STRINGS_RMATCHER;
    }
    if (bool2) {
      new Rule.RPattern()
      {
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return Rule.startsWith(paramAnonymousCharSequence, Rule.this);
        }
      };
    }
    label151:
    boolean bool4;
    if (bool3)
    {
      new Rule.RPattern()
      {
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return Rule.endsWith(paramAnonymousCharSequence, Rule.this);
        }
      };
      bool4 = str.startsWith("[");
      boolean bool5 = str.endsWith("]");
      if ((bool4) && (bool5))
      {
        str = str.substring(1, str.length() - 1);
        if (!str.contains("["))
        {
          bool4 = str.startsWith("^");
          if (!bool4) {
            break label293;
          }
          str = str.substring(1);
        }
      }
    }
    label293:
    for (;;)
    {
      if (!bool4) {}
      while ((bool2) && (bool3))
      {
        new Rule.RPattern()
        {
          public final boolean isMatch(CharSequence paramAnonymousCharSequence)
          {
            return (paramAnonymousCharSequence.length() == 1) && (Rule.contains(Rule.this, paramAnonymousCharSequence.charAt(0)) == bool1);
          }
        };
        bool1 = false;
      }
      if (bool2) {
        new Rule.RPattern()
        {
          public final boolean isMatch(CharSequence paramAnonymousCharSequence)
          {
            boolean bool2 = false;
            boolean bool1 = bool2;
            if (paramAnonymousCharSequence.length() > 0)
            {
              bool1 = bool2;
              if (Rule.contains(Rule.this, paramAnonymousCharSequence.charAt(0)) == bool1) {
                bool1 = true;
              }
            }
            return bool1;
          }
        };
      }
      if (bool3) {
        new Rule.RPattern()
        {
          public final boolean isMatch(CharSequence paramAnonymousCharSequence)
          {
            return (paramAnonymousCharSequence.length() > 0) && (Rule.contains(Rule.this, paramAnonymousCharSequence.charAt(paramAnonymousCharSequence.length() - 1)) == bool1);
          }
        };
      }
      new Rule.RPattern()
      {
        Pattern pattern = Pattern.compile(Rule.this);
        
        public final boolean isMatch(CharSequence paramAnonymousCharSequence)
        {
          return this.pattern.matcher(paramAnonymousCharSequence).find();
        }
      };
    }
  }
  
  private static boolean startsWith(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence2.length() > paramCharSequence1.length()) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramCharSequence2.length()) {
        break label53;
      }
      if (paramCharSequence1.charAt(i) != paramCharSequence2.charAt(i)) {
        break;
      }
      i += 1;
    }
    label53:
    return true;
  }
  
  private static String stripQuotes(String paramString)
  {
    String str = paramString;
    if (paramString.startsWith("\"")) {
      str = paramString.substring(1);
    }
    paramString = str;
    if (str.endsWith("\"")) {
      paramString = str.substring(0, str.length() - 1);
    }
    return paramString;
  }
  
  public Rule.RPattern getLContext()
  {
    return this.lContext;
  }
  
  public String getPattern()
  {
    return this.pattern;
  }
  
  public Rule.PhonemeExpr getPhoneme()
  {
    return this.phoneme;
  }
  
  public Rule.RPattern getRContext()
  {
    return this.rContext;
  }
  
  public boolean patternAndContextMatches(CharSequence paramCharSequence, int paramInt)
  {
    if (paramInt < 0) {
      throw new IndexOutOfBoundsException("Can not match pattern at negative indexes");
    }
    int i = this.pattern.length() + paramInt;
    if (i > paramCharSequence.length()) {}
    while ((!paramCharSequence.subSequence(paramInt, i).equals(this.pattern)) || (!this.rContext.isMatch(paramCharSequence.subSequence(i, paramCharSequence.length())))) {
      return false;
    }
    return this.lContext.isMatch(paramCharSequence.subSequence(0, paramInt));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\Rule.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */