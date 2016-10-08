package com.tencent.open;

import android.content.Context;
import android.os.SystemClock;
import com.tencent.open.cgireport.ReportManager;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

final class c
  implements IUiListener
{
  String a;
  String b;
  private WeakReference c;
  private String d;
  private IUiListener e;
  
  public c(Context paramContext, String paramString1, String paramString2, String paramString3, IUiListener paramIUiListener)
  {
    this.c = new WeakReference(paramContext);
    this.d = paramString1;
    this.a = paramString2;
    this.b = paramString3;
    this.e = paramIUiListener;
  }
  
  public final void onCancel()
  {
    if (this.e != null)
    {
      this.e.onCancel();
      this.e = null;
    }
  }
  
  public final void onComplete(JSONObject paramJSONObject)
  {
    ReportManager.a().a((Context)this.c.get(), this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, paramJSONObject.optInt("ret", -6), this.b, this.a, "1000067");
    if (this.e != null)
    {
      this.e.onComplete(paramJSONObject);
      this.e = null;
    }
  }
  
  public final void onError(UiError paramUiError)
  {
    if (paramUiError.errorMessage != null) {}
    for (String str = paramUiError.errorMessage + this.a;; str = this.a)
    {
      ReportManager.a().a((Context)this.c.get(), this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, paramUiError.errorCode, this.b, str, "1000067");
      if (this.e != null)
      {
        this.e.onError(paramUiError);
        this.e = null;
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */