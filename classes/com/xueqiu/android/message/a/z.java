package com.xueqiu.android.message.a;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.content.r;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.c.c;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ai;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserNotification;
import com.xueqiu.android.message.b.a;
import com.xueqiu.android.message.database.key.TalkKey;
import com.xueqiu.android.message.model.ApplyCount;
import com.xueqiu.android.message.model.Message;
import com.xueqiu.android.message.model.Talk;
import com.xueqiu.android.message.model.UserNotificationSession;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class z
  extends BaseAdapter
{
  public List<Talk> a;
  public ApplyCount b;
  public final SparseArray<UserNotificationSession> c = new SparseArray();
  public boolean d = false;
  Activity e;
  public aa f = new aa(this);
  public r g;
  public f h;
  private DBManager i;
  
  public z(Activity paramActivity, List<Talk> paramList, boolean paramBoolean)
  {
    this.e = paramActivity;
    this.a = new ArrayList(paramList);
    this.d = paramBoolean;
    this.g = r.a(paramActivity);
    this.i = DBManager.getInstance();
    this.h = f.a();
  }
  
  private Talk d(int paramInt)
  {
    int j = paramInt;
    if (c()) {
      j = paramInt - 1;
    }
    paramInt = 0;
    while (paramInt < this.c.size())
    {
      j -= 1;
      paramInt += 1;
    }
    if ((j < 0) || (j >= this.a.size()))
    {
      v.d("TalkListAdapter", "calc real position wrong:" + j);
      return null;
    }
    return (Talk)this.a.get(j);
  }
  
  private static void d(List<Talk> paramList)
  {
    Iterator localIterator = paramList.iterator();
    Object localObject1 = null;
    Talk localTalk;
    Object localObject2;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localTalk = (Talk)localIterator.next();
        if (localTalk != null)
        {
          if (!localTalk.isCollapsed()) {
            break label98;
          }
          if (localObject1 == null)
          {
            localObject2 = localTalk;
            label48:
            localIterator.remove();
          }
        }
      }
    }
    for (;;)
    {
      localObject1 = localObject2;
      break;
      localObject2 = localTalk;
      if (((Talk)localObject1).getLastTime().getTime() <= localTalk.getLastTime().getTime()) {
        break label48;
      }
      localObject2 = localObject1;
      break label48;
      if (localObject1 != null) {
        paramList.add(localObject1);
      }
      return;
      label98:
      localObject2 = localObject1;
    }
  }
  
  public final void a()
  {
    synchronized (this.a)
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        if (((Talk)localIterator.next()).isCollapsed()) {
          localIterator.remove();
        }
      }
    }
    b();
  }
  
  public final void a(int paramInt, UserNotificationSession paramUserNotificationSession)
  {
    this.c.put(paramInt, paramUserNotificationSession);
    notifyDataSetChanged();
  }
  
  public final void a(long paramLong1, long paramLong2)
  {
    if (paramLong1 != 0L)
    {
      u.a();
      if (paramLong1 == UserLogonDataPrefs.getLogonUserId()) {}
    }
    for (;;)
    {
      synchronized (this.a)
      {
        Iterator localIterator = this.a.iterator();
        if (localIterator.hasNext())
        {
          Talk localTalk = (Talk)localIterator.next();
          if ((localTalk == null) || (localTalk.getId() != paramLong1) || (localTalk.getUnread() <= 0)) {
            continue;
          }
          localTalk.setUnread(0);
          if (paramLong2 <= 0L) {
            break label139;
          }
          localTalk.setTargetReadAt(new Date(paramLong2));
          break label139;
          if (j != 0) {
            b();
          }
          return;
        }
      }
      int j = 0;
      continue;
      label139:
      j = 1;
    }
  }
  
  public final void a(List<Talk> paramList)
  {
    long l = SystemClock.uptimeMillis();
    Object localObject1 = new HashMap();
    synchronized (this.a)
    {
      localObject3 = this.a.iterator();
      if (((Iterator)localObject3).hasNext())
      {
        Talk localTalk = (Talk)((Iterator)localObject3).next();
        ((Map)localObject1).put(new TalkKey(localTalk.getId(), localTalk.isGroup()), localTalk);
      }
    }
    paramList = paramList.iterator();
    int j = 1;
    while (paramList.hasNext())
    {
      ??? = (Talk)paramList.next();
      if ((!this.d) || (((Talk)???).isCollapsed()))
      {
        localObject3 = new TalkKey(((Talk)???).getId(), ((Talk)???).isGroup());
        int k = j;
        if (((Map)localObject1).containsKey(localObject3))
        {
          localObject3 = (Talk)((Map)localObject1).get(localObject3);
          ((Talk)localObject3).setActive(((Talk)???).isActive());
          ((Talk)localObject3).setSummary(((Talk)???).getSummary());
          ((Talk)localObject3).setLastTime(((Talk)???).getLastTime());
          ((Talk)localObject3).setTop(((Talk)???).isTop());
          ((Talk)localObject3).setStatus(((Talk)???).getStatus());
          k = 0;
        }
        if ((!this.d) && (((Talk)???).isCollapsed()) && (!((Talk)???).isActive()) && (k == 0))
        {
          localObject3 = this.i.getLatestCollapsedTalk();
          if (localObject3 != null) {
            ((Map)localObject1).put(new TalkKey(((Talk)localObject3).getId(), ((Talk)localObject3).isGroup()), localObject3);
          }
        }
        j = k;
        if (k != 0)
        {
          j = k;
          if (this.d == ((Talk)???).isCollapsed())
          {
            ((Map)localObject1).put(new TalkKey(((Talk)???).getId(), ((Talk)???).isGroup()), ???);
            j = k;
          }
        }
      }
    }
    ??? = new ArrayList(((Map)localObject1).size());
    Object localObject3 = ((Map)localObject1).values().iterator();
    paramList = null;
    while (((Iterator)localObject3).hasNext())
    {
      localObject1 = (Talk)((Iterator)localObject3).next();
      if (((Talk)localObject1).isActive()) {
        if ((!this.d) && (((Talk)localObject1).isCollapsed()) && ((paramList == null) || (paramList.getLastTime().getTime() < ((Talk)localObject1).getLastTime().getTime()))) {
          paramList = (List<Talk>)localObject1;
        } else {
          ((List)???).add(localObject1);
        }
      }
    }
    if (paramList != null) {
      ((List)???).add(paramList);
    }
    Collections.sort((List)???, Talk.COMPARATOR);
    this.a = new ArrayList((Collection)???);
    b();
    v.a("TalkListAdapter", String.format("onTalks:%dms", new Object[] { Long.valueOf(SystemClock.uptimeMillis() - l) }));
  }
  
  public final boolean a(int paramInt)
  {
    SparseArray localSparseArray = this.c;
    int j = paramInt;
    if (c()) {
      j = paramInt - 1;
    }
    return localSparseArray.indexOfKey(j) >= 0;
  }
  
  public final UserNotificationSession b(int paramInt)
  {
    SparseArray localSparseArray = this.c;
    int j = paramInt;
    if (c()) {
      j = paramInt - 1;
    }
    return (UserNotificationSession)localSparseArray.get(j);
  }
  
  public final void b()
  {
    new Handler(Looper.getMainLooper()).post(new Runnable()
    {
      public final void run()
      {
        z.this.notifyDataSetChanged();
      }
    });
  }
  
  public final void b(List<Message> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = this.a.iterator();
    Object localObject2 = new ArrayList(paramList);
    Object localObject3;
    for (;;)
    {
      synchronized (this.a)
      {
        if (!localIterator1.hasNext()) {
          break label264;
        }
        localObject3 = (Talk)localIterator1.next();
        Iterator localIterator2 = ((List)localObject2).iterator();
        if (!localIterator2.hasNext()) {
          continue;
        }
        paramList = (Message)localIterator2.next();
        if (!paramList.belongTo((Talk)localObject3)) {
          continue;
        }
        localIterator2.remove();
        if (paramList.getCreatedAt().getTime() < ((Talk)localObject3).getLastTime().getTime()) {
          continue;
        }
        ((Talk)localObject3).loadLastMessage(paramList);
        if ((paramList.getFromId() <= 0L) || (!((Talk)localObject3).isGroup())) {
          break;
        }
        Object localObject4 = this.i.queryUserByUserId(paramList.getFromId());
        if (localObject4 == null) {
          continue;
        }
        localObject4 = ((User)localObject4).getScreenName();
        if (paramList.getType() == 7)
        {
          paramList = paramList.getEventText(this.i);
          ((Talk)localObject3).setSummary(String.format("%s:%s", new Object[] { localObject4, paramList }));
        }
      }
      paramList = paramList.getSummary();
    }
    if (paramList.getType() == 7) {}
    for (paramList = paramList.getEventText(this.i);; paramList = paramList.getSummary())
    {
      ((Talk)localObject3).setSummary(paramList);
      break;
    }
    label264:
    localIterator1 = ((List)localObject2).iterator();
    label400:
    label596:
    for (;;)
    {
      int j;
      if (localIterator1.hasNext())
      {
        ??? = (Message)localIterator1.next();
        paramList = localArrayList.iterator();
        for (;;)
        {
          if (paramList.hasNext())
          {
            localObject2 = (Talk)paramList.next();
            if (((Message)???).belongTo((Talk)localObject2))
            {
              ((Talk)localObject2).loadLastMessage((Message)???);
              if ((((Talk)localObject2).isGroup()) && (((Message)???).getFromId() > 0L))
              {
                paramList = this.i.queryUserByUserId(((Message)???).getFromId());
                if (paramList != null)
                {
                  localObject3 = paramList.getScreenName();
                  if (((Message)???).getType() == 7)
                  {
                    paramList = ((Message)???).getEventText(this.i);
                    ((Talk)localObject2).setSummary(String.format("%s:%s", new Object[] { localObject3, paramList }));
                  }
                }
                else
                {
                  j = 1;
                }
              }
            }
          }
        }
      }
      for (;;)
      {
        if (j != 0) {
          break label596;
        }
        paramList = DataStore.getInstance(this.e).getTalk((Message)???);
        if (paramList == null) {
          break;
        }
        if ((!this.d) && (paramList.isCollapsed()))
        {
          localArrayList.add(this.i.getLatestCollapsedTalk());
          break;
          paramList = ((Message)???).getSummary();
          break label400;
          if (((Message)???).getType() == 7) {}
          for (paramList = ((Message)???).getEventText(this.i);; paramList = ((Message)???).getSummary())
          {
            ((Talk)localObject2).setSummary(paramList);
            j = 1;
            break;
          }
        }
        if (paramList.isCollapsed() != this.d) {
          break;
        }
        localArrayList.add(paramList);
        break;
        this.a.addAll(localArrayList);
        if (!this.d) {
          d(this.a);
        }
        Collections.sort(this.a, Talk.COMPARATOR);
        b();
        return;
        j = 0;
      }
    }
  }
  
  public final z c(List<Talk> paramList)
  {
    this.a = new ArrayList(paramList);
    notifyDataSetChanged();
    return this;
  }
  
  public final void c(int paramInt)
  {
    this.c.remove(paramInt);
    notifyDataSetChanged();
  }
  
  public final boolean c()
  {
    return (this.b != null) && (this.b.getCount() > 0);
  }
  
  public final void d()
  {
    this.g.a(this.f);
  }
  
  public final int getCount()
  {
    if (this.a != null) {}
    for (int j = this.a.size();; j = 0)
    {
      int k = j;
      if (c()) {
        k = j + 1;
      }
      return k + this.c.size();
    }
  }
  
  public final Object getItem(int paramInt)
  {
    if ((c()) && (paramInt == 0)) {
      return null;
    }
    if (a(paramInt)) {
      return b(paramInt);
    }
    return d(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    if ((c()) && (paramInt == 0)) {
      return Long.MAX_VALUE;
    }
    return paramInt;
  }
  
  public final int getItemViewType(int paramInt)
  {
    if ((c()) && (paramInt == 0)) {
      return 1;
    }
    return 0;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int j = 8;
    getItemViewType(paramInt);
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903419, null);
      paramView = new ab(this, (byte)0);
      paramView.a = ((ImageView)localView.findViewById(2131625312));
      paramView.b = localView.findViewById(2131625338);
      paramView.c = ((TextView)localView.findViewById(2131624097));
      paramView.d = ((TextView)localView.findViewById(2131624457));
      paramView.e = ((TextView)localView.findViewById(2131625300));
      paramView.i = ((ImageView)localView.findViewById(2131625343));
      paramView.f = ((ImageView)localView.findViewById(2131624079));
      paramView.h = ((ImageView)localView.findViewById(2131625342));
      paramView.g = ((ImageView)localView.findViewById(2131625340));
      paramView.j = localView.findViewById(2131625339);
      localView.setTag(paramView);
    }
    if ((c()) && (paramInt == 0))
    {
      paramView = (ab)localView.getTag();
      paramViewGroup = this.b;
      paramView.c.setText("加群申请");
      paramView.e.setText("");
      paramView.d.setText(paramViewGroup.getSummary());
      paramView.j.setVisibility(8);
      paramView.h.setVisibility(8);
      paramView.g.setVisibility(8);
      paramView.f.setVisibility(8);
      paramView.b.setVisibility(8);
      paramView.l.h.a("drawable://2130838293", paramView.a, paramView.k);
      if (paramViewGroup.getUnread() > 0)
      {
        paramViewGroup = ay.b(String.valueOf(paramViewGroup.getUnread()), paramView.l.e.getResources());
        paramView.i.setImageDrawable(paramViewGroup);
        paramView.i.setVisibility(0);
      }
    }
    Object localObject2;
    label455:
    label480:
    label527:
    label539:
    label604:
    label945:
    label953:
    label965:
    label970:
    label976:
    label981:
    label996:
    label1066:
    label1078:
    do
    {
      return localView;
      paramView.i.setVisibility(8);
      return localView;
      if (a(paramInt))
      {
        localObject1 = (ab)localView.getTag();
        localObject2 = b(paramInt);
        if (((UserNotificationSession)localObject2).getType() == 0)
        {
          ((ab)localObject1).l.h.a("drawable://2130838294", ((ab)localObject1).a, ((ab)localObject1).k);
          ((ab)localObject1).c.setText(2131165348);
          if (((UserNotificationSession)localObject2).getUnreadCount() <= 0) {
            break label945;
          }
          ((ab)localObject1).a();
          ((ab)localObject1).b.setVisibility(8);
          if (((UserNotificationSession)localObject2).getUnreadCount() <= 9999) {
            break label953;
          }
          paramView = "9999+";
          paramView = ay.b(String.valueOf(paramView), ((ab)localObject1).l.e.getResources());
          ((ab)localObject1).i.setImageDrawable(paramView);
          if ((((UserNotificationSession)localObject2).getUnreadCount() <= 0) || (((UserNotificationSession)localObject2).getType() == 3)) {
            break label965;
          }
          paramInt = 1;
          paramView = ((ab)localObject1).i;
          if (paramInt == 0) {
            break label970;
          }
          paramInt = 0;
          paramView.setVisibility(paramInt);
          ((ab)localObject1).i.setBackgroundResource(2130838416);
          ((ab)localObject1).g.setVisibility(8);
          ((ab)localObject1).f.setVisibility(8);
          ((ab)localObject1).h.setVisibility(8);
          if ((((UserNotificationSession)localObject2).getUnreadCount() <= 0) || (((UserNotificationSession)localObject2).getType() != 3)) {
            break label976;
          }
          paramInt = 1;
          paramView = ((ab)localObject1).j;
          if (paramInt != 0) {
            j = 0;
          }
          paramView.setVisibility(j);
          if (((UserNotificationSession)localObject2).getType() != 2) {
            break label981;
          }
          ((ab)localObject1).d.setText(ai.a(((UserNotificationSession)localObject2).getNotification().getDesc(), ((ab)localObject1).l.e, false));
        }
        for (;;)
        {
          paramViewGroup = "";
          paramView = paramViewGroup;
          if (((UserNotificationSession)localObject2).getNotification().getTimestamp() != null)
          {
            paramView = paramViewGroup;
            if (((UserNotificationSession)localObject2).getNotification().getTimestamp().getTime() > 0L) {
              paramView = h.b(((UserNotificationSession)localObject2).getNotification().getTimestamp());
            }
          }
          ((ab)localObject1).e.setText(paramView);
          return localView;
          if (((UserNotificationSession)localObject2).getType() == 2)
          {
            ((ab)localObject1).l.h.a("drawable://2130838295", ((ab)localObject1).a, ((ab)localObject1).k);
            ((ab)localObject1).c.setText(2131165748);
            break;
          }
          if (((UserNotificationSession)localObject2).getType() == 1)
          {
            ((ab)localObject1).l.h.a("drawable://2130838296", ((ab)localObject1).a, ((ab)localObject1).k);
            ((ab)localObject1).c.setText(2131165740);
            break;
          }
          if (((UserNotificationSession)localObject2).getType() == 4)
          {
            ((ab)localObject1).l.h.a("drawable://2130838298", ((ab)localObject1).a, ((ab)localObject1).k);
            ((ab)localObject1).c.setText(2131165782);
            break;
          }
          if (((UserNotificationSession)localObject2).getType() == 5)
          {
            ((ab)localObject1).l.h.a("drawable://2130838292", ((ab)localObject1).a, ((ab)localObject1).k);
            ((ab)localObject1).c.setText(2131166311);
            break;
          }
          ((ab)localObject1).l.h.a("drawable://2130838299", ((ab)localObject1).a, ((ab)localObject1).k);
          ((ab)localObject1).c.setText(2131165753);
          break;
          ((ab)localObject1).b();
          break label455;
          paramView = String.valueOf(((UserNotificationSession)localObject2).getUnreadCount());
          break label480;
          paramInt = 0;
          break label527;
          paramInt = 8;
          break label539;
          paramInt = 0;
          break label604;
          if (((UserNotificationSession)localObject2).getNotification().getScreenName() == null)
          {
            paramView = "";
            if (((UserNotificationSession)localObject2).getNotification().getDesc() != null) {
              break label1066;
            }
          }
          for (paramViewGroup = "";; paramViewGroup = ((UserNotificationSession)localObject2).getNotification().getDesc())
          {
            if ((((UserNotificationSession)localObject2).getType() != 3) || (!TextUtils.isEmpty(paramViewGroup))) {
              break label1078;
            }
            ((ab)localObject1).d.setText("暂无新消息");
            break;
            paramView = String.format("%s：", new Object[] { ((UserNotificationSession)localObject2).getNotification().getScreenName() });
            break label996;
          }
          ((ab)localObject1).d.setText(ai.a(String.format("%s%s", new Object[] { paramView, paramViewGroup }), ((ab)localObject1).l.e, false));
        }
      }
      paramView = getItem(paramInt);
    } while ((paramView == null) || (!(paramView instanceof Talk)));
    paramViewGroup = (ab)localView.getTag();
    Object localObject1 = d(paramInt);
    paramView = paramViewGroup.b;
    if (((Talk)localObject1).isGroup())
    {
      paramInt = 0;
      paramView.setVisibility(paramInt);
      if ((paramViewGroup.l.d) || (!((Talk)localObject1).isCollapsed())) {
        break label1432;
      }
      paramViewGroup.a.setTag(localObject1);
      paramViewGroup.a.setImageResource(2130838297);
      paramViewGroup.c.setText("留言");
      label1219:
      localObject2 = paramViewGroup.d;
      if (((Talk)localObject1).getSummary() != null) {
        break label1596;
      }
      paramView = "";
      label1237:
      ((TextView)localObject2).setText(paramView);
      if ((paramViewGroup.l.d) || (!((Talk)localObject1).isCollapsed()) || (((Talk)localObject1).getUnread() <= 0)) {
        break label1605;
      }
      paramViewGroup.i.setVisibility(8);
      paramViewGroup.j.setVisibility(0);
      paramViewGroup.d.setText(String.format("[%d条未读消息]", new Object[] { Integer.valueOf(((Talk)localObject1).getUnread()) }));
      paramViewGroup.a();
      label1318:
      if (paramViewGroup.l.d) {
        break label1898;
      }
      if ((!((Talk)localObject1).isNotify()) && (!((Talk)localObject1).isCollapsed())) {
        break label1887;
      }
      paramViewGroup.g.setVisibility(8);
      label1353:
      if (!((Talk)localObject1).isTop()) {
        break label1910;
      }
      paramViewGroup.f.setVisibility(0);
    }
    for (;;)
    {
      if (((Talk)localObject1).getLastTime() != null)
      {
        paramView = paramViewGroup.e;
        localObject2 = ((Talk)localObject1).getLastTime();
        paramViewGroup.e.getContext();
        paramView.setText(h.b((Date)localObject2));
      }
      if (((Talk)localObject1).getStatus() != 1) {
        break label1922;
      }
      paramViewGroup.h.setVisibility(0);
      return localView;
      paramInt = 8;
      break;
      label1432:
      paramInt = 2130838664;
      if (((Talk)localObject1).isGroup()) {
        paramInt = 2130838661;
      }
      j = paramInt;
      if (!((Talk)localObject1).isGroup())
      {
        j = paramInt;
        if (((Talk)localObject1).getUserRef() != null)
        {
          j = paramInt;
          if (((Talk)localObject1).getUserRef().getGender() == User.Gender.FEMALE) {
            j = 2130838659;
          }
        }
      }
      paramView = new e();
      paramView.a = j;
      paramView.b = j;
      paramView.c = j;
      paramView.h = true;
      paramView = paramView.a();
      paramView.m = false;
      paramView.q = new c((int)ay.a(1.0F));
      paramView = paramView.b();
      paramViewGroup.l.h.a(((Talk)localObject1).getProfileImageUrl(), paramViewGroup.a, paramView, new a());
      paramViewGroup.c.setText(((Talk)localObject1).getName());
      break label1219;
      label1596:
      paramView = ((Talk)localObject1).getSummary();
      break label1237;
      label1605:
      if ((!paramViewGroup.l.d) && (((Talk)localObject1).isCollapsed()))
      {
        paramViewGroup.d.setText("[全部已读]");
        paramViewGroup.i.setVisibility(8);
        paramViewGroup.j.setVisibility(8);
        paramViewGroup.b();
        break label1318;
      }
      if (((Talk)localObject1).getStatus() == -1)
      {
        paramViewGroup.i.setVisibility(0);
        paramViewGroup.b();
        paramView = ay.b("!", paramViewGroup.l.e.getResources());
        paramViewGroup.i.setImageDrawable(paramView);
        paramViewGroup.i.setBackgroundResource(2130838417);
        break label1318;
      }
      if (((Talk)localObject1).getUnread() == 0)
      {
        paramViewGroup.i.setVisibility(8);
        paramViewGroup.b();
        paramViewGroup.j.setVisibility(8);
        break label1318;
      }
      if (((Talk)localObject1).isNotify())
      {
        paramViewGroup.j.setVisibility(8);
        if (((Talk)localObject1).getUnread() > 9999)
        {
          paramView = "9999+";
          label1782:
          paramView = ay.b(String.valueOf(paramView), paramViewGroup.l.e.getResources());
          paramViewGroup.i.setImageDrawable(paramView);
          paramView = paramViewGroup.i;
          if (((Talk)localObject1).getUnread() <= 0) {
            break label1857;
          }
        }
        label1857:
        for (paramInt = 0;; paramInt = 8)
        {
          paramView.setVisibility(paramInt);
          paramViewGroup.i.setBackgroundResource(2130838416);
          paramViewGroup.a();
          break;
          paramView = String.valueOf(((Talk)localObject1).getUnread());
          break label1782;
        }
      }
      paramViewGroup.i.setVisibility(8);
      paramViewGroup.j.setVisibility(0);
      paramViewGroup.b();
      break label1318;
      label1887:
      paramViewGroup.g.setVisibility(0);
      break label1353;
      label1898:
      paramViewGroup.g.setVisibility(8);
      break label1353;
      label1910:
      paramViewGroup.f.setVisibility(8);
    }
    label1922:
    paramViewGroup.h.setVisibility(8);
    return localView;
  }
  
  public final int getViewTypeCount()
  {
    return 2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */