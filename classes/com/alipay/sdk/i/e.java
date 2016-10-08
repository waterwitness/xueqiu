package com.alipay.sdk.i;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import java.util.Iterator;
import java.util.List;

public class e
{
  private Activity a;
  private IAlixPay b;
  private Object c = IAlixPay.class;
  private boolean d = false;
  private ServiceConnection e = new f(this);
  private IRemoteServiceCallback f = new g(this);
  
  public e(Activity paramActivity)
  {
    this.a = paramActivity;
  }
  
  /* Error */
  private String a(String paramString, Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 27	com/alipay/sdk/i/e:d	Z
    //   4: ifeq +6 -> 10
    //   7: ldc 51
    //   9: areturn
    //   10: aload_0
    //   11: iconst_1
    //   12: putfield 27	com/alipay/sdk/i/e:d	Z
    //   15: aload_0
    //   16: getfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   19: ifnonnull +20 -> 39
    //   22: aload_0
    //   23: getfield 41	com/alipay/sdk/i/e:a	Landroid/app/Activity;
    //   26: invokevirtual 57	android/app/Activity:getApplicationContext	()Landroid/content/Context;
    //   29: aload_2
    //   30: aload_0
    //   31: getfield 34	com/alipay/sdk/i/e:e	Landroid/content/ServiceConnection;
    //   34: iconst_1
    //   35: invokevirtual 63	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   38: pop
    //   39: aload_0
    //   40: getfield 25	com/alipay/sdk/i/e:c	Ljava/lang/Object;
    //   43: astore_2
    //   44: aload_2
    //   45: monitorenter
    //   46: aload_0
    //   47: getfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   50: ifnonnull +13 -> 63
    //   53: aload_0
    //   54: getfield 25	com/alipay/sdk/i/e:c	Ljava/lang/Object;
    //   57: ldc2_w 64
    //   60: invokevirtual 69	java/lang/Object:wait	(J)V
    //   63: aload_2
    //   64: monitorexit
    //   65: aload_0
    //   66: getfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   69: ifnonnull +57 -> 126
    //   72: aload_0
    //   73: getfield 41	com/alipay/sdk/i/e:a	Landroid/app/Activity;
    //   76: aload_0
    //   77: getfield 34	com/alipay/sdk/i/e:e	Landroid/content/ServiceConnection;
    //   80: invokevirtual 73	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   83: aload_0
    //   84: iconst_0
    //   85: putfield 27	com/alipay/sdk/i/e:d	Z
    //   88: ldc 75
    //   90: areturn
    //   91: astore_1
    //   92: aload_2
    //   93: monitorexit
    //   94: aload_1
    //   95: athrow
    //   96: astore_1
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_0
    //   100: getfield 41	com/alipay/sdk/i/e:a	Landroid/app/Activity;
    //   103: aload_0
    //   104: getfield 34	com/alipay/sdk/i/e:e	Landroid/content/ServiceConnection;
    //   107: invokevirtual 73	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   110: aload_0
    //   111: iconst_0
    //   112: putfield 27	com/alipay/sdk/i/e:d	Z
    //   115: aload_1
    //   116: areturn
    //   117: astore_1
    //   118: aload_0
    //   119: aconst_null
    //   120: putfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   123: goto -40 -> 83
    //   126: aload_0
    //   127: getfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   130: aload_0
    //   131: getfield 39	com/alipay/sdk/i/e:f	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   134: invokeinterface 79 2 0
    //   139: aload_0
    //   140: getfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   143: aload_1
    //   144: invokeinterface 83 2 0
    //   149: astore_1
    //   150: aload_0
    //   151: getfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   154: aload_0
    //   155: getfield 39	com/alipay/sdk/i/e:f	Lcom/alipay/android/app/IRemoteServiceCallback;
    //   158: invokeinterface 86 2 0
    //   163: aload_0
    //   164: aconst_null
    //   165: putfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   168: aload_0
    //   169: getfield 41	com/alipay/sdk/i/e:a	Landroid/app/Activity;
    //   172: aload_0
    //   173: getfield 34	com/alipay/sdk/i/e:e	Landroid/content/ServiceConnection;
    //   176: invokevirtual 73	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   179: aload_0
    //   180: iconst_0
    //   181: putfield 27	com/alipay/sdk/i/e:d	Z
    //   184: aload_1
    //   185: areturn
    //   186: astore_2
    //   187: aload_0
    //   188: aconst_null
    //   189: putfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   192: goto -13 -> 179
    //   195: astore_2
    //   196: aload_0
    //   197: aconst_null
    //   198: putfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   201: goto -91 -> 110
    //   204: astore_1
    //   205: aload_0
    //   206: getfield 41	com/alipay/sdk/i/e:a	Landroid/app/Activity;
    //   209: aload_0
    //   210: getfield 34	com/alipay/sdk/i/e:e	Landroid/content/ServiceConnection;
    //   213: invokevirtual 73	android/app/Activity:unbindService	(Landroid/content/ServiceConnection;)V
    //   216: aload_0
    //   217: iconst_0
    //   218: putfield 27	com/alipay/sdk/i/e:d	Z
    //   221: aload_1
    //   222: athrow
    //   223: astore_2
    //   224: aload_0
    //   225: aconst_null
    //   226: putfield 45	com/alipay/sdk/i/e:b	Lcom/alipay/android/app/IAlixPay;
    //   229: goto -13 -> 216
    //   232: astore_2
    //   233: goto -134 -> 99
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	236	0	this	e
    //   0	236	1	paramString	String
    //   0	236	2	paramIntent	Intent
    // Exception table:
    //   from	to	target	type
    //   46	63	91	finally
    //   63	65	91	finally
    //   39	46	96	java/lang/Exception
    //   65	72	96	java/lang/Exception
    //   92	96	96	java/lang/Exception
    //   126	150	96	java/lang/Exception
    //   72	83	117	java/lang/Exception
    //   168	179	186	java/lang/Exception
    //   99	110	195	java/lang/Exception
    //   39	46	204	finally
    //   65	72	204	finally
    //   92	96	204	finally
    //   126	150	204	finally
    //   150	168	204	finally
    //   205	216	223	java/lang/Exception
    //   150	168	232	java/lang/Exception
  }
  
  public final String a(String paramString)
  {
    Object localObject = this.a.getPackageManager().getInstalledPackages(64).iterator();
    PackageInfo localPackageInfo;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      localPackageInfo = (PackageInfo)((Iterator)localObject).next();
    } while (!localPackageInfo.packageName.equals("com.eg.android.AlipayGphone"));
    for (localObject = localPackageInfo.signatures[0].toByteArray();; localObject = null)
    {
      localObject = h.a((byte[])localObject);
      if ((localObject == null) || (TextUtils.equals((CharSequence)localObject, "b6cbad6cbd5ed0d209afc69ad3b7a617efaae9b3c47eabe0be42d924936fa78c8001b1fd74b079e5ff9690061dacfa4768e981a526b9ca77156ca36251cf2f906d105481374998a7e6e6e18f75ca98b8ed2eaf86ff402c874cca0a263053f22237858206867d210020daa38c48b20cc9dfd82b44a51aeb5db459b22794e2d649"))) {
        break;
      }
      return com.alipay.sdk.app.e.b();
    }
    localObject = new Intent();
    ((Intent)localObject).setClassName("com.eg.android.AlipayGphone", "com.alipay.android.app.MspService");
    ((Intent)localObject).setAction("com.eg.android.AlipayGphone.IAlixPay");
    return a(paramString, (Intent)localObject);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\i\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */