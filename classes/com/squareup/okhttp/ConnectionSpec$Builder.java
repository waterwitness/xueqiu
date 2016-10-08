package com.squareup.okhttp;

public final class ConnectionSpec$Builder
{
  private String[] cipherSuites;
  private boolean supportsTlsExtensions;
  private boolean tls;
  private String[] tlsVersions;
  
  public ConnectionSpec$Builder(ConnectionSpec paramConnectionSpec)
  {
    this.tls = paramConnectionSpec.tls;
    this.cipherSuites = ConnectionSpec.access$400(paramConnectionSpec);
    this.tlsVersions = ConnectionSpec.access$500(paramConnectionSpec);
    this.supportsTlsExtensions = paramConnectionSpec.supportsTlsExtensions;
  }
  
  ConnectionSpec$Builder(boolean paramBoolean)
  {
    this.tls = paramBoolean;
  }
  
  public final ConnectionSpec build()
  {
    return new ConnectionSpec(this, null);
  }
  
  public final Builder cipherSuites(CipherSuite... paramVarArgs)
  {
    if (!this.tls) {
      throw new IllegalStateException("no cipher suites for cleartext connections");
    }
    String[] arrayOfString = new String[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      arrayOfString[i] = paramVarArgs[i].javaName;
      i += 1;
    }
    this.cipherSuites = arrayOfString;
    return this;
  }
  
  public final Builder cipherSuites(String... paramVarArgs)
  {
    if (!this.tls) {
      throw new IllegalStateException("no cipher suites for cleartext connections");
    }
    if (paramVarArgs == null)
    {
      this.cipherSuites = null;
      return this;
    }
    this.cipherSuites = ((String[])paramVarArgs.clone());
    return this;
  }
  
  public final Builder supportsTlsExtensions(boolean paramBoolean)
  {
    if (!this.tls) {
      throw new IllegalStateException("no TLS extensions for cleartext connections");
    }
    this.supportsTlsExtensions = paramBoolean;
    return this;
  }
  
  public final Builder tlsVersions(TlsVersion... paramVarArgs)
  {
    if (!this.tls) {
      throw new IllegalStateException("no TLS versions for cleartext connections");
    }
    String[] arrayOfString = new String[paramVarArgs.length];
    int i = 0;
    while (i < paramVarArgs.length)
    {
      arrayOfString[i] = paramVarArgs[i].javaName;
      i += 1;
    }
    this.tlsVersions = arrayOfString;
    return this;
  }
  
  public final Builder tlsVersions(String... paramVarArgs)
  {
    if (!this.tls) {
      throw new IllegalStateException("no TLS versions for cleartext connections");
    }
    if (paramVarArgs == null)
    {
      this.tlsVersions = null;
      return this;
    }
    this.tlsVersions = ((String[])paramVarArgs.clone());
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\ConnectionSpec$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */