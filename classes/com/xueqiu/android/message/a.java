package com.xueqiu.android.message;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.List;

public final class a
  extends c
{
  IMGroup a;
  private Long b;
  private ViewGroup c;
  private Button d;
  private TextView e;
  private Button f;
  private TextView g;
  
  public static a a(long paramLong)
  {
    a locala = new a();
    Bundle localBundle = new Bundle();
    localBundle.putLong("groupId", paramLong);
    locala.e(localBundle);
    return locala;
  }
  
  private void u()
  {
    this.g.setText(String.format("%s(%d/%d)", new Object[] { h().getString(2131165621), Integer.valueOf(this.a.getCount()), Integer.valueOf(this.a.getLimitCount()) }));
    this.d.setText(String.format(a(2131165579), new Object[] { this.a.getMaster().getScreenName() }));
    TextView localTextView = this.e;
    String str2 = a(2131165583);
    if (this.a.isEmptyName()) {}
    for (String str1 = a(2131166555);; str1 = this.a.getName())
    {
      localTextView.setText(String.format(str2, new Object[] { str1 }));
      if (!this.a.isJoined()) {
        break;
      }
      this.f.setText(a(2131165516));
      return;
    }
    if (this.a.getCount() == this.a.getLimitCount())
    {
      this.f.setText(a(2131165577));
      this.f.setEnabled(false);
      return;
    }
    this.f.setText(a(2131165239));
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903360, paramViewGroup, false);
    g().getApplication();
    this.c = ((ViewGroup)paramLayoutInflater.findViewById(2131625181));
    this.c.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a.a(a.this);
      }
    });
    this.d = ((Button)paramLayoutInflater.findViewById(2131625182));
    this.d.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a locala = a.this;
        if (locala.a.getMaster() != null)
        {
          paramAnonymousView = new Intent(paramAnonymousView.getContext(), UserProfileActivity.class);
          paramAnonymousView.putExtra("extra_user", locala.a.getMaster());
          locala.g().startActivity(paramAnonymousView);
        }
      }
    });
    this.e = ((TextView)paramLayoutInflater.findViewById(2131625183));
    this.g = ((TextView)paramLayoutInflater.findViewById(2131625180));
    this.f = ((Button)paramLayoutInflater.findViewById(2131625184));
    this.f.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (u.a().d)
        {
          t.a(a.this.g(), false);
          return;
        }
        Object localObject1 = a.this;
        if ((((a)localObject1).a != null) && (((a)localObject1).a.isJoined()))
        {
          localObject2 = paramAnonymousView.getContext();
          localObject3 = ((a)localObject1).a;
          localObject1 = DataStore.getInstance((Context)localObject2).getTalk(((IMGroup)localObject3).getId(), true);
          paramAnonymousView = (View)localObject1;
          if (localObject1 == null)
          {
            paramAnonymousView = new Talk();
            paramAnonymousView.setGroup(true);
            paramAnonymousView.setId(((IMGroup)localObject3).getId());
            paramAnonymousView.setName(((IMGroup)localObject3).getName());
            paramAnonymousView.setActive(true);
            paramAnonymousView.setGroupRef((IMGroup)localObject3);
            paramAnonymousView.setLastTime(((IMGroup)localObject3).getCreatedAt());
            DataStore.getInstance((Context)localObject2).saveTalk(paramAnonymousView);
          }
          localObject1 = new Intent((Context)localObject2, ChatActivity.class);
          ((Intent)localObject1).putExtra("talk", paramAnonymousView);
          ((Context)localObject2).startActivity((Intent)localObject1);
          return;
        }
        paramAnonymousView = new AlertDialog.Builder(((a)localObject1).g());
        paramAnonymousView.setTitle(String.format("%s（最多%d个字）", new Object[] { ((a)localObject1).a(2131165239), Integer.valueOf(25) }));
        Object localObject2 = new LinearLayout(((a)localObject1).g());
        Object localObject3 = new LinearLayout.LayoutParams(-1, -2);
        Object localObject4 = ((a)localObject1).h();
        ((LinearLayout.LayoutParams)localObject3).setMargins(((Resources)localObject4).getDimensionPixelSize(2131230794), ((Resources)localObject4).getDimensionPixelSize(2131230796), ((Resources)localObject4).getDimensionPixelSize(2131230795), 0);
        ((LinearLayout)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        localObject4 = new EditText(((a)localObject1).g());
        ((EditText)localObject4).setHint(2131165601);
        ((EditText)localObject4).setMaxLines(5);
        ((EditText)localObject4).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        ((EditText)localObject4).setFilters(new InputFilter[] { new InputFilter.LengthFilter(25) });
        ((LinearLayout)localObject2).addView((View)localObject4);
        paramAnonymousView.setView((View)localObject2);
        paramAnonymousView.setPositiveButton(2131165361, new a.10((a)localObject1, (EditText)localObject4));
        paramAnonymousView.setNegativeButton(2131165296, new a.11((a)localObject1));
        paramAnonymousView.show();
      }
    });
    return paramLayoutInflater;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null) {
      this.b = Long.valueOf(this.r.getLong("groupId"));
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    g().getApplication();
    x().q(this.b.longValue(), new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
    com.xueqiu.android.base.q.a().b().n(this.b.longValue(), new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
    super.a(paramView, paramBundle);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */