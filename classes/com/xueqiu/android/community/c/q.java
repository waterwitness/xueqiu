package com.xueqiu.android.community.c;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.a.h;
import android.support.v4.a.k;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.community.model.Status;
import rx.a;

public class q
  extends h
  implements TextView.OnEditorActionListener
{
  public static final String ak = q.class.getSimpleName();
  private String al;
  private String am;
  private EditText an;
  private String ao;
  private String ap;
  
  public static q a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    q localq = new q();
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_title", paramString1);
    localBundle.putString("arg_text", paramString2);
    localBundle.putString("arg_symbol", paramString3);
    localBundle.putString("arg_type", paramString4);
    localq.e(localBundle);
    return localq;
  }
  
  private void u()
  {
    if ("stock".equals(this.ap)) {}
    for (String str = "37erm7ZyxA";; str = null)
    {
      ap.a(g(), com.xueqiu.android.base.q.a().b(), str, this.an.getText().toString(), this.ap, this.ao, null).b(new rx.i()
      {
        public final void a() {}
        
        public final void a(Throwable paramAnonymousThrowable)
        {
          aa.a(paramAnonymousThrowable);
        }
      });
      return;
    }
  }
  
  public final Dialog b()
  {
    if (this.r != null)
    {
      this.al = this.r.getString("arg_title");
      this.am = this.r.getString("arg_text");
      this.ao = this.r.getString("arg_symbol");
      this.ap = this.r.getString("arg_type");
    }
    View localView = g().getLayoutInflater().inflate(2130903344, null);
    this.an = ((EditText)localView.findViewById(2131625163));
    this.an.setText(this.am);
    new AlertDialog.Builder(g()).setTitle(this.al).setView(localView).setNegativeButton(2131165296, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        q.this.a(false);
      }
    }).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        q.a(q.this);
        q.this.a(false);
      }
    }).create();
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (6 == paramInt)
    {
      u();
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */