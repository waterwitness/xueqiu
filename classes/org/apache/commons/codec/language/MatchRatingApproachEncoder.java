package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class MatchRatingApproachEncoder
  implements StringEncoder
{
  private static final String[] DOUBLE_CONSONANT = { "BB", "CC", "DD", "FF", "GG", "HH", "JJ", "KK", "LL", "MM", "NN", "PP", "QQ", "RR", "SS", "TT", "VV", "WW", "XX", "YY", "ZZ" };
  private static final int EIGHT = 8;
  private static final int ELEVEN = 11;
  private static final String EMPTY = "";
  private static final int FIVE = 5;
  private static final int FOUR = 4;
  private static final int ONE = 1;
  private static final String PLAIN_ASCII = "AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu";
  private static final int SEVEN = 7;
  private static final int SIX = 6;
  private static final String SPACE = " ";
  private static final int THREE = 3;
  private static final int TWELVE = 12;
  private static final int TWO = 2;
  private static final String UNICODE = "ÀàÈèÌìÒòÙùÁáÉéÍíÓóÚúÝýÂâÊêÎîÔôÛûŶŷÃãÕõÑñÄäËëÏïÖöÜüŸÿÅåÇçŐőŰű";
  
  String cleanName(String paramString)
  {
    int i = 0;
    paramString = paramString.toUpperCase(Locale.ENGLISH);
    while (i < 5)
    {
      paramString = paramString.replaceAll(new String[] { "\\-", "[&]", "\\'", "\\.", "[\\,]" }[i], "");
      i += 1;
    }
    return removeAccents(paramString).replaceAll("\\s+", "");
  }
  
  public final Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("Parameter supplied to Match Rating Approach encoder is not of type java.lang.String");
    }
    return encode((String)paramObject);
  }
  
  public final String encode(String paramString)
  {
    if ((paramString == null) || ("".equalsIgnoreCase(paramString)) || (" ".equalsIgnoreCase(paramString)) || (paramString.length() == 1)) {
      return "";
    }
    return getFirst3Last3(removeDoubleConsonants(removeVowels(cleanName(paramString))));
  }
  
  String getFirst3Last3(String paramString)
  {
    int i = paramString.length();
    String str = paramString;
    if (i > 6)
    {
      str = paramString.substring(0, 3);
      paramString = paramString.substring(i - 3, i);
      str = str + paramString;
    }
    return str;
  }
  
  int getMinRating(int paramInt)
  {
    if (paramInt <= 4) {
      return 5;
    }
    if ((paramInt >= 5) && (paramInt <= 7)) {
      return 4;
    }
    if ((paramInt >= 8) && (paramInt <= 11)) {
      return 3;
    }
    if (paramInt == 12) {
      return 2;
    }
    return 1;
  }
  
  public boolean isEncodeEquals(String paramString1, String paramString2)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramString1 == null) || ("".equalsIgnoreCase(paramString1)) || (" ".equalsIgnoreCase(paramString1))) {
      bool1 = false;
    }
    int i;
    do
    {
      do
      {
        return bool1;
        if ((paramString2 == null) || ("".equalsIgnoreCase(paramString2)) || (" ".equalsIgnoreCase(paramString2))) {
          return false;
        }
        if ((paramString1.length() == 1) || (paramString2.length() == 1)) {
          return false;
        }
        bool1 = bool2;
      } while (paramString1.equalsIgnoreCase(paramString2));
      paramString1 = cleanName(paramString1);
      paramString2 = cleanName(paramString2);
      paramString1 = removeVowels(paramString1);
      paramString2 = removeVowels(paramString2);
      paramString1 = removeDoubleConsonants(paramString1);
      paramString2 = removeDoubleConsonants(paramString2);
      paramString1 = getFirst3Last3(paramString1);
      paramString2 = getFirst3Last3(paramString2);
      if (Math.abs(paramString1.length() - paramString2.length()) >= 3) {
        return false;
      }
      i = getMinRating(Math.abs(paramString1.length() + paramString2.length()));
      bool1 = bool2;
    } while (leftToRightThenRightToLeftProcessing(paramString1, paramString2) >= i);
    return false;
  }
  
  boolean isVowel(String paramString)
  {
    return (paramString.equalsIgnoreCase("E")) || (paramString.equalsIgnoreCase("A")) || (paramString.equalsIgnoreCase("O")) || (paramString.equalsIgnoreCase("I")) || (paramString.equalsIgnoreCase("U"));
  }
  
  int leftToRightThenRightToLeftProcessing(String paramString1, String paramString2)
  {
    char[] arrayOfChar2 = paramString1.toCharArray();
    char[] arrayOfChar1 = paramString2.toCharArray();
    int j = paramString1.length() - 1;
    int k = paramString2.length() - 1;
    int i = 0;
    while ((i < arrayOfChar2.length) && (i <= k))
    {
      String str1 = paramString1.substring(i, i + 1);
      String str2 = paramString1.substring(j - i, j - i + 1);
      String str3 = paramString2.substring(i, i + 1);
      String str4 = paramString2.substring(k - i, k - i + 1);
      if (str1.equals(str3))
      {
        arrayOfChar2[i] = ' ';
        arrayOfChar1[i] = ' ';
      }
      if (str2.equals(str4))
      {
        arrayOfChar2[(j - i)] = ' ';
        arrayOfChar1[(k - i)] = ' ';
      }
      i += 1;
    }
    paramString1 = new String(arrayOfChar2).replaceAll("\\s+", "");
    paramString2 = new String(arrayOfChar1).replaceAll("\\s+", "");
    if (paramString1.length() > paramString2.length()) {
      return Math.abs(6 - paramString1.length());
    }
    return Math.abs(6 - paramString2.length());
  }
  
  String removeAccents(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramString.length();
    int i = 0;
    if (i < j)
    {
      char c = paramString.charAt(i);
      int k = "ÀàÈèÌìÒòÙùÁáÉéÍíÓóÚúÝýÂâÊêÎîÔôÛûŶŷÃãÕõÑñÄäËëÏïÖöÜüŸÿÅåÇçŐőŰű".indexOf(c);
      if (k >= 0) {
        localStringBuilder.append("AaEeIiOoUuAaEeIiOoUuYyAaEeIiOoUuYyAaOoNnAaEeIiOoUuYyAaCcOoUu".charAt(k));
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append(c);
      }
    }
    return localStringBuilder.toString();
  }
  
  String removeDoubleConsonants(String paramString)
  {
    paramString = paramString.toUpperCase();
    String[] arrayOfString = DOUBLE_CONSONANT;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str2 = arrayOfString[i];
      String str1 = paramString;
      if (paramString.contains(str2)) {
        str1 = paramString.replace(str2, str2.substring(0, 1));
      }
      i += 1;
      paramString = str1;
    }
    return paramString;
  }
  
  String removeVowels(String paramString)
  {
    String str2 = paramString.substring(0, 1);
    String str1 = paramString.replaceAll("A", "").replaceAll("E", "").replaceAll("I", "").replaceAll("O", "").replaceAll("U", "").replaceAll("\\s{2,}\\b", " ");
    paramString = str1;
    if (isVowel(str2)) {
      paramString = str2 + str1;
    }
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\MatchRatingApproachEncoder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */