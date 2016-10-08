package org.apache.commons.codec.language;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class RefinedSoundex
  implements StringEncoder
{
  public static final RefinedSoundex US_ENGLISH = new RefinedSoundex();
  private static final char[] US_ENGLISH_MAPPING = "01360240043788015936020505".toCharArray();
  public static final String US_ENGLISH_MAPPING_STRING = "01360240043788015936020505";
  private final char[] soundexMapping;
  
  public RefinedSoundex()
  {
    this.soundexMapping = US_ENGLISH_MAPPING;
  }
  
  public RefinedSoundex(String paramString)
  {
    this.soundexMapping = paramString.toCharArray();
  }
  
  public RefinedSoundex(char[] paramArrayOfChar)
  {
    this.soundexMapping = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, this.soundexMapping, 0, paramArrayOfChar.length);
  }
  
  public int difference(String paramString1, String paramString2)
  {
    return SoundexUtils.difference(this, paramString1, paramString2);
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("Parameter supplied to RefinedSoundex encode is not of type java.lang.String");
    }
    return soundex((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    return soundex(paramString);
  }
  
  char getMappingCode(char paramChar)
  {
    if (!Character.isLetter(paramChar)) {
      return '\000';
    }
    return this.soundexMapping[(Character.toUpperCase(paramChar) - 'A')];
  }
  
  public String soundex(String paramString)
  {
    int i = 0;
    if (paramString == null) {
      return null;
    }
    paramString = SoundexUtils.clean(paramString);
    if (paramString.length() == 0) {
      return paramString;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString.charAt(0));
    int k;
    for (int j = 42; i < paramString.length(); j = k)
    {
      char c = getMappingCode(paramString.charAt(i));
      k = j;
      if (c != j)
      {
        if (c != 0) {
          localStringBuilder.append(c);
        }
        k = c;
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\RefinedSoundex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */