package org.apache.commons.codec.language.bm;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

final class PhoneticEngine$PhonemeBuilder
{
  private final Set<Rule.Phoneme> phonemes;
  
  private PhoneticEngine$PhonemeBuilder(Set<Rule.Phoneme> paramSet)
  {
    this.phonemes = paramSet;
  }
  
  private PhoneticEngine$PhonemeBuilder(Rule.Phoneme paramPhoneme)
  {
    this.phonemes = new LinkedHashSet();
    this.phonemes.add(paramPhoneme);
  }
  
  public static PhonemeBuilder empty(Languages.LanguageSet paramLanguageSet)
  {
    return new PhonemeBuilder(new Rule.Phoneme("", paramLanguageSet));
  }
  
  public final void append(CharSequence paramCharSequence)
  {
    Iterator localIterator = this.phonemes.iterator();
    while (localIterator.hasNext()) {
      ((Rule.Phoneme)localIterator.next()).append(paramCharSequence);
    }
  }
  
  public final void apply(Rule.PhonemeExpr paramPhonemeExpr, int paramInt)
  {
    LinkedHashSet localLinkedHashSet = new LinkedHashSet(paramInt);
    Iterator localIterator1 = this.phonemes.iterator();
    label55:
    do
    {
      Rule.Phoneme localPhoneme2;
      do
      {
        Rule.Phoneme localPhoneme1;
        Languages.LanguageSet localLanguageSet;
        do
        {
          break label55;
          Iterator localIterator2;
          while (!localIterator2.hasNext())
          {
            if (!localIterator1.hasNext()) {
              break;
            }
            localPhoneme1 = (Rule.Phoneme)localIterator1.next();
            localIterator2 = paramPhonemeExpr.getPhonemes().iterator();
          }
          localPhoneme2 = (Rule.Phoneme)localIterator2.next();
          localLanguageSet = localPhoneme1.getLanguages().restrictTo(localPhoneme2.getLanguages());
        } while (localLanguageSet.isEmpty());
        localPhoneme2 = new Rule.Phoneme(localPhoneme1, localPhoneme2, localLanguageSet);
      } while (localLinkedHashSet.size() >= paramInt);
      localLinkedHashSet.add(localPhoneme2);
    } while (localLinkedHashSet.size() < paramInt);
    this.phonemes.clear();
    this.phonemes.addAll(localLinkedHashSet);
  }
  
  public final Set<Rule.Phoneme> getPhonemes()
  {
    return this.phonemes;
  }
  
  public final String makeString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.phonemes.iterator();
    while (localIterator.hasNext())
    {
      Rule.Phoneme localPhoneme = (Rule.Phoneme)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("|");
      }
      localStringBuilder.append(localPhoneme.getPhonemeText());
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\PhoneticEngine$PhonemeBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */