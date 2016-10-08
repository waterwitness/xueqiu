package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class Metaphone
  implements StringEncoder
{
  private static final String FRONTV = "EIY";
  private static final String VARSON = "CSPTG";
  private static final String VOWELS = "AEIOU";
  private int maxCodeLen = 4;
  
  private boolean isLastChar(int paramInt1, int paramInt2)
  {
    return paramInt2 + 1 == paramInt1;
  }
  
  private boolean isNextChar(StringBuilder paramStringBuilder, int paramInt, char paramChar)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt >= 0)
    {
      bool1 = bool2;
      if (paramInt < paramStringBuilder.length() - 1)
      {
        bool1 = bool2;
        if (paramStringBuilder.charAt(paramInt + 1) == paramChar) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private boolean isPreviousChar(StringBuilder paramStringBuilder, int paramInt, char paramChar)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt > 0)
    {
      bool1 = bool2;
      if (paramInt < paramStringBuilder.length())
      {
        bool1 = bool2;
        if (paramStringBuilder.charAt(paramInt - 1) == paramChar) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private boolean isVowel(StringBuilder paramStringBuilder, int paramInt)
  {
    return "AEIOU".indexOf(paramStringBuilder.charAt(paramInt)) >= 0;
  }
  
  private boolean regionMatch(StringBuilder paramStringBuilder, int paramInt, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramInt >= 0)
    {
      bool1 = bool2;
      if (paramString.length() + paramInt - 1 < paramStringBuilder.length()) {
        bool1 = paramStringBuilder.substring(paramInt, paramString.length() + paramInt).equals(paramString);
      }
    }
    return bool1;
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("Parameter supplied to Metaphone encode is not of type java.lang.String");
    }
    return metaphone((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    return metaphone(paramString);
  }
  
  public int getMaxCodeLen()
  {
    return this.maxCodeLen;
  }
  
  public boolean isMetaphoneEqual(String paramString1, String paramString2)
  {
    return metaphone(paramString1).equals(metaphone(paramString2));
  }
  
  public String metaphone(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return "";
    }
    if (paramString.length() == 1) {
      return paramString.toUpperCase(Locale.ENGLISH);
    }
    paramString = paramString.toUpperCase(Locale.ENGLISH).toCharArray();
    StringBuilder localStringBuilder1 = new StringBuilder(40);
    StringBuilder localStringBuilder2 = new StringBuilder(10);
    int k;
    int i;
    label139:
    char c;
    switch (paramString[0])
    {
    default: 
      localStringBuilder1.append(paramString);
      k = localStringBuilder1.length();
      i = 0;
      if ((localStringBuilder2.length() >= getMaxCodeLen()) || (i >= k)) {
        break label1316;
      }
      c = localStringBuilder1.charAt(i);
      if ((c == 'C') || (!isPreviousChar(localStringBuilder1, i, c))) {
        switch (c)
        {
        }
      }
      break;
    }
    for (;;)
    {
      int j = i + 1;
      i = j;
      if (localStringBuilder2.length() <= getMaxCodeLen()) {
        break label139;
      }
      localStringBuilder2.setLength(getMaxCodeLen());
      i = j;
      break label139;
      if (paramString[1] == 'N')
      {
        localStringBuilder1.append(paramString, 1, paramString.length - 1);
        break;
      }
      localStringBuilder1.append(paramString);
      break;
      if (paramString[1] == 'E')
      {
        localStringBuilder1.append(paramString, 1, paramString.length - 1);
        break;
      }
      localStringBuilder1.append(paramString);
      break;
      if (paramString[1] == 'R')
      {
        localStringBuilder1.append(paramString, 1, paramString.length - 1);
        break;
      }
      if (paramString[1] == 'H')
      {
        localStringBuilder1.append(paramString, 1, paramString.length - 1);
        localStringBuilder1.setCharAt(0, 'W');
        break;
      }
      localStringBuilder1.append(paramString);
      break;
      paramString[0] = 83;
      localStringBuilder1.append(paramString);
      break;
      if (i == 0)
      {
        localStringBuilder2.append(c);
        continue;
        if ((!isPreviousChar(localStringBuilder1, i, 'M')) || (!isLastChar(k, i)))
        {
          localStringBuilder2.append(c);
          continue;
          if ((!isPreviousChar(localStringBuilder1, i, 'S')) || (isLastChar(k, i)) || ("EIY".indexOf(localStringBuilder1.charAt(i + 1)) < 0)) {
            if (regionMatch(localStringBuilder1, i, "CIA"))
            {
              localStringBuilder2.append('X');
            }
            else if ((!isLastChar(k, i)) && ("EIY".indexOf(localStringBuilder1.charAt(i + 1)) >= 0))
            {
              localStringBuilder2.append('S');
            }
            else if ((isPreviousChar(localStringBuilder1, i, 'S')) && (isNextChar(localStringBuilder1, i, 'H')))
            {
              localStringBuilder2.append('K');
            }
            else if (isNextChar(localStringBuilder1, i, 'H'))
            {
              if ((i == 0) && (k >= 3) && (isVowel(localStringBuilder1, 2))) {
                localStringBuilder2.append('K');
              } else {
                localStringBuilder2.append('X');
              }
            }
            else
            {
              localStringBuilder2.append('K');
              continue;
              if ((!isLastChar(k, i + 1)) && (isNextChar(localStringBuilder1, i, 'G')) && ("EIY".indexOf(localStringBuilder1.charAt(i + 2)) >= 0))
              {
                localStringBuilder2.append('J');
                i += 2;
              }
              else
              {
                localStringBuilder2.append('T');
                continue;
                if (((!isLastChar(k, i + 1)) || (!isNextChar(localStringBuilder1, i, 'H'))) && ((isLastChar(k, i + 1)) || (!isNextChar(localStringBuilder1, i, 'H')) || (isVowel(localStringBuilder1, i + 2))) && ((i <= 0) || ((!regionMatch(localStringBuilder1, i, "GN")) && (!regionMatch(localStringBuilder1, i, "GNED")))))
                {
                  if (isPreviousChar(localStringBuilder1, i, 'G')) {}
                  for (j = 1;; j = 0)
                  {
                    if ((isLastChar(k, i)) || ("EIY".indexOf(localStringBuilder1.charAt(i + 1)) < 0) || (j != 0)) {
                      break label946;
                    }
                    localStringBuilder2.append('J');
                    break;
                  }
                  label946:
                  localStringBuilder2.append('K');
                  continue;
                  if ((!isLastChar(k, i)) && ((i <= 0) || ("CSPTG".indexOf(localStringBuilder1.charAt(i - 1)) < 0)) && (isVowel(localStringBuilder1, i + 1)))
                  {
                    localStringBuilder2.append('H');
                    continue;
                    localStringBuilder2.append(c);
                    continue;
                    if (i > 0)
                    {
                      if (!isPreviousChar(localStringBuilder1, i, 'C')) {
                        localStringBuilder2.append(c);
                      }
                    }
                    else
                    {
                      localStringBuilder2.append(c);
                      continue;
                      if (isNextChar(localStringBuilder1, i, 'H'))
                      {
                        localStringBuilder2.append('F');
                      }
                      else
                      {
                        localStringBuilder2.append(c);
                        continue;
                        localStringBuilder2.append('K');
                        continue;
                        if ((regionMatch(localStringBuilder1, i, "SH")) || (regionMatch(localStringBuilder1, i, "SIO")) || (regionMatch(localStringBuilder1, i, "SIA")))
                        {
                          localStringBuilder2.append('X');
                        }
                        else
                        {
                          localStringBuilder2.append('S');
                          continue;
                          if ((regionMatch(localStringBuilder1, i, "TIA")) || (regionMatch(localStringBuilder1, i, "TIO"))) {
                            localStringBuilder2.append('X');
                          } else if (!regionMatch(localStringBuilder1, i, "TCH")) {
                            if (regionMatch(localStringBuilder1, i, "TH"))
                            {
                              localStringBuilder2.append('0');
                            }
                            else
                            {
                              localStringBuilder2.append('T');
                              continue;
                              localStringBuilder2.append('F');
                              continue;
                              if ((!isLastChar(k, i)) && (isVowel(localStringBuilder1, i + 1)))
                              {
                                localStringBuilder2.append(c);
                                continue;
                                localStringBuilder2.append('K');
                                localStringBuilder2.append('S');
                                continue;
                                localStringBuilder2.append('S');
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    label1316:
    return localStringBuilder2.toString();
  }
  
  public void setMaxCodeLen(int paramInt)
  {
    this.maxCodeLen = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\Metaphone.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */