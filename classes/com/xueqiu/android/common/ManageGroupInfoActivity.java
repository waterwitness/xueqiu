package com.xueqiu.android.common;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.content.r;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.model.BaseGroupInfo;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.model.SNBJSONObject;
import com.xueqiu.android.community.model.FriendshipGroup;
import com.xueqiu.android.stock.model.Portfolio;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class ManageGroupInfoActivity
  extends b
{
  Context j;
  private List<BaseGroupInfo> k;
  private List<View> p;
  private LinearLayout q;
  private LinearLayout.LayoutParams r;
  private ProgressDialog s;
  private int t;
  private boolean u;
  private int v;
  
  private void a(int paramInt, BaseGroupInfo paramBaseGroupInfo)
  {
    final View localView = View.inflate(this, 2130903254, null);
    final boolean bool;
    StringBuilder localStringBuilder;
    if (paramBaseGroupInfo == null)
    {
      bool = true;
      localStringBuilder = new StringBuilder().append(paramInt).append(",");
      if (!bool) {
        break label237;
      }
    }
    label237:
    for (Object localObject = "-1";; localObject = Long.valueOf(((BaseGroupInfo)this.k.get(paramInt)).mId))
    {
      localObject = localObject;
      localView.setTag(localObject);
      if (bool)
      {
        paramBaseGroupInfo = new BaseGroupInfo();
        paramBaseGroupInfo.mIsAdd = true;
        paramBaseGroupInfo.mName = "";
        this.k.add(paramBaseGroupInfo);
      }
      paramBaseGroupInfo.mViewTag = ((String)localObject);
      localView.findViewById(2131624786).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          int i = Integer.parseInt(localView.getTag().toString().split(",")[0]);
          paramAnonymousView = ManageGroupInfoActivity.this;
          boolean bool = bool;
          if (bool)
          {
            paramAnonymousView.a(i, bool);
            return;
          }
          new AlertDialog.Builder(paramAnonymousView.j).setMessage(2131165365).setPositiveButton(2131165361, new ManageGroupInfoActivity.8(paramAnonymousView, i, bool)).setNegativeButton(2131165296, null).create().show();
        }
      });
      localObject = (EditText)localView.findViewById(2131624787);
      ((EditText)localObject).setFilters(new InputFilter[] { new com.xueqiu.android.base.util.u(16) });
      ((EditText)localObject).setHint(2131166265);
      ((EditText)localObject).setText(paramBaseGroupInfo.mName);
      ((EditText)localObject).addTextChangedListener(new TextWatcher()
      {
        public final void afterTextChanged(Editable paramAnonymousEditable) {}
        
        public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          String str = (String)localView.getTag();
          Iterator localIterator = ManageGroupInfoActivity.d(ManageGroupInfoActivity.this).iterator();
          BaseGroupInfo localBaseGroupInfo;
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localBaseGroupInfo = (BaseGroupInfo)localIterator.next();
          } while ((str == null) || (!str.equals(localBaseGroupInfo.mViewTag)));
          for (;;)
          {
            if (localBaseGroupInfo != null)
            {
              localBaseGroupInfo.mName = String.valueOf(paramAnonymousCharSequence);
              if (!localBaseGroupInfo.mIsAdd) {
                localBaseGroupInfo.mIsUpdate = true;
              }
            }
            return;
            localBaseGroupInfo = null;
          }
        }
      });
      this.p.add(localView);
      this.q.addView(localView, paramInt, this.r);
      if (bool)
      {
        ((EditText)localObject).requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput((View)localObject, 1);
      }
      return;
      bool = false;
      break;
    }
  }
  
  private void j()
  {
    Object localObject1;
    Object localObject2;
    int i;
    Object localObject3;
    if (this.k.size() != 0)
    {
      localObject1 = new HashSet();
      localObject2 = this.k.iterator();
      i = 0;
      if (!((Iterator)localObject2).hasNext()) {
        break label283;
      }
      localObject3 = (BaseGroupInfo)((Iterator)localObject2).next();
      if (TextUtils.isEmpty(((BaseGroupInfo)localObject3).mName))
      {
        aa.a(2131165581);
        return;
      }
      if ((!((Set)localObject1).contains(((BaseGroupInfo)localObject3).mName)) || (((BaseGroupInfo)localObject3).mIsDelete)) {}
    }
    label280:
    label283:
    for (int m = 1;; m = 0)
    {
      if (m != 0)
      {
        aa.a(2131165582);
        return;
        if (!((BaseGroupInfo)localObject3).mIsDelete) {
          ((Set)localObject1).add(((BaseGroupInfo)localObject3).mName);
        }
        if (((BaseGroupInfo)localObject3).mIsAdd) {
          i = 1;
        }
        if (((BaseGroupInfo)localObject3).mIsUpdate) {
          i = 1;
        }
        if (!((BaseGroupInfo)localObject3).mIsDelete) {
          break label280;
        }
        i = 1;
      }
      for (;;)
      {
        break;
        if (i != 0)
        {
          if (this.s == null)
          {
            this.s = new ProgressDialog(this.j);
            this.s.setMessage(getString(2131165252));
            this.s.setCancelable(false);
          }
          this.s.show();
          localObject1 = com.xueqiu.android.base.q.a().b();
          localObject2 = this.k;
          i = this.t;
          m = this.v;
          localObject3 = new p(this)
          {
            public final void a(y paramAnonymousy)
            {
              ManageGroupInfoActivity.e(ManageGroupInfoActivity.this).dismiss();
              aa.a(paramAnonymousy);
            }
          };
          if (1 == i)
          {
            ((ai)localObject1).h.b((List)localObject2, (p)localObject3);
            return;
          }
          ((ai)localObject1).i.a((List)localObject2, m, (p)localObject3);
          return;
        }
        finish();
        return;
      }
    }
  }
  
  final void a(int paramInt, boolean paramBoolean)
  {
    Object localObject3 = (View)this.p.remove(paramInt);
    Object localObject1 = (String)((View)localObject3).getTag();
    Object localObject2 = localObject1.toString().split(",")[1];
    this.q.removeView((View)localObject3);
    if (paramBoolean)
    {
      localObject2 = this.k.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (BaseGroupInfo)((Iterator)localObject2).next();
        if ((localObject1 != null) && (((String)localObject1).equals(((BaseGroupInfo)localObject3).mViewTag)))
        {
          ((Iterator)localObject2).remove();
          break label293;
        }
      }
    }
    for (;;)
    {
      int i = this.p.size();
      while (paramInt < i)
      {
        localObject3 = (View)this.p.get(paramInt);
        localObject1 = (String)((View)localObject3).getTag();
        localObject2 = paramInt + "," + localObject1.toString().split(",")[1];
        ((View)localObject3).setTag(paramInt + "," + localObject1.toString().split(",")[1]);
        localObject3 = this.k.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          BaseGroupInfo localBaseGroupInfo = (BaseGroupInfo)((Iterator)localObject3).next();
          if ((localObject1 != null) && (((String)localObject1).equals(localBaseGroupInfo.mViewTag))) {
            localBaseGroupInfo.mViewTag = ((String)localObject2);
          }
        }
        paramInt += 1;
      }
      localObject1 = this.k.iterator();
      label293:
      if (((Iterator)localObject1).hasNext())
      {
        localObject3 = (BaseGroupInfo)((Iterator)localObject1).next();
        if (((BaseGroupInfo)localObject3).mId != Long.parseLong((String)localObject2)) {
          break;
        }
        ((BaseGroupInfo)localObject3).mIsDelete = true;
        ((BaseGroupInfo)localObject3).mIsAdd = false;
        ((BaseGroupInfo)localObject3).mIsUpdate = false;
      }
    }
  }
  
  public void onBackPressed()
  {
    if (this.k != null)
    {
      Iterator localIterator = this.k.iterator();
      BaseGroupInfo localBaseGroupInfo;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localBaseGroupInfo = (BaseGroupInfo)localIterator.next();
      } while ((!localBaseGroupInfo.mIsAdd) && (!localBaseGroupInfo.mIsDelete) && (!localBaseGroupInfo.mIsUpdate));
    }
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        new AlertDialog.Builder(this).setTitle(2131166566).setMessage(2131165584).setPositiveButton(2131166015, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            ManageGroupInfoActivity.c(ManageGroupInfoActivity.this);
          }
        }).setNegativeButton(2131165296, new DialogInterface.OnClickListener()
        {
          public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            ManageGroupInfoActivity.this.finish();
          }
        }).create().show();
        return;
      }
      finish();
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903253);
    this.j = this;
    this.u = false;
    this.t = getIntent().getIntExtra("extra_group_type", -1);
    this.v = getIntent().getIntExtra("extra_portfolio_category", 1);
    if (-1 == this.t) {
      finish();
    }
    this.k = new ArrayList();
    this.p = new ArrayList();
    setTitle("管理分组");
    this.q = ((LinearLayout)findViewById(2131624784));
    this.r = new LinearLayout.LayoutParams(-1, -2);
    findViewById(2131624785).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if (ManageGroupInfoActivity.a(ManageGroupInfoActivity.this) == 1)
        {
          paramAnonymousView = new SNBEvent(1300, 4);
          i.a().a(paramAnonymousView);
        }
        if (ManageGroupInfoActivity.b(ManageGroupInfoActivity.this).size() < 12)
        {
          ManageGroupInfoActivity.a(ManageGroupInfoActivity.this, ManageGroupInfoActivity.b(ManageGroupInfoActivity.this).size());
          return;
        }
        aa.a(2131165580);
      }
    });
    if (1 == this.t)
    {
      paramBundle = com.xueqiu.android.base.q.a().b();
      com.xueqiu.android.base.u.a();
      a(paramBundle.k(UserLogonDataPrefs.getLogonUserId(), new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          ManageGroupInfoActivity.this.i();
          aa.a(paramAnonymousy);
        }
      }));
    }
    for (;;)
    {
      h();
      return;
      a(com.xueqiu.android.base.q.a().b().a(-1L, null, this.v, new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          ManageGroupInfoActivity.this.i();
          aa.a(paramAnonymousy);
        }
      }));
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772111 });
    android.support.v4.view.ak.a(paramMenu.add(0, 1, 0, 2131165359).setIcon(localTypedArray.getResourceId(0, 0)), 2);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy()
  {
    Object localObject;
    BaseGroupInfo localBaseGroupInfo;
    try
    {
      if (this.u)
      {
        if (this.t == 1)
        {
          JSONArray localJSONArray = new JSONArray();
          localObject = this.k.iterator();
          while (((Iterator)localObject).hasNext())
          {
            localBaseGroupInfo = (BaseGroupInfo)((Iterator)localObject).next();
            if (!localBaseGroupInfo.mIsDelete)
            {
              JSONObject localJSONObject = new JSONObject();
              localJSONObject.put("id", localBaseGroupInfo.mId);
              localJSONObject.put("name", localBaseGroupInfo.mName);
              localJSONObject.put("orderId", localBaseGroupInfo.mOrderId);
              localJSONArray.put(localJSONObject);
            }
          }
        }
      }
      else {
        this.p.clear();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    for (;;)
    {
      this.q.removeAllViews();
      this.k.clear();
      super.onDestroy();
      return;
      UserPrefs.setString(getBaseContext(), "key_friendship_groups", localException.toString());
      r.a(this).a(new Intent("com.xueqiu.android.action.USER_GROUP_UPDATED"));
      continue;
      ArrayList localArrayList = new ArrayList();
      localObject = this.k.iterator();
      while (((Iterator)localObject).hasNext())
      {
        localBaseGroupInfo = (BaseGroupInfo)((Iterator)localObject).next();
        if (!localBaseGroupInfo.mIsDelete) {
          localArrayList.add(localBaseGroupInfo);
        }
      }
      localObject = new Intent();
      ((Intent)localObject).putParcelableArrayListExtra("group_data", localArrayList);
      setResult(-1, (Intent)localObject);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 1)
    {
      j();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\ManageGroupInfoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */