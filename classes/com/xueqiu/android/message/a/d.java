package com.xueqiu.android.message.a;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xueqiu.android.base.SnowBallApplication;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.model.parser.JSONUtils;
import com.xueqiu.android.common.q;
import com.xueqiu.android.common.widget.SnowBallEditText;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.message.ChatActivity;
import com.xueqiu.android.message.SelectTalkActivity;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import rx.c.b;

public final class d
  extends BaseAdapter
{
  public List<Message> a;
  SnowBallApplication b;
  private ChatActivity c;
  private Talk d;
  private LayoutInflater e;
  private DBManager f;
  private User g;
  private com.d.a.b.f h;
  private com.d.a.b.d i;
  private com.d.a.b.d j;
  private com.d.a.b.d k;
  
  public d(ChatActivity paramChatActivity, Talk paramTalk, List<Message> paramList, com.d.a.b.f paramf)
  {
    this.c = paramChatActivity;
    this.d = paramTalk;
    this.a = paramList;
    this.f = DBManager.getInstance();
    this.b = ((SnowBallApplication)this.c.getApplication());
    this.g = this.f.getCurrentUser();
    this.e = LayoutInflater.from(paramChatActivity);
    this.h = paramf;
    paramChatActivity = new com.d.a.b.e();
    paramChatActivity.a = 2130838664;
    paramChatActivity.b = 2130838664;
    paramChatActivity.c = 2130838664;
    paramChatActivity.h = true;
    paramChatActivity.i = true;
    paramChatActivity.m = false;
    this.i = paramChatActivity.b();
    paramChatActivity.a = 2130838659;
    paramChatActivity.b = 2130838659;
    paramChatActivity.c = 2130838659;
    paramChatActivity.h = true;
    paramChatActivity.i = true;
    paramChatActivity.m = false;
    this.j = paramChatActivity.b();
    this.k = n.a().b();
  }
  
  private void a(LinearLayout paramLinearLayout, final Message paramMessage)
  {
    int m = 1;
    String str = w.a(paramMessage.getText());
    if ((paramLinearLayout.getTag() != null) && (paramLinearLayout.getTag().equals(str))) {
      return;
    }
    if (paramLinearLayout.getChildCount() > 1) {
      paramLinearLayout.removeViews(1, paramLinearLayout.getChildCount() - 1);
    }
    try
    {
      JSONArray localJSONArray = new JSONObject(paramMessage.getText()).getJSONArray("list");
      final Object localObject = localJSONArray.getJSONObject(0);
      paramMessage.getId();
      paramMessage = (ImageView)paramLinearLayout.findViewById(2131624093);
      int n = (int)ay.a(this.c, 26.0F);
      n = this.c.getWindowManager().getDefaultDisplay().getWidth() - n;
      int i1 = (int)(n * 280.0F / 540.0F);
      paramMessage.getLayoutParams().width = n;
      paramMessage.getLayoutParams().height = i1;
      this.c.s.a(((JSONObject)localObject).getString("image"), paramMessage, this.k);
      ((TextView)paramLinearLayout.findViewById(2131624097)).setText(((JSONObject)localObject).getString("title"));
      paramLinearLayout.getChildAt(0).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          q.a(localObject.optString("url"), d.a(d.this));
        }
      });
      while (m < localJSONArray.length())
      {
        paramMessage = localJSONArray.getJSONObject(m);
        localObject = this.e.inflate(2130903394, paramLinearLayout, false);
        this.c.s.a(paramMessage.getString("image"), (ImageView)((View)localObject).findViewById(2131624093), this.k);
        ((TextView)((View)localObject).findViewById(2131624097)).setText(paramMessage.getString("title"));
        ((View)localObject).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            q.a(paramMessage.optString("url"), d.a(d.this));
          }
        });
        paramLinearLayout.addView((View)localObject, -1, -2);
        m += 1;
      }
      paramLinearLayout.setTag(str);
      return;
    }
    catch (JSONException paramLinearLayout)
    {
      paramLinearLayout.printStackTrace();
    }
  }
  
  public final void a()
  {
    this.a.clear();
  }
  
  public final void a(Message paramMessage)
  {
    rx.a.a(this.a).a(rx.a.b(paramMessage)).i().c(new b() {});
  }
  
  public final boolean a(View paramView, final Message paramMessage)
  {
    if ((paramMessage.getType() != 100) && (paramMessage.getType() != 7))
    {
      String[] arrayOfString = new String[3];
      arrayOfString[0] = "复制";
      arrayOfString[1] = "转发";
      arrayOfString[2] = "删除";
      if (paramMessage.isFailed())
      {
        arrayOfString = new String[4];
        arrayOfString[0] = "复制";
        arrayOfString[1] = "转发";
        arrayOfString[2] = "删除";
        arrayOfString[3] = "重发";
      }
      new AlertDialog.Builder(paramView.getContext()).setTitle(2131165775).setItems(arrayOfString, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (paramAnonymousInt == 0) {
            com.xueqiu.android.base.util.e.a(d.a(d.this), paramMessage.getClipboardData());
          }
          do
          {
            return;
            if (paramAnonymousInt == 1)
            {
              paramAnonymousDialogInterface = new Intent(d.a(d.this), SelectTalkActivity.class);
              paramAnonymousDialogInterface.putExtra("extra_message", paramMessage);
              paramAnonymousDialogInterface.putExtra("extra_exclude_talk_id", d.b(d.this).getId());
              d.a(d.this).startActivity(paramAnonymousDialogInterface);
              d.a(d.this).overridePendingTransition(2130968594, 2130968584);
              return;
            }
            if (paramAnonymousInt == 2)
            {
              d.a(d.this).d(paramMessage);
              return;
            }
          } while (paramAnonymousInt != 3);
          d.a(d.this).c(paramMessage);
        }
      }).show();
      return true;
    }
    return false;
  }
  
  public final void b(Message paramMessage)
  {
    this.a.remove(paramMessage);
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public final void run()
      {
        d.this.notifyDataSetChanged();
      }
    });
  }
  
  public final int getCount()
  {
    return this.a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final int getItemViewType(int paramInt)
  {
    Message localMessage = (Message)getItem(paramInt);
    if ((localMessage.getType() == 100) || (localMessage.getType() == 7)) {
      return 2;
    }
    if (localMessage.getType() == 8) {
      return 3;
    }
    if (localMessage.getType() == 9) {
      return 4;
    }
    if (localMessage.getType() == 10) {
      return 5;
    }
    if ((localMessage.getType() == 13) || (localMessage.getType() == 11) || (localMessage.getType() == 12))
    {
      if (localMessage.isByMyself()) {
        return 7;
      }
      return 6;
    }
    if (localMessage.isByMyself()) {
      return 1;
    }
    return 0;
  }
  
  public final View getView(int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    int n = getItemViewType(paramInt);
    if (paramView == null) {
      if (n == 2) {
        paramView = this.e.inflate(2130903392, paramViewGroup, false);
      }
    }
    for (;;)
    {
      final Object localObject1 = (Message)this.a.get(paramInt);
      paramView.setOnClickListener(new g(this));
      if (n == 2)
      {
        paramViewGroup = (TextView)paramView.findViewById(2131625294);
        if ((((Message)localObject1).getType() == 100) && (paramViewGroup != null)) {
          paramViewGroup.setText(com.xueqiu.android.base.util.h.a(((Message)localObject1).getCreatedAt(), "yyyy-MM-dd"));
        }
        while ((((Message)localObject1).getType() != 7) || (paramViewGroup == null))
        {
          return paramView;
          if (n == 3)
          {
            paramView = this.e.inflate(2130903396, paramViewGroup, false);
            paramView.setTag(i.a(this.c, paramView));
            break;
          }
          if (n == 4)
          {
            paramView = this.e.inflate(2130903397, paramViewGroup, false);
            paramView.setTag(i.a(this.c, paramView));
            break;
          }
          if (n == 5)
          {
            paramView = this.e.inflate(2130903393, paramViewGroup, false);
            break;
          }
          if ((n == 6) || (n == 7))
          {
            paramView = this.e;
            if (n == 7) {}
            for (int m = 2130903395;; m = 2130903398)
            {
              paramView = paramView.inflate(m, paramViewGroup, false);
              paramView.setTag(f.a(paramView));
              localObject1 = paramView.findViewById(2131625302);
              paramViewGroup = (ViewGroup)paramView.findViewById(2131625297);
              localObject1 = ((View)localObject1).getLayoutParams();
              paramViewGroup.removeAllViews();
              localObject2 = this.e.inflate(2130903399, paramViewGroup, false);
              paramViewGroup.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
              paramViewGroup.setTag(new e(this, (View)localObject2));
              break;
            }
          }
          if (n == 1)
          {
            paramViewGroup = this.e.inflate(2130903395, paramViewGroup, false);
            paramViewGroup.setTag(f.a(paramViewGroup));
            localObject1 = (ImageView)paramViewGroup.findViewById(2131625296);
            if (((ImageView)localObject1).getTag() != null)
            {
              paramView = paramViewGroup;
              if (((ImageView)localObject1).getTag().equals(this.g.getProfileImageUrl())) {
                break;
              }
            }
            ((ImageView)localObject1).setTag(this.g.getProfileImageUrl());
            localObject2 = this.h;
            localObject3 = this.g.getProfileImageUrl();
            if (this.g.getGender() == User.Gender.FEMALE) {}
            for (paramView = this.j;; paramView = this.i)
            {
              ((com.d.a.b.f)localObject2).a((String)localObject3, (ImageView)localObject1, paramView, new com.xueqiu.android.message.b.a());
              paramView = paramViewGroup;
              break;
            }
          }
          paramView = this.e.inflate(2130903398, paramViewGroup, false);
          paramView.setTag(f.a(paramView));
          break;
        }
        paramViewGroup.setText(((Message)localObject1).getEventText(this.f));
        return paramView;
      }
      if (n == 3)
      {
        ((i)paramView.getTag()).a((Message)localObject1, this.c);
        for (;;)
        {
          try
          {
            paramViewGroup = JSONUtils.getString(new JSONObject(((Message)localObject1).getText()), "url");
            localObject1 = ((ViewGroup)paramView).getChildAt(0);
            if (paramViewGroup.length() > 0)
            {
              paramViewGroup = new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  q.a(paramViewGroup, d.a(d.this));
                }
              };
              ((View)localObject1).setOnClickListener(paramViewGroup);
              return paramView;
            }
          }
          catch (JSONException paramViewGroup)
          {
            paramViewGroup.printStackTrace();
            return paramView;
          }
          paramViewGroup = null;
        }
      }
      if (n == 4)
      {
        ((i)paramView.getTag()).a((Message)localObject1, this.c);
        for (;;)
        {
          try
          {
            paramViewGroup = JSONUtils.getString(new JSONObject(((Message)localObject1).getText()), "url");
            localObject1 = ((ViewGroup)paramView).getChildAt(0);
            if (paramViewGroup.length() > 0)
            {
              paramViewGroup = new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  q.a(paramViewGroup, d.a(d.this));
                }
              };
              ((View)localObject1).setOnClickListener(paramViewGroup);
              return paramView;
            }
          }
          catch (JSONException paramViewGroup)
          {
            paramViewGroup.printStackTrace();
            return paramView;
          }
          paramViewGroup = null;
        }
      }
      if (n == 5)
      {
        a((LinearLayout)paramView.findViewById(2131625295), (Message)localObject1);
        return paramView;
      }
      Object localObject2 = new h(this, (Message)localObject1);
      paramView.setOnLongClickListener((View.OnLongClickListener)localObject2);
      paramViewGroup = paramView.findViewById(2131625304);
      if (paramViewGroup != null) {
        paramViewGroup.setOnLongClickListener((View.OnLongClickListener)localObject2);
      }
      Object localObject3 = (Message)this.a.get(paramInt);
      ImageView localImageView = (ImageView)paramView.findViewById(2131625296);
      final User localUser = this.f.queryUserByUserId(((Message)localObject3).getFromId());
      if ((localUser != null) && (localImageView != null))
      {
        if ((localImageView.getTag() == null) || (!localImageView.getTag().equals(localUser.getProfileImageUrl())))
        {
          localImageView.setTag(localUser.getProfileImageUrl());
          if ((localUser.getProfileImageUrl() == null) || (localUser.getProfileImageUrl().length() <= 0)) {
            break label1073;
          }
          com.d.a.b.f localf = this.h;
          String str = localUser.getProfileImageUrl();
          if (localUser.getGender() == User.Gender.FEMALE)
          {
            paramViewGroup = this.j;
            label885:
            localf.a(str, localImageView, paramViewGroup, new com.xueqiu.android.message.b.a());
          }
        }
        else
        {
          if (!this.d.isGroup()) {
            break label1102;
          }
          localImageView.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              d.a(d.this, localUser);
            }
          });
          localImageView.setOnLongClickListener(new View.OnLongClickListener()
          {
            public final boolean onLongClick(View paramAnonymousView)
            {
              paramAnonymousView = d.a(d.this);
              User localUser = localUser;
              int i = paramAnonymousView.k.getSelectionStart();
              paramAnonymousView.k.getEditableText().insert(i, String.format("@%s ", new Object[] { localUser.getScreenName() }));
              return true;
            }
          });
        }
      }
      else {
        label942:
        if (((Message)localObject3).isByMyself())
        {
          paramViewGroup = (ImageView)paramView.findViewById(2131625301);
          if (((Message)localObject3).getType() != 0) {
            break label1120;
          }
        }
      }
      label1073:
      label1102:
      label1120:
      for (paramInt = 2130837825;; paramInt = 2130837824)
      {
        paramViewGroup.setBackgroundResource(paramInt);
        paramViewGroup = (f)paramView.getTag();
        if (paramViewGroup != null) {
          paramViewGroup.a((Message)localObject3, this.c);
        }
        paramViewGroup = (f)paramView.getTag();
        if ((paramViewGroup != null) && (paramViewGroup.f != null)) {
          paramViewGroup.f.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              d.this.a(paramAnonymousView, localObject1);
            }
          });
        }
        if ((paramViewGroup == null) || (paramViewGroup.a == null) || (paramViewGroup.d == null)) {
          break;
        }
        paramViewGroup.a.setOnLongClickListener((View.OnLongClickListener)localObject2);
        return paramView;
        paramViewGroup = this.i;
        break label885;
        if (localUser.getGender() == User.Gender.FEMALE) {}
        for (paramInt = 2130838659;; paramInt = 2130838664)
        {
          localImageView.setImageResource(paramInt);
          break;
        }
        localImageView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            d.a(d.this, localUser);
          }
        });
        break label942;
      }
    }
  }
  
  public final int getViewTypeCount()
  {
    return 8;
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */