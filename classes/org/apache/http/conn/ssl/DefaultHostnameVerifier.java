package org.apache.http.conn.ssl;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.security.auth.x500.X500Principal;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.DomainType;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.conn.util.PublicSuffixMatcher;

@Immutable
public final class DefaultHostnameVerifier
  implements HostnameVerifier
{
  static final int DNS_NAME_TYPE = 2;
  static final int IP_ADDRESS_TYPE = 7;
  private final Log log = LogFactory.getLog(getClass());
  private final PublicSuffixMatcher publicSuffixMatcher;
  
  public DefaultHostnameVerifier()
  {
    this(null);
  }
  
  public DefaultHostnameVerifier(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    this.publicSuffixMatcher = paramPublicSuffixMatcher;
  }
  
  /* Error */
  static String extractCN(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 48	javax/naming/ldap/LdapName
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 51	javax/naming/ldap/LdapName:<init>	(Ljava/lang/String;)V
    //   14: invokevirtual 55	javax/naming/ldap/LdapName:getRdns	()Ljava/util/List;
    //   17: astore_1
    //   18: aload_1
    //   19: invokeinterface 61 1 0
    //   24: iconst_1
    //   25: isub
    //   26: istore_3
    //   27: iload_3
    //   28: iflt +54 -> 82
    //   31: aload_1
    //   32: iload_3
    //   33: invokeinterface 65 2 0
    //   38: checkcast 67	javax/naming/ldap/Rdn
    //   41: invokevirtual 71	javax/naming/ldap/Rdn:toAttributes	()Ljavax/naming/directory/Attributes;
    //   44: ldc 73
    //   46: invokeinterface 78 2 0
    //   51: astore_2
    //   52: aload_2
    //   53: ifnull +22 -> 75
    //   56: aload_2
    //   57: invokeinterface 83 1 0
    //   62: astore_2
    //   63: aload_2
    //   64: ifnull +11 -> 75
    //   67: aload_2
    //   68: invokevirtual 87	java/lang/Object:toString	()Ljava/lang/String;
    //   71: astore_2
    //   72: aload_2
    //   73: areturn
    //   74: astore_2
    //   75: iload_3
    //   76: iconst_1
    //   77: isub
    //   78: istore_3
    //   79: goto -52 -> 27
    //   82: aconst_null
    //   83: areturn
    //   84: astore_1
    //   85: new 89	javax/net/ssl/SSLException
    //   88: dup
    //   89: new 91	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   96: aload_0
    //   97: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc 98
    //   102: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 100	javax/net/ssl/SSLException:<init>	(Ljava/lang/String;)V
    //   111: athrow
    //   112: astore_2
    //   113: goto -38 -> 75
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	paramString	String
    //   17	15	1	localList	List
    //   84	1	1	localInvalidNameException	javax.naming.InvalidNameException
    //   51	22	2	localObject	Object
    //   74	1	2	localNamingException	javax.naming.NamingException
    //   112	1	2	localNoSuchElementException	java.util.NoSuchElementException
    //   26	53	3	i	int
    // Exception table:
    //   from	to	target	type
    //   56	63	74	javax/naming/NamingException
    //   67	72	74	javax/naming/NamingException
    //   6	27	84	javax/naming/InvalidNameException
    //   31	52	84	javax/naming/InvalidNameException
    //   56	63	84	javax/naming/InvalidNameException
    //   67	72	84	javax/naming/InvalidNameException
    //   56	63	112	java/util/NoSuchElementException
    //   67	72	112	java/util/NoSuchElementException
  }
  
  static List<String> extractSubjectAlts(X509Certificate paramX509Certificate, int paramInt)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    label105:
    label108:
    for (;;)
    {
      try
      {
        paramX509Certificate = paramX509Certificate.getSubjectAlternativeNames();
        if (paramX509Certificate != null)
        {
          Iterator localIterator = paramX509Certificate.iterator();
          paramX509Certificate = (X509Certificate)localObject2;
          localObject1 = paramX509Certificate;
          if (localIterator.hasNext())
          {
            localObject1 = (List)localIterator.next();
            if (((Integer)((List)localObject1).get(0)).intValue() != paramInt) {
              break label108;
            }
            localObject1 = (String)((List)localObject1).get(1);
            if (paramX509Certificate != null) {
              break label105;
            }
            paramX509Certificate = new ArrayList();
            paramX509Certificate.add(localObject1);
            continue;
          }
        }
      }
      catch (CertificateParsingException paramX509Certificate)
      {
        paramX509Certificate = null;
        continue;
      }
      return (List<String>)localObject1;
    }
  }
  
  static void matchCN(String paramString1, String paramString2, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    if (!matchIdentityStrict(paramString1, paramString2, paramPublicSuffixMatcher)) {
      throw new SSLException("Certificate for <" + paramString1 + "> doesn't match common name of the certificate subject: " + paramString2);
    }
  }
  
  static void matchDNSName(String paramString, List<String> paramList, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    String str = paramString.toLowerCase(Locale.ROOT);
    int i = 0;
    while (i < paramList.size())
    {
      if (matchIdentityStrict(str, ((String)paramList.get(i)).toLowerCase(Locale.ROOT), paramPublicSuffixMatcher)) {
        return;
      }
      i += 1;
    }
    throw new SSLException("Certificate for <" + paramString + "> doesn't match any of the subject alternative names: " + paramList);
  }
  
  static boolean matchDomainRoot(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    while ((!paramString1.endsWith(paramString2)) || ((paramString1.length() != paramString2.length()) && (paramString1.charAt(paramString1.length() - paramString2.length() - 1) != '.'))) {
      return false;
    }
    return true;
  }
  
  static void matchIPAddress(String paramString, List<String> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      if (paramString.equals((String)paramList.get(i))) {
        return;
      }
      i += 1;
    }
    throw new SSLException("Certificate for <" + paramString + "> doesn't match any of the subject alternative names: " + paramList);
  }
  
  static void matchIPv6Address(String paramString, List<String> paramList)
  {
    String str = normaliseAddress(paramString);
    int i = 0;
    while (i < paramList.size())
    {
      if (str.equals(normaliseAddress((String)paramList.get(i)))) {
        return;
      }
      i += 1;
    }
    throw new SSLException("Certificate for <" + paramString + "> doesn't match any of the subject alternative names: " + paramList);
  }
  
  static boolean matchIdentity(String paramString1, String paramString2)
  {
    return matchIdentity(paramString1, paramString2, null, false);
  }
  
  static boolean matchIdentity(String paramString1, String paramString2, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    return matchIdentity(paramString1, paramString2, paramPublicSuffixMatcher, false);
  }
  
  private static boolean matchIdentity(String paramString1, String paramString2, PublicSuffixMatcher paramPublicSuffixMatcher, boolean paramBoolean)
  {
    if ((paramPublicSuffixMatcher != null) && (paramString1.contains(".")) && (!matchDomainRoot(paramString1, paramPublicSuffixMatcher.getDomainRoot(paramString2, DomainType.ICANN)))) {}
    do
    {
      return false;
      int i = paramString2.indexOf('*');
      if (i == -1) {
        break;
      }
      paramPublicSuffixMatcher = paramString2.substring(0, i);
      paramString2 = paramString2.substring(i + 1);
    } while (((!paramPublicSuffixMatcher.isEmpty()) && (!paramString1.startsWith(paramPublicSuffixMatcher))) || ((!paramString2.isEmpty()) && (!paramString1.endsWith(paramString2))) || ((paramBoolean) && (paramString1.substring(paramPublicSuffixMatcher.length(), paramString1.length() - paramString2.length()).contains("."))));
    return true;
    return paramString1.equalsIgnoreCase(paramString2);
  }
  
  static boolean matchIdentityStrict(String paramString1, String paramString2)
  {
    return matchIdentity(paramString1, paramString2, null, true);
  }
  
  static boolean matchIdentityStrict(String paramString1, String paramString2, PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    return matchIdentity(paramString1, paramString2, paramPublicSuffixMatcher, true);
  }
  
  static String normaliseAddress(String paramString)
  {
    if (paramString == null) {
      return paramString;
    }
    try
    {
      String str = InetAddress.getByName(paramString).getHostAddress();
      return str;
    }
    catch (UnknownHostException localUnknownHostException) {}
    return paramString;
  }
  
  public final void verify(String paramString, X509Certificate paramX509Certificate)
  {
    boolean bool1 = InetAddressUtils.isIPv4Address(paramString);
    boolean bool2 = InetAddressUtils.isIPv6Address(paramString);
    if ((bool1) || (bool2)) {}
    List localList;
    for (int i = 7;; i = 2)
    {
      localList = extractSubjectAlts(paramX509Certificate, i);
      if ((localList == null) || (localList.isEmpty())) {
        break label84;
      }
      if (!bool1) {
        break;
      }
      matchIPAddress(paramString, localList);
      return;
    }
    if (bool2)
    {
      matchIPv6Address(paramString, localList);
      return;
    }
    matchDNSName(paramString, localList, this.publicSuffixMatcher);
    return;
    label84:
    paramX509Certificate = extractCN(paramX509Certificate.getSubjectX500Principal().getName("RFC2253"));
    if (paramX509Certificate == null) {
      throw new SSLException("Certificate subject for <" + paramString + "> doesn't contain a common name and does not have alternative names");
    }
    matchCN(paramString, paramX509Certificate, this.publicSuffixMatcher);
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\DefaultHostnameVerifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */