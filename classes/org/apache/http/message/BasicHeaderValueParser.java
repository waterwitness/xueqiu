package org.apache.http.message;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public class BasicHeaderValueParser
  implements HeaderValueParser
{
  @Deprecated
  public static final BasicHeaderValueParser DEFAULT = new BasicHeaderValueParser();
  private static final char ELEM_DELIMITER = ',';
  public static final BasicHeaderValueParser INSTANCE = new BasicHeaderValueParser();
  private static final char PARAM_DELIMITER = ';';
  private static final BitSet TOKEN_DELIMS = TokenParser.INIT_BITSET(new int[] { 61, 59, 44 });
  private static final BitSet VALUE_DELIMS = TokenParser.INIT_BITSET(new int[] { 59, 44 });
  private final TokenParser tokenParser = TokenParser.INSTANCE;
  
  public static HeaderElement[] parseElements(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseElements(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  public static HeaderElement parseHeaderElement(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseHeaderElement(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  public static NameValuePair parseNameValuePair(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseNameValuePair(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  public static NameValuePair[] parseParameters(String paramString, HeaderValueParser paramHeaderValueParser)
  {
    Args.notNull(paramString, "Value");
    CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
    localCharArrayBuffer.append(paramString);
    paramString = new ParserCursor(0, paramString.length());
    if (paramHeaderValueParser != null) {}
    for (;;)
    {
      return paramHeaderValueParser.parseParameters(localCharArrayBuffer, paramString);
      paramHeaderValueParser = INSTANCE;
    }
  }
  
  protected HeaderElement createHeaderElement(String paramString1, String paramString2, NameValuePair[] paramArrayOfNameValuePair)
  {
    return new BasicHeaderElement(paramString1, paramString2, paramArrayOfNameValuePair);
  }
  
  protected NameValuePair createNameValuePair(String paramString1, String paramString2)
  {
    return new BasicNameValuePair(paramString1, paramString2);
  }
  
  public HeaderElement[] parseElements(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    ArrayList localArrayList = new ArrayList();
    while (!paramParserCursor.atEnd())
    {
      HeaderElement localHeaderElement = parseHeaderElement(paramCharArrayBuffer, paramParserCursor);
      if ((localHeaderElement.getName().length() != 0) || (localHeaderElement.getValue() != null)) {
        localArrayList.add(localHeaderElement);
      }
    }
    return (HeaderElement[])localArrayList.toArray(new HeaderElement[localArrayList.size()]);
  }
  
  public HeaderElement parseHeaderElement(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    NameValuePair localNameValuePair = parseNameValuePair(paramCharArrayBuffer, paramParserCursor);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (!paramParserCursor.atEnd())
    {
      localObject1 = localObject2;
      if (paramCharArrayBuffer.charAt(paramParserCursor.getPos() - 1) != ',') {
        localObject1 = parseParameters(paramCharArrayBuffer, paramParserCursor);
      }
    }
    return createHeaderElement(localNameValuePair.getName(), localNameValuePair.getValue(), (NameValuePair[])localObject1);
  }
  
  public NameValuePair parseNameValuePair(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    String str = this.tokenParser.parseToken(paramCharArrayBuffer, paramParserCursor, TOKEN_DELIMS);
    if (paramParserCursor.atEnd()) {
      return new BasicNameValuePair(str, null);
    }
    int i = paramCharArrayBuffer.charAt(paramParserCursor.getPos());
    paramParserCursor.updatePos(paramParserCursor.getPos() + 1);
    if (i != 61) {
      return createNameValuePair(str, null);
    }
    paramCharArrayBuffer = this.tokenParser.parseValue(paramCharArrayBuffer, paramParserCursor, VALUE_DELIMS);
    if (!paramParserCursor.atEnd()) {
      paramParserCursor.updatePos(paramParserCursor.getPos() + 1);
    }
    return createNameValuePair(str, paramCharArrayBuffer);
  }
  
  @Deprecated
  public NameValuePair parseNameValuePair(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor, char[] paramArrayOfChar)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    BitSet localBitSet = new BitSet();
    if (paramArrayOfChar != null)
    {
      int j = paramArrayOfChar.length;
      i = 0;
      while (i < j)
      {
        localBitSet.set(paramArrayOfChar[i]);
        i += 1;
      }
    }
    localBitSet.set(61);
    paramArrayOfChar = this.tokenParser.parseToken(paramCharArrayBuffer, paramParserCursor, localBitSet);
    if (paramParserCursor.atEnd()) {
      return new BasicNameValuePair(paramArrayOfChar, null);
    }
    int i = paramCharArrayBuffer.charAt(paramParserCursor.getPos());
    paramParserCursor.updatePos(paramParserCursor.getPos() + 1);
    if (i != 61) {
      return createNameValuePair(paramArrayOfChar, null);
    }
    localBitSet.clear(61);
    paramCharArrayBuffer = this.tokenParser.parseValue(paramCharArrayBuffer, paramParserCursor, localBitSet);
    if (!paramParserCursor.atEnd()) {
      paramParserCursor.updatePos(paramParserCursor.getPos() + 1);
    }
    return createNameValuePair(paramArrayOfChar, paramCharArrayBuffer);
  }
  
  public NameValuePair[] parseParameters(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    this.tokenParser.skipWhiteSpace(paramCharArrayBuffer, paramParserCursor);
    ArrayList localArrayList = new ArrayList();
    do
    {
      if (paramParserCursor.atEnd()) {
        break;
      }
      localArrayList.add(parseNameValuePair(paramCharArrayBuffer, paramParserCursor));
    } while (paramCharArrayBuffer.charAt(paramParserCursor.getPos() - 1) != ',');
    return (NameValuePair[])localArrayList.toArray(new NameValuePair[localArrayList.size()]);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\message\BasicHeaderValueParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */