package org.apache.http.impl.auth;

import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.Principal;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.RequestLine;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;

@NotThreadSafe
public class DigestScheme
  extends RFC2617Scheme
{
  private static final char[] HEXADECIMAL = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static final int QOP_AUTH = 2;
  private static final int QOP_AUTH_INT = 1;
  private static final int QOP_MISSING = 0;
  private static final int QOP_UNKNOWN = -1;
  private static final long serialVersionUID = 3883908186234566916L;
  private String a1;
  private String a2;
  private String cnonce;
  private boolean complete;
  private String lastNonce;
  private long nounceCount;
  
  public DigestScheme()
  {
    this(Consts.ASCII);
  }
  
  public DigestScheme(Charset paramCharset)
  {
    super(paramCharset);
    this.complete = false;
  }
  
  @Deprecated
  public DigestScheme(ChallengeState paramChallengeState)
  {
    super(paramChallengeState);
  }
  
  public static String createCnonce()
  {
    SecureRandom localSecureRandom = new SecureRandom();
    byte[] arrayOfByte = new byte[8];
    localSecureRandom.nextBytes(arrayOfByte);
    return encode(arrayOfByte);
  }
  
  private Header createDigestHeader(Credentials paramCredentials, HttpRequest paramHttpRequest)
  {
    String str2 = getParameter("uri");
    String str3 = getParameter("realm");
    String str4 = getParameter("nonce");
    String str1 = getParameter("opaque");
    String str6 = getParameter("methodname");
    Object localObject2 = getParameter("algorithm");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "MD5";
    }
    HashSet localHashSet = new HashSet(8);
    int i = -1;
    localObject2 = getParameter("qop");
    if (localObject2 != null)
    {
      localObject3 = new StringTokenizer((String)localObject2, ",");
      while (((StringTokenizer)localObject3).hasMoreTokens()) {
        localHashSet.add(((StringTokenizer)localObject3).nextToken().trim().toLowerCase(Locale.ROOT));
      }
      if (((paramHttpRequest instanceof HttpEntityEnclosingRequest)) && (localHashSet.contains("auth-int"))) {
        i = 1;
      }
    }
    while (i == -1)
    {
      throw new AuthenticationException("None of the qop methods is supported: " + (String)localObject2);
      if (localHashSet.contains("auth")) {
        i = 2;
      }
      continue;
      i = 0;
    }
    Object localObject3 = getParameter("charset");
    localObject2 = localObject3;
    if (localObject3 == null) {
      localObject2 = "ISO-8859-1";
    }
    if (((String)localObject1).equalsIgnoreCase("MD5-sess")) {}
    for (localObject3 = "MD5";; localObject3 = localObject1)
    {
      for (;;)
      {
        MessageDigest localMessageDigest;
        String str5;
        StringBuilder localStringBuilder;
        String str7;
        int j;
        boolean bool;
        try
        {
          localMessageDigest = createMessageDigest((String)localObject3);
          str5 = paramCredentials.getUserPrincipal().getName();
          paramCredentials = paramCredentials.getPassword();
          if (str4.equals(this.lastNonce))
          {
            this.nounceCount += 1L;
            localStringBuilder = new StringBuilder(256);
            localObject3 = new Formatter(localStringBuilder, Locale.US);
            ((Formatter)localObject3).format("%08x", new Object[] { Long.valueOf(this.nounceCount) });
            ((Formatter)localObject3).close();
            localObject3 = localStringBuilder.toString();
            if (this.cnonce == null) {
              this.cnonce = createCnonce();
            }
            this.a1 = null;
            this.a2 = null;
            if (!((String)localObject1).equalsIgnoreCase("MD5-sess")) {
              break label1017;
            }
            localStringBuilder.setLength(0);
            localStringBuilder.append(str5).append(':').append(str3).append(':').append(paramCredentials);
            paramCredentials = encode(localMessageDigest.digest(EncodingUtils.getBytes(localStringBuilder.toString(), (String)localObject2)));
            localStringBuilder.setLength(0);
            localStringBuilder.append(paramCredentials).append(':').append(str4).append(':').append(this.cnonce);
            this.a1 = localStringBuilder.toString();
            str7 = encode(localMessageDigest.digest(EncodingUtils.getBytes(this.a1, (String)localObject2)));
            if (i != 2) {
              break label1062;
            }
            this.a2 = (str6 + ':' + str2);
            paramHttpRequest = encode(localMessageDigest.digest(EncodingUtils.getBytes(this.a2, (String)localObject2)));
            if (i != 0) {
              break label1275;
            }
            localStringBuilder.setLength(0);
            localStringBuilder.append(str7).append(':').append(str4).append(':').append(paramHttpRequest);
            paramCredentials = localStringBuilder.toString();
            paramCredentials = encode(localMessageDigest.digest(EncodingUtils.getAsciiBytes(paramCredentials)));
            paramHttpRequest = new CharArrayBuffer(128);
            if (!isProxy()) {
              break label1367;
            }
            paramHttpRequest.append("Proxy-Authorization");
            paramHttpRequest.append(": Digest ");
            localObject2 = new ArrayList(20);
            ((List)localObject2).add(new BasicNameValuePair("username", str5));
            ((List)localObject2).add(new BasicNameValuePair("realm", str3));
            ((List)localObject2).add(new BasicNameValuePair("nonce", str4));
            ((List)localObject2).add(new BasicNameValuePair("uri", str2));
            ((List)localObject2).add(new BasicNameValuePair("response", paramCredentials));
            if (i != 0)
            {
              if (i != 1) {
                break label1377;
              }
              paramCredentials = "auth-int";
              ((List)localObject2).add(new BasicNameValuePair("qop", paramCredentials));
              ((List)localObject2).add(new BasicNameValuePair("nc", (String)localObject3));
              ((List)localObject2).add(new BasicNameValuePair("cnonce", this.cnonce));
            }
            ((List)localObject2).add(new BasicNameValuePair("algorithm", (String)localObject1));
            if (str1 != null) {
              ((List)localObject2).add(new BasicNameValuePair("opaque", str1));
            }
            i = 0;
            if (i >= ((List)localObject2).size()) {
              break;
            }
            paramCredentials = (BasicNameValuePair)((List)localObject2).get(i);
            if (i > 0) {
              paramHttpRequest.append(", ");
            }
            localObject1 = paramCredentials.getName();
            if ((!"nc".equals(localObject1)) && (!"qop".equals(localObject1)) && (!"algorithm".equals(localObject1))) {
              break label1383;
            }
            j = 1;
            localObject1 = BasicHeaderValueFormatter.INSTANCE;
            if (j != 0) {
              break label1389;
            }
            bool = true;
            ((BasicHeaderValueFormatter)localObject1).formatNameValuePair(paramHttpRequest, paramCredentials, bool);
            i += 1;
            continue;
          }
          this.nounceCount = 1L;
        }
        catch (UnsupportedDigestAlgorithmException paramCredentials)
        {
          throw new AuthenticationException("Unsuppported digest algorithm: " + (String)localObject3);
        }
        this.cnonce = null;
        this.lastNonce = str4;
        continue;
        label1017:
        localStringBuilder.setLength(0);
        localStringBuilder.append(str5).append(':').append(str3).append(':').append(paramCredentials);
        this.a1 = localStringBuilder.toString();
        continue;
        label1062:
        if (i == 1)
        {
          paramCredentials = null;
          if ((paramHttpRequest instanceof HttpEntityEnclosingRequest)) {
            paramCredentials = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
          }
          if ((paramCredentials != null) && (!paramCredentials.isRepeatable()))
          {
            if (localHashSet.contains("auth"))
            {
              i = 2;
              this.a2 = (str6 + ':' + str2);
            }
            else
            {
              throw new AuthenticationException("Qop auth-int cannot be used with a non-repeatable entity");
            }
          }
          else
          {
            paramHttpRequest = new HttpEntityDigester(localMessageDigest);
            if (paramCredentials != null) {}
            try
            {
              paramCredentials.writeTo(paramHttpRequest);
              paramHttpRequest.close();
              this.a2 = (str6 + ':' + str2 + ':' + encode(paramHttpRequest.getDigest()));
            }
            catch (IOException paramCredentials)
            {
              throw new AuthenticationException("I/O error reading entity content", paramCredentials);
            }
          }
        }
        else
        {
          this.a2 = (str6 + ':' + str2);
          continue;
          label1275:
          localStringBuilder.setLength(0);
          localObject2 = localStringBuilder.append(str7).append(':').append(str4).append(':').append((String)localObject3).append(':').append(this.cnonce).append(':');
          if (i == 1) {}
          for (paramCredentials = "auth-int";; paramCredentials = "auth")
          {
            ((StringBuilder)localObject2).append(paramCredentials).append(':').append(paramHttpRequest);
            paramCredentials = localStringBuilder.toString();
            break;
          }
          label1367:
          paramHttpRequest.append("Authorization");
          continue;
          label1377:
          paramCredentials = "auth";
          continue;
          label1383:
          j = 0;
          continue;
          label1389:
          bool = false;
        }
      }
      return new BufferedHeader(paramHttpRequest);
    }
  }
  
  private static MessageDigest createMessageDigest(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      return localMessageDigest;
    }
    catch (Exception localException)
    {
      throw new UnsupportedDigestAlgorithmException("Unsupported algorithm in HTTP Digest authentication: " + paramString);
    }
  }
  
  static String encode(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    char[] arrayOfChar = new char[j * 2];
    int i = 0;
    while (i < j)
    {
      int k = paramArrayOfByte[i];
      int m = paramArrayOfByte[i];
      arrayOfChar[(i * 2)] = HEXADECIMAL[((m & 0xF0) >> 4)];
      arrayOfChar[(i * 2 + 1)] = HEXADECIMAL[(k & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  @Deprecated
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest)
  {
    return authenticate(paramCredentials, paramHttpRequest, new BasicHttpContext());
  }
  
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    Args.notNull(paramCredentials, "Credentials");
    Args.notNull(paramHttpRequest, "HTTP request");
    if (getParameter("realm") == null) {
      throw new AuthenticationException("missing realm in challenge");
    }
    if (getParameter("nonce") == null) {
      throw new AuthenticationException("missing nonce in challenge");
    }
    getParameters().put("methodname", paramHttpRequest.getRequestLine().getMethod());
    getParameters().put("uri", paramHttpRequest.getRequestLine().getUri());
    if (getParameter("charset") == null) {
      getParameters().put("charset", getCredentialsCharset(paramHttpRequest));
    }
    return createDigestHeader(paramCredentials, paramHttpRequest);
  }
  
  String getA1()
  {
    return this.a1;
  }
  
  String getA2()
  {
    return this.a2;
  }
  
  String getCnonce()
  {
    return this.cnonce;
  }
  
  public String getSchemeName()
  {
    return "digest";
  }
  
  public boolean isComplete()
  {
    if ("true".equalsIgnoreCase(getParameter("stale"))) {
      return false;
    }
    return this.complete;
  }
  
  public boolean isConnectionBased()
  {
    return false;
  }
  
  public void overrideParamter(String paramString1, String paramString2)
  {
    getParameters().put(paramString1, paramString2);
  }
  
  public void processChallenge(Header paramHeader)
  {
    super.processChallenge(paramHeader);
    this.complete = true;
    if (getParameters().isEmpty()) {
      throw new MalformedChallengeException("Authentication challenge is empty");
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DIGEST [complete=").append(this.complete).append(", nonce=").append(this.lastNonce).append(", nc=").append(this.nounceCount).append("]");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\DigestScheme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */