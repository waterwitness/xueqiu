package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.auth.NTCredentials;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public class NTLMScheme
  extends AuthSchemeBase
{
  private String challenge;
  private final NTLMEngine engine;
  private NTLMScheme.State state;
  
  public NTLMScheme()
  {
    this(new NTLMEngineImpl());
  }
  
  public NTLMScheme(NTLMEngine paramNTLMEngine)
  {
    Args.notNull(paramNTLMEngine, "NTLM engine");
    this.engine = paramNTLMEngine;
    this.state = NTLMScheme.State.UNINITIATED;
    this.challenge = null;
  }
  
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest)
  {
    try
    {
      paramHttpRequest = (NTCredentials)paramCredentials;
      if (this.state == NTLMScheme.State.FAILED) {
        throw new AuthenticationException("NTLM authentication failed");
      }
    }
    catch (ClassCastException paramHttpRequest)
    {
      throw new InvalidCredentialsException("Credentials cannot be used for NTLM authentication: " + paramCredentials.getClass().getName());
    }
    if (this.state == NTLMScheme.State.CHALLENGE_RECEIVED)
    {
      paramCredentials = this.engine.generateType1Msg(paramHttpRequest.getDomain(), paramHttpRequest.getWorkstation());
      this.state = NTLMScheme.State.MSG_TYPE1_GENERATED;
      paramHttpRequest = new CharArrayBuffer(32);
      if (!isProxy()) {
        break label211;
      }
      paramHttpRequest.append("Proxy-Authorization");
    }
    for (;;)
    {
      paramHttpRequest.append(": NTLM ");
      paramHttpRequest.append(paramCredentials);
      return new BufferedHeader(paramHttpRequest);
      if (this.state == NTLMScheme.State.MSG_TYPE2_RECEVIED)
      {
        paramCredentials = this.engine.generateType3Msg(paramHttpRequest.getUserName(), paramHttpRequest.getPassword(), paramHttpRequest.getDomain(), paramHttpRequest.getWorkstation(), this.challenge);
        this.state = NTLMScheme.State.MSG_TYPE3_GENERATED;
        break;
      }
      throw new AuthenticationException("Unexpected state: " + this.state);
      label211:
      paramHttpRequest.append("Authorization");
    }
  }
  
  public String getParameter(String paramString)
  {
    return null;
  }
  
  public String getRealm()
  {
    return null;
  }
  
  public String getSchemeName()
  {
    return "ntlm";
  }
  
  public boolean isComplete()
  {
    return (this.state == NTLMScheme.State.MSG_TYPE3_GENERATED) || (this.state == NTLMScheme.State.FAILED);
  }
  
  public boolean isConnectionBased()
  {
    return true;
  }
  
  protected void parseChallenge(CharArrayBuffer paramCharArrayBuffer, int paramInt1, int paramInt2)
  {
    this.challenge = paramCharArrayBuffer.substringTrimmed(paramInt1, paramInt2);
    if (this.challenge.isEmpty()) {
      if (this.state == NTLMScheme.State.UNINITIATED) {
        this.state = NTLMScheme.State.CHALLENGE_RECEIVED;
      }
    }
    do
    {
      return;
      this.state = NTLMScheme.State.FAILED;
      return;
      if (this.state.compareTo(NTLMScheme.State.MSG_TYPE1_GENERATED) < 0)
      {
        this.state = NTLMScheme.State.FAILED;
        throw new MalformedChallengeException("Out of sequence NTLM response message");
      }
    } while (this.state != NTLMScheme.State.MSG_TYPE1_GENERATED);
    this.state = NTLMScheme.State.MSG_TYPE2_RECEVIED;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMScheme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */