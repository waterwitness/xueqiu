package org.apache.commons.codec.language.bm;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class PhoneticEngine
{
  private static final int DEFAULT_MAX_PHONEMES = 20;
  private static final Map<NameType, Set<String>> NAME_PREFIXES;
  private final boolean concat;
  private final Lang lang;
  private final int maxPhonemes;
  private final NameType nameType;
  private final RuleType ruleType;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(NameType.class);
    NAME_PREFIXES = localEnumMap;
    localEnumMap.put(NameType.ASHKENAZI, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "bar", "ben", "da", "de", "van", "von" }))));
    NAME_PREFIXES.put(NameType.SEPHARDIC, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "al", "el", "da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von" }))));
    NAME_PREFIXES.put(NameType.GENERIC, Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von" }))));
  }
  
  public PhoneticEngine(NameType paramNameType, RuleType paramRuleType, boolean paramBoolean)
  {
    this(paramNameType, paramRuleType, paramBoolean, 20);
  }
  
  public PhoneticEngine(NameType paramNameType, RuleType paramRuleType, boolean paramBoolean, int paramInt)
  {
    if (paramRuleType == RuleType.RULES) {
      throw new IllegalArgumentException("ruleType must not be " + RuleType.RULES);
    }
    this.nameType = paramNameType;
    this.ruleType = paramRuleType;
    this.concat = paramBoolean;
    this.lang = Lang.instance(paramNameType);
    this.maxPhonemes = paramInt;
  }
  
  private PhoneticEngine.PhonemeBuilder applyFinalRules(PhoneticEngine.PhonemeBuilder paramPhonemeBuilder, Map<String, List<Rule>> paramMap)
  {
    if (paramMap == null) {
      throw new NullPointerException("finalRules can not be null");
    }
    if (paramMap.isEmpty()) {
      return paramPhonemeBuilder;
    }
    TreeSet localTreeSet = new TreeSet(Rule.Phoneme.COMPARATOR);
    Iterator localIterator = paramPhonemeBuilder.getPhonemes().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Rule.Phoneme)localIterator.next();
      paramPhonemeBuilder = PhoneticEngine.PhonemeBuilder.empty(((Rule.Phoneme)localObject).getLanguages());
      localObject = ((Rule.Phoneme)localObject).getPhonemeText().toString();
      PhoneticEngine.RulesApplication localRulesApplication;
      for (int i = 0; i < ((String)localObject).length(); i = localRulesApplication.getI())
      {
        localRulesApplication = new PhoneticEngine.RulesApplication(paramMap, (CharSequence)localObject, paramPhonemeBuilder, i, this.maxPhonemes).invoke();
        boolean bool = localRulesApplication.isFound();
        paramPhonemeBuilder = localRulesApplication.getPhonemeBuilder();
        if (!bool) {
          paramPhonemeBuilder.append(((String)localObject).subSequence(i, i + 1));
        }
      }
      localTreeSet.addAll(paramPhonemeBuilder.getPhonemes());
    }
    return new PhoneticEngine.PhonemeBuilder(localTreeSet, null);
  }
  
  private static String join(Iterable<String> paramIterable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramIterable = paramIterable.iterator();
    if (paramIterable.hasNext()) {
      localStringBuilder.append((String)paramIterable.next());
    }
    while (paramIterable.hasNext()) {
      localStringBuilder.append(paramString).append((String)paramIterable.next());
    }
    return localStringBuilder.toString();
  }
  
  public String encode(String paramString)
  {
    return encode(paramString, this.lang.guessLanguages(paramString));
  }
  
  public String encode(String paramString, Languages.LanguageSet paramLanguageSet)
  {
    int i = 0;
    Object localObject1 = Rule.getInstanceMap(this.nameType, RuleType.RULES, paramLanguageSet);
    Map localMap1 = Rule.getInstanceMap(this.nameType, this.ruleType, "common");
    Map localMap2 = Rule.getInstanceMap(this.nameType, this.ruleType, paramLanguageSet);
    Object localObject2 = paramString.toLowerCase(Locale.ENGLISH).replace('-', ' ').trim();
    Iterator localIterator;
    if (this.nameType == NameType.GENERIC)
    {
      if ((((String)localObject2).length() >= 2) && (((String)localObject2).substring(0, 2).equals("d'")))
      {
        paramString = ((String)localObject2).substring(2);
        paramLanguageSet = "d" + paramString;
        return "(" + encode(paramString) + ")-(" + encode(paramLanguageSet) + ")";
      }
      localIterator = ((Set)NAME_PREFIXES.get(this.nameType)).iterator();
      while (localIterator.hasNext())
      {
        paramString = (String)localIterator.next();
        if (((String)localObject2).startsWith(paramString + " "))
        {
          paramLanguageSet = ((String)localObject2).substring(paramString.length() + 1);
          paramString = paramString + paramLanguageSet;
          return "(" + encode(paramLanguageSet) + ")-(" + encode(paramString) + ")";
        }
      }
    }
    localObject2 = Arrays.asList(((String)localObject2).split("\\s+"));
    paramString = new ArrayList();
    switch (1.$SwitchMap$org$apache$commons$codec$language$bm$NameType[this.nameType.ordinal()])
    {
    default: 
      throw new IllegalStateException("Unreachable case: " + this.nameType);
    case 1: 
      localIterator = ((List)localObject2).iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = ((String)localIterator.next()).split("'");
        paramString.add(arrayOfString[(arrayOfString.length - 1)]);
      }
      paramString.removeAll((Collection)NAME_PREFIXES.get(this.nameType));
      if (!this.concat) {
        break;
      }
    }
    for (paramString = join(paramString, " ");; paramString = (String)((List)localObject2).iterator().next())
    {
      for (paramLanguageSet = PhoneticEngine.PhonemeBuilder.empty(paramLanguageSet); i < paramString.length(); paramLanguageSet = paramLanguageSet.getPhonemeBuilder())
      {
        paramLanguageSet = new PhoneticEngine.RulesApplication((Map)localObject1, paramString, paramLanguageSet, i, this.maxPhonemes).invoke();
        i = paramLanguageSet.getI();
      }
      paramString.addAll((Collection)localObject2);
      paramString.removeAll((Collection)NAME_PREFIXES.get(this.nameType));
      break;
      paramString.addAll((Collection)localObject2);
      break;
      if (paramString.size() != 1) {
        break label611;
      }
    }
    label611:
    paramLanguageSet = new StringBuilder();
    paramString = paramString.iterator();
    while (paramString.hasNext())
    {
      localObject1 = (String)paramString.next();
      paramLanguageSet.append("-").append(encode((String)localObject1));
    }
    return paramLanguageSet.substring(1);
    return applyFinalRules(applyFinalRules(paramLanguageSet, localMap1), localMap2).makeString();
  }
  
  public Lang getLang()
  {
    return this.lang;
  }
  
  public int getMaxPhonemes()
  {
    return this.maxPhonemes;
  }
  
  public NameType getNameType()
  {
    return this.nameType;
  }
  
  public RuleType getRuleType()
  {
    return this.ruleType;
  }
  
  public boolean isConcat()
  {
    return this.concat;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\PhoneticEngine.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */