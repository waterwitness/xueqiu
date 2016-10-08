package org.apache.http.conn.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Arrays;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Consts;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.util.Args;

@ThreadSafe
public final class PublicSuffixMatcherLoader
{
  private static volatile PublicSuffixMatcher DEFAULT_INSTANCE;
  
  public static PublicSuffixMatcher getDefault()
  {
    if (DEFAULT_INSTANCE == null) {}
    for (;;)
    {
      try
      {
        URL localURL;
        if (DEFAULT_INSTANCE == null)
        {
          localURL = PublicSuffixMatcherLoader.class.getResource("/mozilla/public-suffix-list.txt");
          if (localURL == null) {}
        }
        else
        {
          try
          {
            DEFAULT_INSTANCE = load(localURL);
            return DEFAULT_INSTANCE;
          }
          catch (IOException localIOException)
          {
            Log localLog = LogFactory.getLog(PublicSuffixMatcherLoader.class);
            if (!localLog.isWarnEnabled()) {
              continue;
            }
            localLog.warn("Failure loading public suffix list from default resource", localIOException);
            continue;
          }
        }
      }
      finally {}
      tmp83_80[0] = "com";
      DEFAULT_INSTANCE = new PublicSuffixMatcher(Arrays.asList(tmp83_80), null);
    }
  }
  
  public static PublicSuffixMatcher load(File paramFile)
  {
    Args.notNull(paramFile, "File");
    paramFile = new FileInputStream(paramFile);
    try
    {
      PublicSuffixMatcher localPublicSuffixMatcher = load(paramFile);
      return localPublicSuffixMatcher;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  private static PublicSuffixMatcher load(InputStream paramInputStream)
  {
    return new PublicSuffixMatcher(new PublicSuffixListParser().parseByType(new InputStreamReader(paramInputStream, Consts.UTF_8)));
  }
  
  public static PublicSuffixMatcher load(URL paramURL)
  {
    Args.notNull(paramURL, "URL");
    paramURL = paramURL.openStream();
    try
    {
      PublicSuffixMatcher localPublicSuffixMatcher = load(paramURL);
      return localPublicSuffixMatcher;
    }
    finally
    {
      paramURL.close();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\util\PublicSuffixMatcherLoader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */