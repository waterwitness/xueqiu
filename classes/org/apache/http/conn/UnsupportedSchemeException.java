package org.apache.http.conn;

import java.io.IOException;
import org.apache.http.annotation.Immutable;

@Immutable
public class UnsupportedSchemeException
  extends IOException
{
  private static final long serialVersionUID = 3597127619218687636L;
  
  public UnsupportedSchemeException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\UnsupportedSchemeException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */