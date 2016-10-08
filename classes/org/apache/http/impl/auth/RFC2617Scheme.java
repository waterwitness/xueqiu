package org.apache.http.impl.auth;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.Consts;
import org.apache.http.HeaderElement;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.ChallengeState;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.HeaderValueParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.CharsetUtils;

@NotThreadSafe
public abstract class RFC2617Scheme
  extends AuthSchemeBase
  implements Serializable
{
  private static final long serialVersionUID = -2845454858205884623L;
  private transient Charset credentialsCharset;
  private final Map<String, String> params = new HashMap();
  
  public RFC2617Scheme()
  {
    this(Consts.ASCII);
  }
  
  public RFC2617Scheme(Charset paramCharset)
  {
    if (paramCharset != null) {}
    for (;;)
    {
      this.credentialsCharset = paramCharset;
      return;
      paramCharset = Consts.ASCII;
    }
  }
  
  @Deprecated
  public RFC2617Scheme(ChallengeState paramChallengeState)
  {
    super(paramChallengeState);
    this.credentialsCharset = Consts.ASCII;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    this.credentialsCharset = CharsetUtils.get(paramObjectInputStream.readUTF());
    if (this.credentialsCharset == null) {
      this.credentialsCharset = Consts.ASCII;
    }
    this.challengeState = ((ChallengeState)paramObjectInputStream.readObject());
  }
  
  private void readObjectNoData() {}
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeUTF(this.credentialsCharset.name());
    paramObjectOutputStream.writeObject(this.challengeState);
  }
  
  String getCredentialsCharset(HttpRequest paramHttpRequest)
  {
    String str = (String)paramHttpRequest.getParams().getParameter("http.auth.credential-charset");
    paramHttpRequest = str;
    if (str == null) {
      paramHttpRequest = getCredentialsCharset().name();
    }
    return paramHttpRequest;
  }
  
  public Charset getCredentialsCharset()
  {
    if (this.credentialsCharset != null) {
      return this.credentialsCharset;
    }
    return Consts.ASCII;
  }
  
  public String getParameter(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (String)this.params.get(paramString.toLowerCase(Locale.ROOT));
  }
  
  protected Map<String, String> getParameters()
  {
    return this.params;
  }
  
  public String getRealm()
  {
    return getParameter("realm");
  }
  
  protected void parseChallenge(CharArrayBuffer paramCharArrayBuffer, int paramInt1, int paramInt2)
  {
    paramCharArrayBuffer = BasicHeaderValueParser.INSTANCE.parseElements(paramCharArrayBuffer, new ParserCursor(paramInt1, paramCharArrayBuffer.length()));
    this.params.clear();
    paramInt2 = paramCharArrayBuffer.length;
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      Object localObject = paramCharArrayBuffer[paramInt1];
      this.params.put(((HeaderElement)localObject).getName().toLowerCase(Locale.ROOT), ((HeaderElement)localObject).getValue());
      paramInt1 += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\RFC2617Scheme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */