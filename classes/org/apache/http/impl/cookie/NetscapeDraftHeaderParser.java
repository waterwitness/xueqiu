package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.message.TokenParser;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public class NetscapeDraftHeaderParser
{
  public static final NetscapeDraftHeaderParser DEFAULT = new NetscapeDraftHeaderParser();
  private static final char PARAM_DELIMITER = ';';
  private static final BitSet TOKEN_DELIMS = TokenParser.INIT_BITSET(new int[] { 61, 59 });
  private static final BitSet VALUE_DELIMS = TokenParser.INIT_BITSET(new int[] { 59 });
  private final TokenParser tokenParser = TokenParser.INSTANCE;
  
  private NameValuePair parseNameValuePair(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    String str = this.tokenParser.parseToken(paramCharArrayBuffer, paramParserCursor, TOKEN_DELIMS);
    if (paramParserCursor.atEnd()) {
      return new BasicNameValuePair(str, null);
    }
    int i = paramCharArrayBuffer.charAt(paramParserCursor.getPos());
    paramParserCursor.updatePos(paramParserCursor.getPos() + 1);
    if (i != 61) {
      return new BasicNameValuePair(str, null);
    }
    paramCharArrayBuffer = this.tokenParser.parseToken(paramCharArrayBuffer, paramParserCursor, VALUE_DELIMS);
    if (!paramParserCursor.atEnd()) {
      paramParserCursor.updatePos(paramParserCursor.getPos() + 1);
    }
    return new BasicNameValuePair(str, paramCharArrayBuffer);
  }
  
  public HeaderElement parseHeader(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    Args.notNull(paramParserCursor, "Parser cursor");
    NameValuePair localNameValuePair = parseNameValuePair(paramCharArrayBuffer, paramParserCursor);
    ArrayList localArrayList = new ArrayList();
    while (!paramParserCursor.atEnd()) {
      localArrayList.add(parseNameValuePair(paramCharArrayBuffer, paramParserCursor));
    }
    return new BasicHeaderElement(localNameValuePair.getName(), localNameValuePair.getValue(), (NameValuePair[])localArrayList.toArray(new NameValuePair[localArrayList.size()]));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\NetscapeDraftHeaderParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */