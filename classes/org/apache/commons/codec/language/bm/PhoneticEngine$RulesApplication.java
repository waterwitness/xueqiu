package org.apache.commons.codec.language.bm;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class PhoneticEngine$RulesApplication
{
  private final Map<String, List<Rule>> finalRules;
  private boolean found;
  private int i;
  private final CharSequence input;
  private final int maxPhonemes;
  private PhoneticEngine.PhonemeBuilder phonemeBuilder;
  
  public PhoneticEngine$RulesApplication(Map<String, List<Rule>> paramMap, CharSequence paramCharSequence, PhoneticEngine.PhonemeBuilder paramPhonemeBuilder, int paramInt1, int paramInt2)
  {
    if (paramMap == null) {
      throw new NullPointerException("The finalRules argument must not be null");
    }
    this.finalRules = paramMap;
    this.phonemeBuilder = paramPhonemeBuilder;
    this.input = paramCharSequence;
    this.i = paramInt1;
    this.maxPhonemes = paramInt2;
  }
  
  public final int getI()
  {
    return this.i;
  }
  
  public final PhoneticEngine.PhonemeBuilder getPhonemeBuilder()
  {
    return this.phonemeBuilder;
  }
  
  public final RulesApplication invoke()
  {
    int k = 1;
    this.found = false;
    Object localObject = (List)this.finalRules.get(this.input.subSequence(this.i, this.i + 1));
    int j;
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      j = 1;
      if (((Iterator)localObject).hasNext())
      {
        Rule localRule = (Rule)((Iterator)localObject).next();
        j = localRule.getPattern().length();
        if (localRule.patternAndContextMatches(this.input, this.i))
        {
          this.phonemeBuilder.apply(localRule.getPhoneme(), this.maxPhonemes);
          this.found = true;
        }
      }
    }
    for (;;)
    {
      if (!this.found) {
        j = k;
      }
      for (;;)
      {
        this.i += j;
        return this;
        break;
      }
      continue;
      j = 1;
    }
  }
  
  public final boolean isFound()
  {
    return this.found;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\PhoneticEngine$RulesApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */