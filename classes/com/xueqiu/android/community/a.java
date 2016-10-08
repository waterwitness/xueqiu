package com.xueqiu.android.community;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.e;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.util.ArrayList;
import java.util.List;

public final class a
  implements AdapterView.OnItemClickListener
{
  boolean a = false;
  private b b = null;
  private Status c = null;
  private d<Comment> d = null;
  
  public a(b paramb, Status paramStatus, d<Comment> paramd)
  {
    this.b = paramb;
    this.c = paramStatus;
    this.d = paramd;
  }
  
  public final void onItemClick(final AdapterView<?> paramAdapterView, final View paramView, int paramInt, long paramLong)
  {
    if (this.d.getCount() == 0) {}
    Context localContext;
    do
    {
      do
      {
        return;
        localContext = paramView.getContext();
        i = 0;
        if (paramAdapterView != null) {
          i = ((ListView)paramAdapterView).getHeaderViewsCount();
        }
        paramInt -= i;
      } while ((paramInt >= this.d.getCount()) || (paramInt < 0));
      paramAdapterView = (Comment)this.d.getItem(paramInt);
    } while (paramAdapterView == null);
    final ArrayList localArrayList = new ArrayList();
    final String str1 = localContext.getString(2131165351);
    final String str2 = localContext.getString(2131165354);
    final String str3 = localContext.getString(2131165932);
    final String str4 = localContext.getString(2131165950);
    final String str5 = localContext.getString(2131165952);
    final String str6 = localContext.getString(2131165465);
    final String str7 = localContext.getString(2131165937);
    final String str8 = localContext.getString(2131165345);
    if ((!this.a) && (!TextUtils.isEmpty(paramAdapterView.getReplyScreenName()))) {
      localArrayList.add(str2);
    }
    localArrayList.add(str3);
    int i = 1;
    if (paramAdapterView.isTruncated())
    {
      paramInt = 0;
      if (paramInt != 0) {
        localArrayList.add(str1);
      }
      localArrayList.add(str8);
      localArrayList.add(str4);
      if (paramAdapterView.getRewardUserCount() > 0) {
        localArrayList.add(str5);
      }
      u.a();
      paramLong = UserLogonDataPrefs.getLogonUserId();
      if ((paramLong != paramAdapterView.getUser().getUserId()) && (paramLong != this.c.getUser().getUserId())) {
        break label478;
      }
    }
    label478:
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt != 0) {
        localArrayList.add(str6);
      }
      if (paramLong != paramAdapterView.getUser().getUserId()) {
        localArrayList.add(str7);
      }
      String[] arrayOfString = (String[])localArrayList.toArray(new String[localArrayList.size()]);
      new AlertDialog.Builder(localContext).setTitle(2131165342).setItems(arrayOfString, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          String str1 = (String)localArrayList.get(paramAnonymousInt);
          if (str1.equals(str1)) {
            a.a(a.this, paramAdapterView);
          }
          do
          {
            return;
            if (str1.equals(str3))
            {
              a.b(a.this, paramAdapterView);
              return;
            }
            if (str1.equals(str4))
            {
              a.c(a.this, paramAdapterView);
              return;
            }
            if (str1.equals(str5))
            {
              a.d(a.this, paramAdapterView);
              return;
            }
            if (str1.equals(str6))
            {
              a.e(a.this, paramAdapterView);
              return;
            }
            if (str1.equals(str7))
            {
              a.a(a.this, paramAdapterView.getId());
              return;
            }
            if (str1.equals(str8))
            {
              str1 = "@" + paramAdapterView.getUser().getScreenName();
              if (TextUtils.isEmpty(paramAdapterView.getReplyScreenName())) {}
              for (str1 = str1 + ":";; str1 = str1 + " ")
              {
                String str2 = ((TextView)paramView.findViewById(2131624449)).getText().toString();
                e.a(a.a(a.this), str1 + str2);
                paramAnonymousDialogInterface.dismiss();
                return;
              }
            }
          } while (!str1.equals(str2));
          a.f(a.this, paramAdapterView);
        }
      }).show().setCanceledOnTouchOutside(true);
      return;
      if ((paramAdapterView.isAnswer()) && ("COMMENT".equals(paramAdapterView.getRqtype())))
      {
        paramInt = i;
        if (paramAdapterView.getReplyComment() == null) {
          break;
        }
        paramInt = i;
        if (!paramAdapterView.getReplyComment().isTruncated()) {
          break;
        }
        paramInt = 0;
        break;
      }
      paramInt = i;
      if (!this.c.isTruncated()) {
        break;
      }
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */