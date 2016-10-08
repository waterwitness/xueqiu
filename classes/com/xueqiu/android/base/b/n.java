package com.xueqiu.android.base.b;

import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import com.xueqiu.android.base.util.aa;

public final class n
  implements IUiListener
{
  protected n(m paramm) {}
  
  public final void onCancel() {}
  
  /* Error */
  public final void onComplete(org.json.JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/xueqiu/android/base/b/n:a	Lcom/xueqiu/android/base/b/m;
    //   4: aload_1
    //   5: ldc 25
    //   7: invokevirtual 31	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   10: putfield 37	com/xueqiu/android/base/b/m:c	Ljava/lang/String;
    //   13: aload_0
    //   14: getfield 12	com/xueqiu/android/base/b/n:a	Lcom/xueqiu/android/base/b/m;
    //   17: aload_1
    //   18: ldc 39
    //   20: invokevirtual 43	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   23: putfield 47	com/xueqiu/android/base/b/m:e	J
    //   26: aload_0
    //   27: getfield 12	com/xueqiu/android/base/b/n:a	Lcom/xueqiu/android/base/b/m;
    //   30: aload_1
    //   31: ldc 49
    //   33: invokevirtual 31	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   36: putfield 52	com/xueqiu/android/base/b/m:d	Ljava/lang/String;
    //   39: aload_0
    //   40: getfield 12	com/xueqiu/android/base/b/n:a	Lcom/xueqiu/android/base/b/m;
    //   43: getfield 56	com/xueqiu/android/base/b/m:g	Lcom/xueqiu/android/base/b/h;
    //   46: invokeinterface 60 1 0
    //   51: aload_0
    //   52: getfield 12	com/xueqiu/android/base/b/n:a	Lcom/xueqiu/android/base/b/m;
    //   55: getfield 63	com/xueqiu/android/base/b/m:a	Landroid/app/Activity;
    //   58: ifnull +20 -> 78
    //   61: aload_0
    //   62: getfield 12	com/xueqiu/android/base/b/n:a	Lcom/xueqiu/android/base/b/m;
    //   65: getfield 63	com/xueqiu/android/base/b/m:a	Landroid/app/Activity;
    //   68: aload_0
    //   69: getfield 12	com/xueqiu/android/base/b/n:a	Lcom/xueqiu/android/base/b/m;
    //   72: getfield 67	com/xueqiu/android/base/b/m:h	Lcom/xueqiu/android/base/b/o;
    //   75: invokevirtual 73	android/app/Activity:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   78: return
    //   79: astore_1
    //   80: aload_1
    //   81: invokestatic 78	com/xueqiu/android/base/util/aa:a	(Ljava/lang/Throwable;)V
    //   84: return
    //   85: astore_1
    //   86: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	n
    //   0	87	1	paramJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   0	51	79	org/json/JSONException
    //   51	78	79	org/json/JSONException
    //   51	78	85	java/lang/Exception
  }
  
  public final void onError(UiError paramUiError)
  {
    aa.a(paramUiError.errorDetail + "-" + paramUiError.errorMessage);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */