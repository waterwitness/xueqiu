package com.xueqiu.android.community;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.a.f;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.gson.Gson;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.ad;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.search.StockSearchActivity;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.widget.SNBRichEditText;
import com.xueqiu.android.community.widget.SNBRichImageView;
import com.xueqiu.android.community.widget.SNBTextEditor;
import com.xueqiu.android.community.widget.h;
import com.xueqiu.android.stock.model.Stock;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import rx.i;

public class RichTextActivity
  extends com.xueqiu.android.common.b
{
  private static final String k = ad.a;
  boolean j = true;
  private SNBTextEditor p;
  private TextView q;
  private TextView r;
  private String s;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      }
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((paramIntent != null) && (paramIntent.getData() != null))
      {
        SNBTextEditor localSNBTextEditor = this.p;
        Object localObject4 = paramIntent.getData();
        Object localObject1;
        if (localObject4 == null) {
          localObject1 = localObject3;
        }
        for (;;)
        {
          localSNBTextEditor.a((String)localObject1, "");
          break;
          String str = ((Uri)localObject4).getScheme();
          if (str == null)
          {
            localObject1 = ((Uri)localObject4).getPath();
          }
          else if ("file".equals(str))
          {
            localObject1 = ((Uri)localObject4).getPath();
          }
          else
          {
            localObject1 = localObject3;
            if ("content".equals(str))
            {
              com.xueqiu.android.base.b.a();
              localObject4 = com.xueqiu.android.base.b.e().getContentResolver().query((Uri)localObject4, new String[] { "_data" }, null, null, null);
              localObject1 = localObject3;
              if (localObject4 != null)
              {
                localObject1 = localObject2;
                if (((Cursor)localObject4).moveToFirst())
                {
                  int i = ((Cursor)localObject4).getColumnIndex("_data");
                  localObject1 = localObject2;
                  if (i >= 0) {
                    localObject1 = ((Cursor)localObject4).getString(i);
                  }
                }
                ((Cursor)localObject4).close();
              }
            }
          }
        }
        if (this.s != null)
        {
          this.p.a(k + this.s, "");
          this.s = null;
          continue;
          localObject1 = (Stock)paramIntent.getParcelableExtra("extra_stock");
          localObject1 = String.format(Locale.CHINA, "$%s(%s)$", new Object[] { ((Stock)localObject1).getName(), ((Stock)localObject1).getCode() });
          this.p.a((String)localObject1);
          continue;
          localObject1 = paramIntent.getStringExtra("extra_select");
          this.p.a((String)localObject1);
        }
      }
    }
  }
  
  public void onBackPressed()
  {
    SNBTextEditor localSNBTextEditor = this.p;
    if ((!TextUtils.isEmpty(localSNBTextEditor.a())) || (!TextUtils.isEmpty(localSNBTextEditor.b.getText()))) {}
    for (int i = 1; i == 0; i = 0)
    {
      this.p.b();
      finish();
      return;
    }
    new AlertDialog.Builder(this).setTitle(2131165483).setNegativeButton(getString(2131165296), null).setPositiveButton(getString(2131166017), new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        RichTextActivity.this.j = true;
        RichTextActivity.this.finish();
      }
    }).setNeutralButton(2131165319, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        RichTextActivity.this.j = false;
        RichTextActivity.this.finish();
      }
    }).setMessage(getString(2131166291)).create().show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i.b().d();
    setContentView(2130903186);
    this.p = ((SNBTextEditor)findViewById(2131624564));
    this.q = ((TextView)findViewById(2131624563));
    this.r = ((TextView)findViewById(2131624562));
    this.p.setInputListener(new h()
    {
      public final void a()
      {
        Intent localIntent = new Intent(RichTextActivity.this, UserSearchActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putInt("extra_type", 0);
        localIntent.putExtras(localBundle);
        RichTextActivity.this.a(localIntent, 3, 2130968585, 2130968585);
      }
      
      public final void b()
      {
        Intent localIntent = new Intent(RichTextActivity.this, StockSearchActivity.class);
        Bundle localBundle = new Bundle();
        localBundle.putString("extra_view_color", "view_color_blue");
        localIntent.putExtras(localBundle);
        RichTextActivity.this.a(localIntent, 2, 2130968585, 2130968585);
      }
      
      public final void c()
      {
        Object localObject = RichTextActivity.this;
        String str1 = ((RichTextActivity)localObject).getString(2131165713);
        String str2 = ((RichTextActivity)localObject).getString(2131166198);
        AlertDialog.Builder localBuilder = new AlertDialog.Builder((Context)localObject).setTitle(2131166562);
        localObject = new RichTextActivity.4((RichTextActivity)localObject);
        localBuilder.setItems(new String[] { str1, str2 }, (DialogInterface.OnClickListener)localObject).create().show();
      }
      
      public final void send(String paramAnonymousString1, String paramAnonymousString2)
      {
        final Integer localInteger = Integer.valueOf(ap.a());
        ap.a(RichTextActivity.this, q.a().b(), null, paramAnonymousString1, paramAnonymousString2, false, null, null, null).b(new i()
        {
          public final void a()
          {
            RichTextActivity.a(RichTextActivity.this).b();
            RichTextActivity.this.j = false;
          }
          
          public final void a(Throwable paramAnonymous2Throwable) {}
        });
        paramAnonymousString1 = new Intent();
        paramAnonymousString1.putExtra("extra_task_id", localInteger);
        RichTextActivity.this.setResult(-1, paramAnonymousString1);
      }
    });
    this.r.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        RichTextActivity.this.onBackPressed();
      }
    });
    this.q.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        RichTextActivity.a(RichTextActivity.this).send();
      }
    });
  }
  
  protected void onPause()
  {
    if (this.j)
    {
      SNBTextEditor localSNBTextEditor = this.p;
      ArrayList localArrayList = new ArrayList();
      int m = localSNBTextEditor.a.getChildCount();
      Object localObject1;
      if (m > 0)
      {
        localObject1 = (EditText)((ViewGroup)localSNBTextEditor.a.getChildAt(0)).findViewById(2131624579);
        UserPrefs.setString(localSNBTextEditor.getContext(), "rich_text_title_draft", ((EditText)localObject1).getText().toString().trim());
      }
      int i = 1;
      if (i < m)
      {
        Object localObject2 = localSNBTextEditor.a.getChildAt(i);
        if ((localObject2 instanceof SNBRichEditText))
        {
          localObject1 = (SNBRichEditText)localObject2;
          if (!TextUtils.isEmpty(((SNBRichEditText)localObject1).getText().toString().trim()))
          {
            if (!((SNBRichEditText)localObject1).c) {
              break label169;
            }
            localObject1 = new com.xueqiu.android.community.widget.g(1, ((SNBRichEditText)localObject1).getHtmlText().toString(), true, null, null);
            localArrayList.add(localObject1);
          }
        }
        label169:
        while (!(localObject2 instanceof RelativeLayout)) {
          for (;;)
          {
            i += 1;
            break;
            localObject1 = new com.xueqiu.android.community.widget.g(1, ((SNBRichEditText)localObject1).getHtmlText().toString(), false, null, null);
          }
        }
        localObject1 = (SNBRichImageView)((View)localObject2).findViewById(2131624565);
        localObject2 = (SNBRichEditText)((View)localObject2).findViewById(2131624566);
        String str;
        if (!TextUtils.isEmpty(((SNBRichEditText)localObject2).getText().toString().trim()))
        {
          str = ((SNBRichImageView)localObject1).getImagePath();
          ((SNBRichImageView)localObject1).getImageUrl();
        }
        for (localObject1 = new com.xueqiu.android.community.widget.g(2, null, false, str, ((SNBRichEditText)localObject2).getText().toString().trim());; localObject1 = new com.xueqiu.android.community.widget.g(2, null, false, (String)localObject2, null))
        {
          localArrayList.add(localObject1);
          break;
          localObject2 = ((SNBRichImageView)localObject1).getImagePath();
          ((SNBRichImageView)localObject1).getImageUrl();
        }
      }
      if (localArrayList.size() > 0) {
        UserPrefs.setString(localSNBTextEditor.getContext(), "rich_text_draft", m.a().toJson(localArrayList));
      }
    }
    for (;;)
    {
      super.onPause();
      return;
      this.p.b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\RichTextActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */