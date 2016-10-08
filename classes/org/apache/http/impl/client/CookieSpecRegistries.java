package org.apache.http.impl.client;

import org.apache.http.config.Lookup;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.conn.util.PublicSuffixMatcherLoader;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.impl.cookie.DefaultCookieSpecProvider;
import org.apache.http.impl.cookie.IgnoreSpecProvider;
import org.apache.http.impl.cookie.NetscapeDraftSpecProvider;
import org.apache.http.impl.cookie.RFC6265CookieSpecProvider;
import org.apache.http.impl.cookie.RFC6265CookieSpecProvider.CompatibilityLevel;

public final class CookieSpecRegistries
{
  public static Lookup<CookieSpecProvider> createDefault()
  {
    return createDefault(PublicSuffixMatcherLoader.getDefault());
  }
  
  public static Lookup<CookieSpecProvider> createDefault(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    return createDefaultBuilder(paramPublicSuffixMatcher).build();
  }
  
  public static RegistryBuilder<CookieSpecProvider> createDefaultBuilder()
  {
    return createDefaultBuilder(PublicSuffixMatcherLoader.getDefault());
  }
  
  public static RegistryBuilder<CookieSpecProvider> createDefaultBuilder(PublicSuffixMatcher paramPublicSuffixMatcher)
  {
    DefaultCookieSpecProvider localDefaultCookieSpecProvider = new DefaultCookieSpecProvider(paramPublicSuffixMatcher);
    RFC6265CookieSpecProvider localRFC6265CookieSpecProvider = new RFC6265CookieSpecProvider(RFC6265CookieSpecProvider.CompatibilityLevel.RELAXED, paramPublicSuffixMatcher);
    paramPublicSuffixMatcher = new RFC6265CookieSpecProvider(RFC6265CookieSpecProvider.CompatibilityLevel.STRICT, paramPublicSuffixMatcher);
    return RegistryBuilder.create().register("default", localDefaultCookieSpecProvider).register("best-match", localDefaultCookieSpecProvider).register("compatibility", localDefaultCookieSpecProvider).register("standard", localRFC6265CookieSpecProvider).register("standard-strict", paramPublicSuffixMatcher).register("netscape", new NetscapeDraftSpecProvider()).register("ignoreCookies", new IgnoreSpecProvider());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\CookieSpecRegistries.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */