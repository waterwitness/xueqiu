package org.apache.commons.codec.language.bm;

import java.util.List;

public final class Rule$PhonemeList
  implements Rule.PhonemeExpr
{
  private final List<Rule.Phoneme> phonemes;
  
  public Rule$PhonemeList(List<Rule.Phoneme> paramList)
  {
    this.phonemes = paramList;
  }
  
  public final List<Rule.Phoneme> getPhonemes()
  {
    return this.phonemes;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\bm\Rule$PhonemeList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */