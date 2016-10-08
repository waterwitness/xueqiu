package org.apache.http.message;

import java.util.BitSet;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public class TokenParser
{
  public static final char CR = '\r';
  public static final char DQUOTE = '"';
  public static final char ESCAPE = '\\';
  public static final char HT = '\t';
  public static final TokenParser INSTANCE = new TokenParser();
  public static final char LF = '\n';
  public static final char SP = ' ';
  
  public static BitSet INIT_BITSET(int... paramVarArgs)
  {
    BitSet localBitSet = new BitSet();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      localBitSet.set(paramVarArgs[i]);
      i += 1;
    }
    return localBitSet;
  }
  
  public static boolean isWhitespace(char paramChar)
  {
    return (paramChar == ' ') || (paramChar == '\t') || (paramChar == '\r') || (paramChar == '\n');
  }
  
  public void copyContent(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor, BitSet paramBitSet, StringBuilder paramStringBuilder)
  {
    int j = paramParserCursor.getPos();
    int i = paramParserCursor.getPos();
    int k = paramParserCursor.getUpperBound();
    while (i < k)
    {
      char c = paramCharArrayBuffer.charAt(i);
      if (((paramBitSet != null) && (paramBitSet.get(c))) || (isWhitespace(c))) {
        break;
      }
      j += 1;
      paramStringBuilder.append(c);
      i += 1;
    }
    paramParserCursor.updatePos(j);
  }
  
  public void copyQuotedContent(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor, StringBuilder paramStringBuilder)
  {
    if (paramParserCursor.atEnd()) {}
    int i;
    int j;
    int n;
    do
    {
      return;
      i = paramParserCursor.getPos();
      j = paramParserCursor.getPos();
      n = paramParserCursor.getUpperBound();
    } while (paramCharArrayBuffer.charAt(i) != '"');
    i += 1;
    int k = j + 1;
    int m = 0;
    char c;
    for (;;)
    {
      if (k < n)
      {
        c = paramCharArrayBuffer.charAt(k);
        if (m != 0)
        {
          if ((c != '"') && (c != '\\')) {
            paramStringBuilder.append('\\');
          }
          paramStringBuilder.append(c);
          j = 0;
          k += 1;
          i += 1;
          m = j;
        }
        else if (c == '"')
        {
          i += 1;
        }
      }
    }
    for (;;)
    {
      paramParserCursor.updatePos(i);
      return;
      if (c == '\\')
      {
        j = 1;
        break;
      }
      j = m;
      if (c == '\r') {
        break;
      }
      j = m;
      if (c == '\n') {
        break;
      }
      paramStringBuilder.append(c);
      j = m;
      break;
    }
  }
  
  public void copyUnquotedContent(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor, BitSet paramBitSet, StringBuilder paramStringBuilder)
  {
    int j = paramParserCursor.getPos();
    int i = paramParserCursor.getPos();
    int k = paramParserCursor.getUpperBound();
    while (i < k)
    {
      char c = paramCharArrayBuffer.charAt(i);
      if (((paramBitSet != null) && (paramBitSet.get(c))) || (isWhitespace(c)) || (c == '"')) {
        break;
      }
      j += 1;
      paramStringBuilder.append(c);
      i += 1;
    }
    paramParserCursor.updatePos(j);
  }
  
  public String parseToken(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor, BitSet paramBitSet)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (!paramParserCursor.atEnd())
    {
      char c = paramCharArrayBuffer.charAt(paramParserCursor.getPos());
      if ((paramBitSet != null) && (paramBitSet.get(c))) {
        break;
      }
      if (isWhitespace(c))
      {
        skipWhiteSpace(paramCharArrayBuffer, paramParserCursor);
        i = 1;
      }
      else
      {
        if ((i != 0) && (localStringBuilder.length() > 0)) {
          localStringBuilder.append(' ');
        }
        copyContent(paramCharArrayBuffer, paramParserCursor, paramBitSet, localStringBuilder);
        i = 0;
      }
    }
    return localStringBuilder.toString();
  }
  
  public String parseValue(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor, BitSet paramBitSet)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (!paramParserCursor.atEnd())
    {
      char c = paramCharArrayBuffer.charAt(paramParserCursor.getPos());
      if ((paramBitSet != null) && (paramBitSet.get(c))) {
        break;
      }
      if (isWhitespace(c))
      {
        skipWhiteSpace(paramCharArrayBuffer, paramParserCursor);
        i = 1;
      }
      else if (c == '"')
      {
        if ((i != 0) && (localStringBuilder.length() > 0)) {
          localStringBuilder.append(' ');
        }
        copyQuotedContent(paramCharArrayBuffer, paramParserCursor, localStringBuilder);
        i = 0;
      }
      else
      {
        if ((i != 0) && (localStringBuilder.length() > 0)) {
          localStringBuilder.append(' ');
        }
        copyUnquotedContent(paramCharArrayBuffer, paramParserCursor, paramBitSet, localStringBuilder);
        i = 0;
      }
    }
    return localStringBuilder.toString();
  }
  
  public void skipWhiteSpace(CharArrayBuffer paramCharArrayBuffer, ParserCursor paramParserCursor)
  {
    int j = paramParserCursor.getPos();
    int i = paramParserCursor.getPos();
    int k = paramParserCursor.getUpperBound();
    while ((i < k) && (isWhitespace(paramCharArrayBuffer.charAt(i))))
    {
      j += 1;
      i += 1;
    }
    paramParserCursor.updatePos(j);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\message\TokenParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */