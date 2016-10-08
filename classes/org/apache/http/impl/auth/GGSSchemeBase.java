package org.apache.http.impl.auth;

import java.net.InetAddress;
import java.net.UnknownHostException;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.KerberosCredentials;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.ietf.jgss.GSSContext;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.GSSManager;
import org.ietf.jgss.GSSName;
import org.ietf.jgss.Oid;

@NotThreadSafe
public abstract class GGSSchemeBase
  extends AuthSchemeBase
{
  private final Base64 base64codec = new Base64(0);
  private final Log log = LogFactory.getLog(getClass());
  private GGSSchemeBase.State state;
  private final boolean stripPort;
  private byte[] token;
  private final boolean useCanonicalHostname;
  
  GGSSchemeBase()
  {
    this(true, true);
  }
  
  GGSSchemeBase(boolean paramBoolean)
  {
    this(paramBoolean, true);
  }
  
  GGSSchemeBase(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.stripPort = paramBoolean1;
    this.useCanonicalHostname = paramBoolean2;
    this.state = GGSSchemeBase.State.UNINITIATED;
  }
  
  private String resolveCanonicalHostname(String paramString)
  {
    InetAddress localInetAddress = InetAddress.getByName(paramString);
    String str = localInetAddress.getCanonicalHostName();
    if (localInetAddress.getHostAddress().contentEquals(str)) {
      return paramString;
    }
    return str;
  }
  
  @Deprecated
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest)
  {
    return authenticate(paramCredentials, paramHttpRequest, null);
  }
  
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramHttpRequest, "HTTP request");
    Object localObject;
    switch (1.$SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State[this.state.ordinal()])
    {
    default: 
      throw new IllegalStateException("Illegal state: " + this.state);
    case 1: 
      throw new AuthenticationException(getSchemeName() + " authentication has not been initiated");
    case 2: 
      throw new AuthenticationException(getSchemeName() + " authentication has failed");
    case 3: 
      try
      {
        localObject = (HttpRoute)paramHttpContext.getAttribute("http.route");
        if (localObject != null) {
          break label202;
        }
        throw new AuthenticationException("Connection route is not available");
      }
      catch (GSSException paramCredentials)
      {
        this.state = GGSSchemeBase.State.FAILED;
        if (paramCredentials.getMajor() == 9) {
          break label189;
        }
      }
      if (paramCredentials.getMajor() == 8)
      {
        label189:
        throw new InvalidCredentialsException(paramCredentials.getMessage(), paramCredentials);
        label202:
        if (isProxy())
        {
          paramHttpRequest = ((HttpRoute)localObject).getProxyHost();
          paramHttpContext = paramHttpRequest;
          if (paramHttpRequest != null) {}
        }
        else
        {
          paramHttpContext = ((HttpRoute)localObject).getTargetHost();
        }
        localObject = paramHttpContext.getHostName();
        boolean bool = this.useCanonicalHostname;
        paramHttpRequest = (HttpRequest)localObject;
        if (!bool) {
          break;
        }
      }
      break;
    }
    try
    {
      paramHttpRequest = resolveCanonicalHostname((String)localObject);
      localObject = paramHttpRequest;
      if (!this.stripPort) {
        localObject = paramHttpRequest + ":" + paramHttpContext.getPort();
      }
      if (this.log.isDebugEnabled()) {
        this.log.debug("init " + (String)localObject);
      }
      this.token = generateToken(this.token, (String)localObject, paramCredentials);
      this.state = GGSSchemeBase.State.TOKEN_GENERATED;
      paramCredentials = new String(this.base64codec.encode(this.token));
      if (this.log.isDebugEnabled()) {
        this.log.debug("Sending response '" + paramCredentials + "' back to the auth server");
      }
      paramHttpRequest = new CharArrayBuffer(32);
      if (isProxy()) {
        paramHttpRequest.append("Proxy-Authorization");
      }
      for (;;)
      {
        paramHttpRequest.append(": Negotiate ");
        paramHttpRequest.append(paramCredentials);
        return new BufferedHeader(paramHttpRequest);
        if (paramCredentials.getMajor() == 13) {
          throw new InvalidCredentialsException(paramCredentials.getMessage(), paramCredentials);
        }
        if ((paramCredentials.getMajor() == 10) || (paramCredentials.getMajor() == 19) || (paramCredentials.getMajor() == 20)) {
          throw new AuthenticationException(paramCredentials.getMessage(), paramCredentials);
        }
        throw new AuthenticationException(paramCredentials.getMessage());
        paramHttpRequest.append("Authorization");
      }
    }
    catch (UnknownHostException paramHttpRequest)
    {
      for (;;)
      {
        paramHttpRequest = (HttpRequest)localObject;
      }
    }
  }
  
  protected byte[] generateGSSToken(byte[] paramArrayOfByte, Oid paramOid, String paramString)
  {
    return generateGSSToken(paramArrayOfByte, paramOid, paramString, null);
  }
  
  protected byte[] generateGSSToken(byte[] paramArrayOfByte, Oid paramOid, String paramString, Credentials paramCredentials)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte == null) {
      arrayOfByte = new byte[0];
    }
    GSSManager localGSSManager = getManager();
    paramString = localGSSManager.createName("HTTP@" + paramString, GSSName.NT_HOSTBASED_SERVICE);
    if ((paramCredentials instanceof KerberosCredentials)) {}
    for (paramArrayOfByte = ((KerberosCredentials)paramCredentials).getGSSCredential();; paramArrayOfByte = null)
    {
      paramArrayOfByte = localGSSManager.createContext(paramString.canonicalize(paramOid), paramOid, paramArrayOfByte, 0);
      paramArrayOfByte.requestMutualAuth(true);
      paramArrayOfByte.requestCredDeleg(true);
      return paramArrayOfByte.initSecContext(arrayOfByte, 0, arrayOfByte.length);
    }
  }
  
  @Deprecated
  protected byte[] generateToken(byte[] paramArrayOfByte, String paramString)
  {
    return null;
  }
  
  protected byte[] generateToken(byte[] paramArrayOfByte, String paramString, Credentials paramCredentials)
  {
    return generateToken(paramArrayOfByte, paramString);
  }
  
  protected GSSManager getManager()
  {
    return GSSManager.getInstance();
  }
  
  public boolean isComplete()
  {
    return (this.state == GGSSchemeBase.State.TOKEN_GENERATED) || (this.state == GGSSchemeBase.State.FAILED);
  }
  
  protected void parseChallenge(CharArrayBuffer paramCharArrayBuffer, int paramInt1, int paramInt2)
  {
    paramCharArrayBuffer = paramCharArrayBuffer.substringTrimmed(paramInt1, paramInt2);
    if (this.log.isDebugEnabled()) {
      this.log.debug("Received challenge '" + paramCharArrayBuffer + "' from the auth server");
    }
    if (this.state == GGSSchemeBase.State.UNINITIATED)
    {
      this.token = Base64.decodeBase64(paramCharArrayBuffer.getBytes());
      this.state = GGSSchemeBase.State.CHALLENGE_RECEIVED;
      return;
    }
    this.log.debug("Authentication already attempted");
    this.state = GGSSchemeBase.State.FAILED;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\GGSSchemeBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */