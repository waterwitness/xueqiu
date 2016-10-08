package org.apache.http.conn.ssl;

import java.io.InputStream;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.security.auth.x500.X500Principal;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.util.Args;

@Deprecated
public abstract class AbstractVerifier
  implements X509HostnameVerifier
{
  static final String[] BAD_COUNTRY_2LDS;
  private final Log log = LogFactory.getLog(getClass());
  
  static
  {
    String[] arrayOfString = new String[14];
    arrayOfString[0] = "ac";
    arrayOfString[1] = "co";
    arrayOfString[2] = "com";
    arrayOfString[3] = "ed";
    arrayOfString[4] = "edu";
    arrayOfString[5] = "go";
    arrayOfString[6] = "gouv";
    arrayOfString[7] = "gov";
    arrayOfString[8] = "info";
    arrayOfString[9] = "lg";
    arrayOfString[10] = "ne";
    arrayOfString[11] = "net";
    arrayOfString[12] = "or";
    arrayOfString[13] = "org";
    BAD_COUNTRY_2LDS = arrayOfString;
    Arrays.sort(arrayOfString);
  }
  
  public static boolean acceptableCountryWildcard(String paramString)
  {
    return validCountryWildcard(paramString.split("\\."));
  }
  
  public static int countDots(String paramString)
  {
    int i = 0;
    int k;
    for (int j = 0; i < paramString.length(); j = k)
    {
      k = j;
      if (paramString.charAt(i) == '.') {
        k = j + 1;
      }
      i += 1;
    }
    return j;
  }
  
  public static String[] getCNs(X509Certificate paramX509Certificate)
  {
    paramX509Certificate = paramX509Certificate.getSubjectX500Principal().toString();
    try
    {
      paramX509Certificate = DefaultHostnameVerifier.extractCN(paramX509Certificate);
      if (paramX509Certificate != null) {
        return new String[] { paramX509Certificate };
      }
      return null;
    }
    catch (SSLException paramX509Certificate) {}
    return null;
  }
  
  public static String[] getDNSSubjectAlts(X509Certificate paramX509Certificate)
  {
    paramX509Certificate = DefaultHostnameVerifier.extractSubjectAlts(paramX509Certificate, 2);
    if ((paramX509Certificate != null) && (!paramX509Certificate.isEmpty())) {
      return (String[])paramX509Certificate.toArray(new String[paramX509Certificate.size()]);
    }
    return null;
  }
  
  private static boolean matchIdentity(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString1 == null) {}
    label163:
    label169:
    label181:
    for (;;)
    {
      return false;
      paramString1 = paramString1.toLowerCase(Locale.ROOT);
      paramString2 = paramString2.toLowerCase(Locale.ROOT);
      Object localObject = paramString2.split("\\.");
      int i;
      boolean bool;
      if ((localObject.length >= 3) && (localObject[0].endsWith("*")) && ((!paramBoolean) || (validCountryWildcard((String[])localObject))))
      {
        i = 1;
        if (i == 0) {
          break;
        }
        String str1 = localObject[0];
        if (str1.length() <= 1) {
          break label169;
        }
        localObject = str1.substring(0, str1.length() - 1);
        str1 = paramString2.substring(str1.length());
        String str2 = paramString1.substring(((String)localObject).length());
        if ((!paramString1.startsWith((String)localObject)) || (!str2.endsWith(str1))) {
          break label163;
        }
        bool = true;
      }
      for (;;)
      {
        if ((!bool) || ((paramBoolean) && (countDots(paramString1) != countDots(paramString2)))) {
          break label181;
        }
        return true;
        i = 0;
        break;
        bool = false;
        continue;
        bool = paramString1.endsWith(paramString2.substring(1));
      }
    }
    return paramString1.equals(paramString2);
  }
  
  private static boolean validCountryWildcard(String[] paramArrayOfString)
  {
    if ((paramArrayOfString.length != 3) || (paramArrayOfString[2].length() != 2)) {}
    while (Arrays.binarySearch(BAD_COUNTRY_2LDS, paramArrayOfString[1]) < 0) {
      return true;
    }
    return false;
  }
  
  public final void verify(String paramString, X509Certificate paramX509Certificate)
  {
    boolean bool1 = InetAddressUtils.isIPv4Address(paramString);
    boolean bool2 = InetAddressUtils.isIPv6Address(paramString);
    int i;
    if ((bool1) || (bool2))
    {
      i = 7;
      localObject = DefaultHostnameVerifier.extractSubjectAlts(paramX509Certificate, i);
      paramX509Certificate = DefaultHostnameVerifier.extractCN(paramX509Certificate.getSubjectX500Principal().getName("RFC2253"));
      if (paramX509Certificate == null) {
        break label105;
      }
      paramX509Certificate = new String[] { paramX509Certificate };
      label59:
      if ((localObject == null) || (((List)localObject).isEmpty())) {
        break label110;
      }
    }
    label105:
    label110:
    for (Object localObject = (String[])((List)localObject).toArray(new String[((List)localObject).size()]);; localObject = null)
    {
      verify(paramString, paramX509Certificate, (String[])localObject);
      return;
      i = 2;
      break;
      paramX509Certificate = null;
      break label59;
    }
  }
  
  public final void verify(String paramString, SSLSocket paramSSLSocket)
  {
    Args.notNull(paramString, "Host");
    SSLSession localSSLSession2 = paramSSLSocket.getSession();
    SSLSession localSSLSession1 = localSSLSession2;
    if (localSSLSession2 == null)
    {
      paramSSLSocket.getInputStream().available();
      localSSLSession2 = paramSSLSocket.getSession();
      localSSLSession1 = localSSLSession2;
      if (localSSLSession2 == null)
      {
        paramSSLSocket.startHandshake();
        localSSLSession1 = paramSSLSocket.getSession();
      }
    }
    verify(paramString, (X509Certificate)localSSLSession1.getPeerCertificates()[0]);
  }
  
  public final void verify(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2, boolean paramBoolean)
  {
    Object localObject;
    if ((paramArrayOfString1 != null) && (paramArrayOfString1.length > 0))
    {
      paramArrayOfString1 = paramArrayOfString1[0];
      if ((paramArrayOfString2 == null) || (paramArrayOfString2.length <= 0)) {
        break label115;
      }
      localObject = Arrays.asList(paramArrayOfString2);
      label28:
      if (!InetAddressUtils.isIPv6Address(paramString)) {
        break label121;
      }
      paramArrayOfString2 = DefaultHostnameVerifier.normaliseAddress(paramString.toLowerCase(Locale.ROOT));
      label46:
      if (localObject == null) {
        break label161;
      }
      Iterator localIterator = ((List)localObject).iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        String str = (String)localIterator.next();
        paramArrayOfString1 = str;
        if (InetAddressUtils.isIPv6Address(str)) {
          paramArrayOfString1 = DefaultHostnameVerifier.normaliseAddress(str);
        }
      } while (!matchIdentity(paramArrayOfString2, paramArrayOfString1, paramBoolean));
    }
    for (;;)
    {
      return;
      paramArrayOfString1 = null;
      break;
      label115:
      localObject = null;
      break label28;
      label121:
      paramArrayOfString2 = paramString;
      break label46;
      throw new SSLException("Certificate for <" + paramString + "> doesn't match any of the subject alternative names: " + localObject);
      label161:
      if (paramArrayOfString1 == null) {
        break label229;
      }
      if (InetAddressUtils.isIPv6Address(paramArrayOfString1)) {}
      for (localObject = DefaultHostnameVerifier.normaliseAddress(paramArrayOfString1); !matchIdentity(paramArrayOfString2, (String)localObject, paramBoolean); localObject = paramArrayOfString1) {
        throw new SSLException("Certificate for <" + paramString + "> doesn't match common name of the certificate subject: " + paramArrayOfString1);
      }
    }
    label229:
    throw new SSLException("Certificate subject for <" + paramString + "> doesn't contain a common name and does not have alternative names");
  }
  
  public final boolean verify(String paramString, SSLSession paramSSLSession)
  {
    try
    {
      verify(paramString, (X509Certificate)paramSSLSession.getPeerCertificates()[0]);
      return true;
    }
    catch (SSLException paramString)
    {
      if (this.log.isDebugEnabled()) {
        this.log.debug(paramString.getMessage(), paramString);
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\AbstractVerifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */