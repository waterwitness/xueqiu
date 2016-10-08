package org.apache.http.impl.auth;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.auth.Credentials;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.ietf.jgss.GSSException;
import org.ietf.jgss.Oid;

@Deprecated
public class NegotiateScheme
  extends GGSSchemeBase
{
  private static final String KERBEROS_OID = "1.2.840.113554.1.2.2";
  private static final String SPNEGO_OID = "1.3.6.1.5.5.2";
  private final Log log = LogFactory.getLog(getClass());
  private final SpnegoTokenGenerator spengoGenerator;
  
  public NegotiateScheme()
  {
    this(null, false);
  }
  
  public NegotiateScheme(SpnegoTokenGenerator paramSpnegoTokenGenerator)
  {
    this(paramSpnegoTokenGenerator, false);
  }
  
  public NegotiateScheme(SpnegoTokenGenerator paramSpnegoTokenGenerator, boolean paramBoolean)
  {
    super(paramBoolean);
    this.spengoGenerator = paramSpnegoTokenGenerator;
  }
  
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest)
  {
    return authenticate(paramCredentials, paramHttpRequest, null);
  }
  
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return super.authenticate(paramCredentials, paramHttpRequest, paramHttpContext);
  }
  
  protected byte[] generateToken(byte[] paramArrayOfByte, String paramString)
  {
    return super.generateToken(paramArrayOfByte, paramString);
  }
  
  protected byte[] generateToken(byte[] paramArrayOfByte, String paramString, Credentials paramCredentials)
  {
    Object localObject = new Oid("1.3.6.1.5.5.2");
    try
    {
      localObject = generateGSSToken(paramArrayOfByte, (Oid)localObject, paramString, paramCredentials);
      i = 0;
    }
    catch (GSSException localGSSException)
    {
      for (;;)
      {
        try
        {
          paramArrayOfByte = this.spengoGenerator.generateSpnegoDERObject(paramString);
          return paramArrayOfByte;
        }
        catch (IOException paramArrayOfByte)
        {
          int i;
          byte[] arrayOfByte;
          this.log.error(paramArrayOfByte.getMessage(), paramArrayOfByte);
        }
        localGSSException = localGSSException;
        if (localGSSException.getMajor() != 2) {
          continue;
        }
        this.log.debug("GSSException BAD_MECH, retry with Kerberos MECH");
        i = 1;
        arrayOfByte = paramArrayOfByte;
      }
      throw arrayOfByte;
    }
    paramArrayOfByte = (byte[])localObject;
    if (i != 0)
    {
      this.log.debug("Using Kerberos MECH 1.2.840.113554.1.2.2");
      paramString = generateGSSToken((byte[])localObject, new Oid("1.2.840.113554.1.2.2"), paramString, paramCredentials);
      paramArrayOfByte = paramString;
      if (paramString != null)
      {
        paramArrayOfByte = paramString;
        if (this.spengoGenerator == null) {}
      }
    }
    return paramString;
  }
  
  public String getParameter(String paramString)
  {
    Args.notNull(paramString, "Parameter name");
    return null;
  }
  
  public String getRealm()
  {
    return null;
  }
  
  public String getSchemeName()
  {
    return "Negotiate";
  }
  
  public boolean isConnectionBased()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NegotiateScheme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */