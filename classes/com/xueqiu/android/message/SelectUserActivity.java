package com.xueqiu.android.message;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.content.r;
import android.support.v4.view.ak;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.method.LinkMovementMethod;
import android.text.style.ImageSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.f;
import com.d.a.b.f.c;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.community.FindPeopleActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.a.a;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SelectUserActivity
  extends b
{
  private Message j;
  private Uri k;
  private EditText p;
  private StickyListHeadersListView q;
  private View r;
  private a s;
  private long[] t;
  private boolean u;
  private LayoutInflater v;
  
  private void a(User paramUser)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    Object localObject2 = paramUser.getScreenName();
    Object localObject1 = (TextView)this.v.inflate(2130903415, null).findViewById(2131625335);
    ((TextView)localObject1).setText((CharSequence)localObject2);
    int i = View.MeasureSpec.makeMeasureSpec(0, 0);
    ((View)localObject1).measure(i, i);
    ((View)localObject1).layout(0, 0, ((View)localObject1).getMeasuredWidth(), ((View)localObject1).getMeasuredHeight());
    localObject2 = new Canvas(Bitmap.createBitmap(((View)localObject1).getMeasuredWidth(), ((View)localObject1).getMeasuredHeight(), Bitmap.Config.ARGB_8888));
    ((Canvas)localObject2).translate(-((View)localObject1).getScrollX(), -((View)localObject1).getScrollY());
    ((View)localObject1).draw((Canvas)localObject2);
    ((View)localObject1).setDrawingCacheEnabled(true);
    localObject2 = ((View)localObject1).getDrawingCache().copy(Bitmap.Config.ARGB_8888, true);
    ((View)localObject1).destroyDrawingCache();
    localObject1 = (BitmapDrawable)new BitmapDrawable(Resources.getSystem(), (Bitmap)localObject2);
    ((BitmapDrawable)localObject1).setBounds(0, 0, ((BitmapDrawable)localObject1).getIntrinsicWidth(), ((BitmapDrawable)localObject1).getIntrinsicHeight());
    localSpannableStringBuilder.append(paramUser.getScreenName());
    localSpannableStringBuilder.setSpan(new ImageSpan((Drawable)localObject1, 1), localSpannableStringBuilder.length() - paramUser.getScreenName().length(), localSpannableStringBuilder.length(), 33);
    this.p.setMovementMethod(LinkMovementMethod.getInstance());
    this.p.append(localSpannableStringBuilder);
    this.p.append(" ");
    this.p.setSelection(this.p.length());
  }
  
  private void a(Talk paramTalk)
  {
    Intent localIntent = new Intent(this, ChatActivity.class);
    localIntent.putExtra("talk", paramTalk);
    Object localObject;
    if (this.j != null)
    {
      int i = this.j.getType();
      u.a();
      localObject = paramTalk.allocateMessage(i, UserLogonDataPrefs.getLogonUserId());
      ((Message)localObject).setText(this.j.getText());
      localIntent.putExtra("extra_message", (Parcelable)localObject);
    }
    for (;;)
    {
      startActivity(localIntent);
      localIntent = new Intent("com.xueqiu.android.action.talks");
      localObject = new ArrayList();
      ((ArrayList)localObject).add(paramTalk);
      localIntent.putParcelableArrayListExtra("extra_talks", (ArrayList)localObject);
      r.a(this).a(localIntent);
      setResult(-1);
      finish();
      return;
      if (this.k != null)
      {
        localIntent.putExtra("extra_image_uri", this.k);
        this.k = null;
      }
    }
  }
  
  private void addMember(int paramInt)
  {
    User localUser = this.s.addMember(paramInt);
    if (this.s.c != null)
    {
      this.p.getText().delete(this.p.getText().length() - this.s.c.length(), this.p.getText().length());
      this.s.a(null);
      this.q.invalidate();
    }
    a(localUser);
  }
  
  private void j()
  {
    Object localObject1 = this.s.b;
    if ((localObject1 != null) && (((List)localObject1).size() == 1))
    {
      User localUser = (User)((List)localObject1).get(0);
      localObject2 = DataStore.getInstance(getBaseContext()).getTalk(localUser.getUserId(), false);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new Talk();
        ((Talk)localObject1).setGroup(false);
        ((Talk)localObject1).setId(localUser.getUserId());
        ((Talk)localObject1).setName(localUser.getScreenName());
        ((Talk)localObject1).setProfileImageUrl(localUser.getProfileImageUrl());
      }
      ((Talk)localObject1).setUserRef(localUser);
      ((Talk)localObject1).setActive(true);
      ((Talk)localObject1).setCollapsed(false);
      ((Talk)localObject1).setLastTime(new Date());
      DataStore.getInstance(getBaseContext()).saveTalk((Talk)localObject1);
      a((Talk)localObject1);
      return;
    }
    Object localObject2 = new long[((List)localObject1).size()];
    int i = 0;
    while (i < ((List)localObject1).size())
    {
      localObject2[i] = ((User)((List)localObject1).get(i)).getUserId();
      i += 1;
    }
    getApplication();
    if ((localObject1 == null) || (((List)localObject1).size() == 0))
    {
      finish();
      return;
    }
    com.xueqiu.android.base.q.a().b().a("", "群简介", (long[])localObject2, new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    });
  }
  
  public void chooseGroup(View paramView)
  {
    paramView = new Intent(paramView.getContext(), IMGroupListActivity.class);
    if (this.j != null) {
      paramView.putExtra("extra_message", this.j);
    }
    if (this.k != null) {
      paramView.putExtra("extra_photo_stream", this.k);
    }
    startActivityForResult(paramView, 1);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      setResult(-1);
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    Object localObject = paramBundle.getAction();
    String str = paramBundle.getType();
    if (("android.intent.action.SEND".equals(localObject)) && (str != null))
    {
      localObject = paramBundle.getStringExtra("android.intent.extra.TEXT");
      if (localObject != null)
      {
        this.j = new Message();
        this.j.setType(0);
        this.j.setText((String)localObject);
      }
    }
    for (;;)
    {
      if (getIntent().getExtras() != null)
      {
        this.u = getIntent().getExtras().getBoolean("create_chat", false);
        this.t = getIntent().getLongArrayExtra("exclude_user_ids");
        if (this.u) {
          setTitle(2131165385);
        }
      }
      setContentView(2130903416);
      this.v = LayoutInflater.from(this);
      this.q = ((StickyListHeadersListView)findViewById(2131624241));
      this.r = findViewById(2131625336);
      if ((!this.u) && (this.j == null) && (this.k == null)) {
        this.r.findViewById(2131625334).setVisibility(8);
      }
      this.p = ((EditText)this.r.findViewById(2131625333));
      this.p.addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable)
        {
          v.a("SelectUserActivity", "after text changed: " + paramAnonymousEditable);
        }
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          v.a("SelectUserActivity", String.format("before text [string:%s] [start:%d] [count:%d] [after:%s]", new Object[] { paramAnonymousCharSequence, Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), Integer.valueOf(paramAnonymousInt3) }));
        }
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          v.a("SelectUserActivity", String.format("on text [string:%s] [start:%d] [before:%d] [count:%d]", new Object[] { paramAnonymousCharSequence, Integer.valueOf(paramAnonymousInt1), Integer.valueOf(paramAnonymousInt2), Integer.valueOf(paramAnonymousInt3) }));
          Object localObject = (ImageSpan[])SelectUserActivity.a(SelectUserActivity.this).getText().getSpans(0, paramAnonymousCharSequence.length(), ImageSpan.class);
          String str = paramAnonymousCharSequence.toString();
          if (localObject.length > 0) {
            localObject = localObject[(localObject.length - 1)];
          }
          for (paramAnonymousCharSequence = str.subSequence(SelectUserActivity.a(SelectUserActivity.this).getText().getSpanEnd(localObject), paramAnonymousCharSequence.length()).toString();; paramAnonymousCharSequence = str)
          {
            SelectUserActivity.b(SelectUserActivity.this).a(paramAnonymousCharSequence.trim());
            SelectUserActivity.c(SelectUserActivity.this).invalidate();
            return;
          }
        }
      });
      this.p.setOnKeyListener(new View.OnKeyListener()
      {
        public final boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          if ((paramAnonymousInt == 67) && (paramAnonymousKeyEvent.getAction() == 0))
          {
            paramAnonymousView = SelectUserActivity.a(SelectUserActivity.this).getText();
            Object localObject = (ImageSpan[])SelectUserActivity.a(SelectUserActivity.this).getText().getSpans(0, paramAnonymousView.length(), ImageSpan.class);
            paramAnonymousKeyEvent = paramAnonymousView.toString();
            if (localObject.length > 0)
            {
              localObject = localObject[(localObject.length - 1)];
              if (paramAnonymousKeyEvent.subSequence(SelectUserActivity.a(SelectUserActivity.this).getText().getSpanEnd(localObject), paramAnonymousView.length()).toString().trim().length() > 0) {
                return false;
              }
            }
            paramAnonymousView = SelectUserActivity.b(SelectUserActivity.this).b;
            if ((paramAnonymousView != null) && (paramAnonymousView.size() > 0))
            {
              SelectUserActivity.a(SelectUserActivity.this, -1);
              return true;
            }
          }
          return false;
        }
      });
      this.q.setOnItemClickListener(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousInt -= SelectUserActivity.c(SelectUserActivity.this).getHeaderViewsCount();
          if (!SelectUserActivity.b(SelectUserActivity.this).a(paramAnonymousInt))
          {
            paramAnonymousAdapterView = (CheckBox)paramAnonymousView.findViewById(2131625326);
            paramAnonymousAdapterView.toggle();
            if (paramAnonymousAdapterView.isChecked()) {
              SelectUserActivity.b(SelectUserActivity.this, paramAnonymousInt);
            }
          }
          else
          {
            return;
          }
          SelectUserActivity.a(SelectUserActivity.this, paramAnonymousInt);
        }
      });
      paramBundle = DBManager.getInstance().getFollowEachOtherUsers();
      localObject = f.a();
      this.s = new a(this, (f)localObject, this.t, paramBundle);
      this.s.d = true;
      this.q.setDrawingListUnderStickyHeader(true);
      this.q.setAreHeadersSticky(true);
      this.q.setIndexScrollEnabled(true);
      this.q.setAdapter(this.s);
      this.q.setOnScrollListener(new c((f)localObject, true, false));
      if ((paramBundle == null) || (paramBundle.isEmpty()))
      {
        this.r.setVisibility(8);
        addContentView(getLayoutInflater().inflate(2130903400, null, false), new AbsListView.LayoutParams(-1, -1));
        findViewById(2131625308).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            SelectUserActivity.this.finish();
            paramAnonymousView = new Intent(paramAnonymousView.getContext(), FindPeopleActivity.class);
            SelectUserActivity.this.startActivity(paramAnonymousView);
          }
        });
      }
      return;
      paramBundle = (Uri)paramBundle.getParcelableExtra("android.intent.extra.STREAM");
      if (paramBundle != null)
      {
        this.k = paramBundle;
        continue;
        this.j = ((Message)paramBundle.getParcelableExtra("extra_message"));
        this.k = ((Uri)paramBundle.getParcelableExtra("extra_forward_image_uri"));
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    ak.a(paramMenu.add(0, 1, 0, getString(2131165479)).setIcon(2130838114), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      if ((this.j != null) || (this.k != null))
      {
        new AlertDialog.Builder(this).setNegativeButton(getString(2131165296), null).setPositiveButton(getString(2131165361), new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            SelectUserActivity.d(SelectUserActivity.this);
          }
        }).setTitle(getString(2131166217)).setMessage(getString(2131165614)).create().show();
        return true;
      }
      if (!this.u) {
        break label110;
      }
      j();
    }
    for (;;)
    {
      finish();
      return super.onOptionsItemSelected(paramMenuItem);
      label110:
      Intent localIntent = new Intent();
      List localList = this.s.b;
      if (localList.size() > 0)
      {
        localIntent.putParcelableArrayListExtra("select_user_list", (ArrayList)localList);
        setResult(-1, localIntent);
      }
      else
      {
        setResult(0);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\SelectUserActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */