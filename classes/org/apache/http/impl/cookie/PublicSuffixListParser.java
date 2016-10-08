package org.apache.http.impl.cookie;

import java.io.Reader;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.PublicSuffixList;

@Deprecated
@Immutable
public class PublicSuffixListParser
{
  private final PublicSuffixFilter filter;
  private final org.apache.http.conn.util.PublicSuffixListParser parser;
  
  PublicSuffixListParser(PublicSuffixFilter paramPublicSuffixFilter)
  {
    this.filter = paramPublicSuffixFilter;
    this.parser = new org.apache.http.conn.util.PublicSuffixListParser();
  }
  
  public void parse(Reader paramReader)
  {
    paramReader = this.parser.parse(paramReader);
    this.filter.setPublicSuffixes(paramReader.getRules());
    this.filter.setExceptions(paramReader.getExceptions());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\PublicSuffixListParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */