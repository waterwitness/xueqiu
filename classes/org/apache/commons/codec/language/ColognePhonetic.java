package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

public class ColognePhonetic
  implements StringEncoder
{
  private static final char[] AEIJOUY = { 65, 69, 73, 74, 79, 85, 89 };
  private static final char[] AHKLOQRUX;
  private static final char[] AHOUKQX;
  private static final char[] CKQ;
  private static final char[] GKQ;
  private static final char[][] PREPROCESS_MAP = { { 196, 65 }, { 220, 85 }, { 214, 79 }, { 223, 83 } };
  private static final char[] SCZ = { 83, 67, 90 };
  private static final char[] SZ;
  private static final char[] TDX;
  private static final char[] WFPV = { 87, 70, 80, 86 };
  
  static
  {
    GKQ = new char[] { 71, 75, 81 };
    CKQ = new char[] { 67, 75, 81 };
    AHKLOQRUX = new char[] { 65, 72, 75, 76, 79, 81, 82, 85, 88 };
    SZ = new char[] { 83, 90 };
    AHOUKQX = new char[] { 65, 72, 79, 85, 75, 81, 88 };
    TDX = new char[] { 84, 68, 88 };
  }
  
  private static boolean arrayContains(char[] paramArrayOfChar, char paramChar)
  {
    boolean bool2 = false;
    int j = paramArrayOfChar.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramArrayOfChar[i] == paramChar) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private String preprocess(String paramString)
  {
    paramString = paramString.toUpperCase(Locale.GERMAN).toCharArray();
    int i = 0;
    if (i < paramString.length)
    {
      char[][] arrayOfChar;
      int k;
      int j;
      if (paramString[i] > 'Z')
      {
        arrayOfChar = PREPROCESS_MAP;
        k = arrayOfChar.length;
        j = 0;
      }
      for (;;)
      {
        if (j < k)
        {
          char[] arrayOfChar1 = arrayOfChar[j];
          if (paramString[i] == arrayOfChar1[0]) {
            paramString[i] = arrayOfChar1[1];
          }
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
    }
    return new String(paramString);
  }
  
  public String colognePhonetic(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject = preprocess(paramString);
    paramString = new ColognePhonetic.CologneOutputBuffer(this, ((String)localObject).length() * 2);
    localObject = new ColognePhonetic.CologneInputBuffer(this, ((String)localObject).toCharArray());
    int j = ((ColognePhonetic.CologneInputBuffer)localObject).length();
    int k = 47;
    char c1 = '-';
    if (j > 0)
    {
      char c2 = ((ColognePhonetic.CologneInputBuffer)localObject).removeNext();
      int i = ((ColognePhonetic.CologneInputBuffer)localObject).length();
      char c3;
      if (i > 0)
      {
        c3 = ((ColognePhonetic.CologneInputBuffer)localObject).getNextChar();
        label88:
        if (!arrayContains(AEIJOUY, c2)) {
          break label162;
        }
        c1 = '0';
      }
      for (;;)
      {
        if ((c1 != '-') && (((k != c1) && ((c1 != '0') || (k == 47))) || (c1 < '0') || (c1 > '8'))) {
          paramString.addRight(c1);
        }
        k = c1;
        c1 = c2;
        j = i;
        break;
        c3 = '-';
        break label88;
        label162:
        if ((c2 == 'H') || (c2 < 'A') || (c2 > 'Z'))
        {
          j = i;
          if (k == 47) {
            break;
          }
          c1 = '-';
          continue;
        }
        if ((c2 == 'B') || ((c2 == 'P') && (c3 != 'H')))
        {
          c1 = '1';
        }
        else if (((c2 == 'D') || (c2 == 'T')) && (!arrayContains(SCZ, c3)))
        {
          c1 = '2';
        }
        else if (arrayContains(WFPV, c2))
        {
          c1 = '3';
        }
        else if (arrayContains(GKQ, c2))
        {
          c1 = '4';
        }
        else if ((c2 == 'X') && (!arrayContains(CKQ, c1)))
        {
          ((ColognePhonetic.CologneInputBuffer)localObject).addLeft('S');
          i += 1;
          c1 = '4';
        }
        else if ((c2 == 'S') || (c2 == 'Z'))
        {
          c1 = '8';
        }
        else if (c2 == 'C')
        {
          if (k == 47)
          {
            if (arrayContains(AHKLOQRUX, c3)) {
              c1 = '4';
            } else {
              c1 = '8';
            }
          }
          else if ((arrayContains(SZ, c1)) || (!arrayContains(AHOUKQX, c3))) {
            c1 = '8';
          } else {
            c1 = '4';
          }
        }
        else if (arrayContains(TDX, c2))
        {
          c1 = '8';
        }
        else if (c2 == 'R')
        {
          c1 = '7';
        }
        else if (c2 == 'L')
        {
          c1 = '5';
        }
        else if ((c2 == 'M') || (c2 == 'N'))
        {
          c1 = '6';
        }
        else
        {
          c1 = c2;
        }
      }
    }
    return paramString.toString();
  }
  
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String)) {
      throw new EncoderException("This method's parameter was expected to be of the type " + String.class.getName() + ". But actually it was of the type " + paramObject.getClass().getName() + ".");
    }
    return encode((String)paramObject);
  }
  
  public String encode(String paramString)
  {
    return colognePhonetic(paramString);
  }
  
  public boolean isEncodeEqual(String paramString1, String paramString2)
  {
    return colognePhonetic(paramString1).equals(colognePhonetic(paramString2));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\language\ColognePhonetic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */