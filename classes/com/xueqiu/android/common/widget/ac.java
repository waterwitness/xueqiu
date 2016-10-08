package com.xueqiu.android.common.widget;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.support.v4.a.h;
import android.support.v4.a.i;

public final class ac
  extends h
{
  public static ac u()
  {
    ac localac = new ac();
    Bundle localBundle = new Bundle();
    localBundle.putInt("title", 0);
    localBundle.putInt("message", 2131165710);
    localac.e(localBundle);
    return localac;
  }
  
  public final Dialog b()
  {
    int i = this.r.getInt("title");
    int j = this.r.getInt("message");
    ProgressDialog localProgressDialog = new ProgressDialog(g());
    if (i > 0) {
      localProgressDialog.setTitle(i);
    }
    if (j > 0) {
      localProgressDialog.setMessage(a(j));
    }
    localProgressDialog.setIndeterminate(true);
    localProgressDialog.setCancelable(true);
    localProgressDialog.setOnCancelListener(null);
    return localProgressDialog;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */