package com.xueqiu.android.message;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.content.r;
import android.support.v4.view.ak;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.af;
import com.xueqiu.android.common.WelcomeActivity;
import com.xueqiu.android.common.b;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.a.z;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class SelectTalkActivity
  extends b
{
  r j;
  private ListView p;
  private z q;
  private List<Talk> r;
  private Message s;
  private Uri t;
  private EditText u;
  private View v;
  private View w;
  
  static
  {
    if (!SelectTalkActivity.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      return;
    }
  }
  
  protected final void b(int paramInt)
  {
    Intent localIntent = new Intent(this, ChatActivity.class);
    Object localObject = (Talk)this.p.getAdapter().getItem(paramInt);
    localIntent.putExtra("talk", (Parcelable)localObject);
    if (this.s != null)
    {
      paramInt = this.s.getType();
      u.a();
      localObject = ((Talk)localObject).allocateMessage(paramInt, UserLogonDataPrefs.getLogonUserId());
      ((Message)localObject).setText(this.s.getText());
      localIntent.putExtra("extra_message", (Parcelable)localObject);
    }
    for (;;)
    {
      localIntent.addFlags(1082654720);
      startActivity(localIntent);
      finish();
      return;
      if (this.t != null)
      {
        localIntent.putExtra("extra_image_uri", this.t);
        this.t = null;
      }
    }
  }
  
  public void createTalk(View paramView)
  {
    paramView = new Intent(paramView.getContext(), SelectUserActivity.class);
    if (this.s != null) {
      paramView.putExtra("extra_message", this.s);
    }
    if (this.t != null) {
      paramView.putExtra("extra_forward_image_uri", this.t);
    }
    startActivityForResult(paramView, 1);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1)) {
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903412);
    if (u.a().d) {
      t.a(this, true);
    }
    for (int i = 1; i != 0; i = 0) {
      return;
    }
    paramBundle = getIntent();
    Object localObject1 = paramBundle.getAction();
    Object localObject2 = paramBundle.getType();
    long l;
    if (("android.intent.action.SEND".equals(localObject1)) && (localObject2 != null))
    {
      if (!u.a().c)
      {
        finish();
        localObject1 = new Intent(getApplicationContext(), WelcomeActivity.class);
        ((Intent)localObject1).setPackage(getPackageName());
        ((Intent)localObject1).setFlags(32768);
        startActivity((Intent)localObject1);
      }
      localObject1 = (Uri)paramBundle.getParcelableExtra("android.intent.extra.STREAM");
      if (localObject1 != null)
      {
        this.t = ((Uri)localObject1);
        l = paramBundle.getLongExtra("extra_exclude_talk_id", 0L);
        this.j = r.a(getApplicationContext());
        this.p = ((ListView)findViewById(2131625332));
        this.r = DataStore.getInstance(getBaseContext()).getTalks(false);
        paramBundle = this.r.iterator();
      }
    }
    for (;;)
    {
      if (!paramBundle.hasNext()) {
        break label358;
      }
      localObject1 = (Talk)paramBundle.next();
      if (((Talk)localObject1).isGroup())
      {
        localObject2 = DBManager.getInstance().getIMGroupById(((Talk)localObject1).getId());
        if (localObject2 == null) {
          continue;
        }
        ((Talk)localObject1).setName(((IMGroup)localObject2).getName());
        ((Talk)localObject1).setProfileImageUrl(((IMGroup)localObject2).getProfileImageUrl());
        ((Talk)localObject1).setGroupRef((IMGroup)localObject2);
        continue;
        localObject1 = paramBundle.getStringExtra("android.intent.extra.TEXT");
        if (localObject1 == null) {
          break;
        }
        this.s = new Message();
        this.s.setType(0);
        this.s.setText((String)localObject1);
        break;
        this.s = ((Message)paramBundle.getParcelableExtra("extra_message"));
        break;
      }
      localObject2 = DBManager.getInstance().queryUserByUserId(((Talk)localObject1).getId());
      if (localObject2 != null)
      {
        ((Talk)localObject1).setName(((User)localObject2).getScreenName());
        ((Talk)localObject1).setProfileImageUrl(((User)localObject2).getProfileImageUrl());
        ((Talk)localObject1).setUserRef((User)localObject2);
      }
    }
    label358:
    paramBundle = this.r.iterator();
    while (paramBundle.hasNext())
    {
      localObject1 = (Talk)paramBundle.next();
      if ((l > 0L) && (((Talk)localObject1).getId() == l))
      {
        paramBundle.remove();
      }
      else
      {
        if (((Talk)localObject1).getName() != null) {
          ((Talk)localObject1).setPinyin(af.b(((Talk)localObject1).getName().replace(",", "")));
        }
        ((Talk)localObject1).setUnread(0);
      }
    }
    Collections.sort(this.r, Talk.COMPARATOR);
    this.q = new z(this, this.r, true);
    this.p.setAdapter(this.q);
    this.p.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, final int paramAnonymousInt, long paramAnonymousLong)
      {
        if ((SelectTalkActivity.a(SelectTalkActivity.this) != null) || (SelectTalkActivity.b(SelectTalkActivity.this) != null))
        {
          new AlertDialog.Builder(paramAnonymousAdapterView.getContext()).setNegativeButton(SelectTalkActivity.this.getString(2131165296), null).setPositiveButton(SelectTalkActivity.this.getString(2131165361), new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              SelectTalkActivity.this.b(paramAnonymousInt);
            }
          }).setTitle(SelectTalkActivity.this.getString(2131166217)).setMessage(SelectTalkActivity.this.getString(2131165614)).create().show();
          return;
        }
        SelectTalkActivity.this.b(paramAnonymousInt);
      }
    });
    this.u = ((EditText)findViewById(2131625333));
    this.v = findViewById(2131625334);
    this.w = findViewById(2131625331);
    this.u.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        SelectTalkActivity.a(SelectTalkActivity.this, paramAnonymousEditable.toString().trim());
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 1, 0, getResources().getString(2131165479)).setIcon(2130838114), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1) {
      finish();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\SelectTalkActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */