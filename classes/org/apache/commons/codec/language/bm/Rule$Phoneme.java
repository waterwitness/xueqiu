package org.apache.commons.codec.language.bm;

import java.util.Collections;
import java.util.Comparator;

public final class Rule$Phoneme
  implements Rule.PhonemeExpr
{
  public static final Comparator<Phoneme> COMPARATOR = new Comparator()
  {
    public final int compare(Rule.Phoneme paramAnonymousPhoneme1, Rule.Phoneme paramAnonymousPhoneme2)
    {
      int j = 0;
      int i = 0;
      if (i < paramAnonymousPhoneme1.phonemeText.length()) {
        if (i >= paramAnonymousPhoneme2.phonemeText.length()) {
          i = 1;
        }
      }
      do
      {
        return i;
        int k = paramAnonymousPhoneme1.phonemeText.charAt(i) - paramAnonymousPhoneme2.phonemeText.charAt(i);
        if (k != 0) {
          return k;
        }
        i += 1;
        break;
        i = j;
      } while (paramAnonymousPhoneme1.phonemeText.length() >= paramAnonymousPhoneme2.phonemeText.length());
      return -1;
    }
  };
  private final Languages.LanguageSet languages;
  private final StringBuilder phonemeText;
  
  public Rule$Phoneme(CharSequence paramCharSequence, Languages.LanguageSet paramLanguageSet)
  {
    this.phonemeText = new StringBuilder(paramCharSequence);
    this.languages = paramLanguageSet;
  }
  
  public Rule$Phoneme(Phoneme paramPhoneme1, Phoneme paramPhoneme2)
  {
    this(paramPhoneme1.phonemeText, paramPhoneme1.languages);
    this.phonemeText.append(paramPhoneme2.phonemeText);
  }
  
  public Rule$Phoneme(Phoneme paramPhoneme1, Phoneme paramPhoneme2, Languages.LanguageSet paramLanguageSet)
  {
    this(paramPhoneme1.phonemeText, paramLanguageSet);
    this.phonemeText.append(paramPhoneme2.phonemeText);
  }
  
  public final Phoneme append(CharSequence paramCharSequence)
  {
    this.phonemeText.append(paramCharSequence);
    return this;
  }
  
  public final Languages.LanguageSet getLanguages()
  {
    return this.languages;
  }
  
  public final CharSequence getPhonemeText()
  {
    return this.phonemeText;
  }
  
  public final Iterable<Phoneme> getPhonemes()
  {
    return Collections.singleton(this);
  }
  
  @Deprecated
  public final Phoneme join(Phoneme paramPhoneme)
  {
    return new Phoneme(this.phonemeText.toString() + paramPhoneme.phonemeText.toString(), this.languages.restrictTo(paramPhoneme.languages));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\Rule$Phoneme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */