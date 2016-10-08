package com.xueqiu.android.base.b;

import android.content.Context;
import android.content.res.AssetManager;
import com.xueqiu.android.base.util.v;
import java.security.KeyStore;
import javax.net.ssl.SSLSocketFactory;

public final class af
{
  private static final String[] a = { "TLSv1" };
  
  public static SSLSocketFactory a(Context paramContext)
  {
    try
    {
      v.e("tt", "tt");
      KeyStore localKeyStore = KeyStore.getInstance("BKS");
      localKeyStore.load(paramContext.getAssets().open("sslkeystore.bks"), paramContext.getString(2131166108).toCharArray());
      paramContext = new ah(new KeyStore[] { localKeyStore });
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new RuntimeException(paramContext);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */