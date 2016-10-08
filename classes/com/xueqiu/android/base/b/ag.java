package com.xueqiu.android.base.b;

import java.security.KeyStore;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class ag
  implements X509TrustManager
{
  protected ArrayList<X509TrustManager> a = new ArrayList();
  
  protected ag(KeyStore... paramVarArgs)
  {
    Object localObject1 = new ArrayList();
    Object localObject2;
    int j;
    int i;
    try
    {
      localObject2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
      ((TrustManagerFactory)localObject2).init(null);
      ((ArrayList)localObject1).add(localObject2);
      j = paramVarArgs.length;
      i = 0;
      while (i < j)
      {
        localObject2 = paramVarArgs[i];
        TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        localTrustManagerFactory.init((KeyStore)localObject2);
        ((ArrayList)localObject1).add(localTrustManagerFactory);
        i += 1;
      }
      paramVarArgs = ((ArrayList)localObject1).iterator();
    }
    catch (Exception paramVarArgs)
    {
      throw new RuntimeException(paramVarArgs);
    }
    while (paramVarArgs.hasNext())
    {
      localObject1 = ((TrustManagerFactory)paramVarArgs.next()).getTrustManagers();
      j = localObject1.length;
      i = 0;
      while (i < j)
      {
        localObject2 = localObject1[i];
        if ((localObject2 instanceof X509TrustManager)) {
          this.a.add((X509TrustManager)localObject2);
        }
        i += 1;
      }
    }
    if (this.a.size() == 0) {
      throw new RuntimeException("Couldn't find any X509TrustManagers");
    }
  }
  
  public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString) {}
  
  public final void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    int j;
    int i;
    label22:
    Object localObject1;
    if (paramArrayOfX509Certificate.length > 1)
    {
      j = 0;
      if (j < paramArrayOfX509Certificate.length)
      {
        i = j + 1;
        if (i >= paramArrayOfX509Certificate.length) {
          break label209;
        }
        if (paramArrayOfX509Certificate[j].getIssuerDN().equals(paramArrayOfX509Certificate[i].getSubjectDN()))
        {
          if (i == j + 1) {
            break label203;
          }
          localObject1 = paramArrayOfX509Certificate[i];
          paramArrayOfX509Certificate[i] = paramArrayOfX509Certificate[(j + 1)];
          paramArrayOfX509Certificate[(j + 1)] = localObject1;
          i = 1;
        }
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        j += 1;
        break;
        i += 1;
        break label22;
      }
      localObject1 = paramArrayOfX509Certificate[(j + 1 - 1)];
      Object localObject2 = new Date();
      if (((X509Certificate)localObject1).getSubjectDN().equals(((X509Certificate)localObject1).getIssuerDN())) {
        ((Date)localObject2).after(((X509Certificate)localObject1).getNotAfter());
      }
      localObject1 = this.a.iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext()) {
          localObject2 = (X509TrustManager)((Iterator)localObject1).next();
        }
        try
        {
          ((X509TrustManager)localObject2).checkServerTrusted(paramArrayOfX509Certificate, paramString);
          return;
        }
        catch (CertificateException localCertificateException) {}
        throw new CertificateException();
      }
      label203:
      i = 1;
      continue;
      label209:
      i = 0;
    }
  }
  
  public final X509Certificate[] getAcceptedIssuers()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      localArrayList.addAll(Arrays.asList(((X509TrustManager)localIterator.next()).getAcceptedIssuers()));
    }
    return (X509Certificate[])localArrayList.toArray(new X509Certificate[localArrayList.size()]);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */