package org.apache.http.impl.conn;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponseFactory;
import org.apache.http.NoHttpResponseException;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.impl.io.AbstractMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.message.LineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
@ThreadSafe
public class DefaultResponseParser
  extends AbstractMessageParser<HttpMessage>
{
  private final CharArrayBuffer lineBuf;
  private final Log log = LogFactory.getLog(getClass());
  private final int maxGarbageLines;
  private final HttpResponseFactory responseFactory;
  
  public DefaultResponseParser(SessionInputBuffer paramSessionInputBuffer, LineParser paramLineParser, HttpResponseFactory paramHttpResponseFactory, HttpParams paramHttpParams)
  {
    super(paramSessionInputBuffer, paramLineParser, paramHttpParams);
    Args.notNull(paramHttpResponseFactory, "Response factory");
    this.responseFactory = paramHttpResponseFactory;
    this.lineBuf = new CharArrayBuffer(128);
    this.maxGarbageLines = getMaxGarbageLines(paramHttpParams);
  }
  
  protected int getMaxGarbageLines(HttpParams paramHttpParams)
  {
    return paramHttpParams.getIntParameter("http.connection.max-status-line-garbage", Integer.MAX_VALUE);
  }
  
  protected HttpMessage parseHead(SessionInputBuffer paramSessionInputBuffer)
  {
    int i = 0;
    ParserCursor localParserCursor;
    for (;;)
    {
      this.lineBuf.clear();
      int j = paramSessionInputBuffer.readLine(this.lineBuf);
      if ((j == -1) && (i == 0)) {
        throw new NoHttpResponseException("The target server failed to respond");
      }
      localParserCursor = new ParserCursor(0, this.lineBuf.length());
      if (this.lineParser.hasProtocolVersion(this.lineBuf, localParserCursor)) {
        break;
      }
      if ((j == -1) || (i >= this.maxGarbageLines)) {
        throw new ProtocolException("The server failed to respond with a valid HTTP response");
      }
      if (this.log.isDebugEnabled()) {
        this.log.debug("Garbage in response: " + this.lineBuf.toString());
      }
      i += 1;
    }
    paramSessionInputBuffer = this.lineParser.parseStatusLine(this.lineBuf, localParserCursor);
    return this.responseFactory.newHttpResponse(paramSessionInputBuffer, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\DefaultResponseParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */