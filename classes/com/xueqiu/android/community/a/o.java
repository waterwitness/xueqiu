package com.xueqiu.android.community.a;

import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.k;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.d.a.b.e;
import com.d.a.b.f;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.b.an;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SnowBallTextView;
import com.xueqiu.android.community.model.Comment;
import com.xueqiu.android.community.model.Interview;
import com.xueqiu.android.community.model.LiveNews;
import com.xueqiu.android.community.model.PublicTimeline;
import com.xueqiu.android.community.model.PublicTimelineStatus;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class o
  extends com.xueqiu.android.common.a.d<PublicTimeline>
{
  private LayoutInflater e;
  private Context f;
  private com.xueqiu.android.common.c g;
  private com.d.a.b.d h;
  private com.d.a.b.d i = n.a().b();
  private com.d.a.b.d j;
  private f k;
  private int l;
  private boolean m;
  private List<y> n;
  private List<y> o;
  private List<y> p;
  private int q;
  private int r;
  private int s;
  private int t;
  private DateFormat u;
  private com.xueqiu.android.base.b.ai v;
  
  public o(com.xueqiu.android.common.c paramc)
  {
    super(paramc.f());
    e locale = n.a();
    locale.b = 2130838024;
    locale.c = 2130838024;
    locale.a = 2130838024;
    locale.q = new com.d.a.b.c.c((int)ay.a(24.0F));
    this.j = locale.b();
    this.k = f.a();
    this.m = false;
    this.n = new ArrayList();
    this.o = new ArrayList();
    this.p = new ArrayList();
    this.q = 0;
    this.r = 0;
    this.s = 0;
    this.t = 1;
    this.u = new SimpleDateFormat("HH:mm");
    this.v = com.xueqiu.android.base.q.a().b();
    this.f = paramc.f();
    this.g = paramc;
    this.e = LayoutInflater.from(this.f);
    this.t = (((WindowManager)this.f.getSystemService("window")).getDefaultDisplay().getWidth() - (int)ay.a(24.0F));
    b.a();
    if (b.i())
    {
      paramc = n.a();
      paramc.c = 2130837904;
      paramc.a = 2130837904;
      paramc.b = 2130837904;
      this.h = paramc.b();
      this.l = 2130837904;
      return;
    }
    paramc = n.a();
    paramc.c = 2130837903;
    paramc.a = 2130837903;
    paramc.b = 2130837903;
    this.h = paramc.b();
    this.l = 2130837903;
  }
  
  public static int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return v.g;
    case 0: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 12: 
      return v.a;
    case 5: 
      return v.b;
    case 7: 
    case 8: 
    case 10: 
    case 11: 
      return v.d;
    case 6: 
      return v.c;
    case 9: 
      return v.e;
    }
    return v.f;
  }
  
  private View a(ViewGroup paramViewGroup, q paramq)
  {
    paramViewGroup = this.e.inflate(2130903212, paramViewGroup, false);
    paramq.b = ((ImageView)paramViewGroup.findViewById(2131624642));
    paramq.c = ((TextView)paramViewGroup.findViewById(2131624643));
    paramq.a = ((LinearLayout)paramViewGroup.findViewById(2131624644));
    paramq.f = ((TextView)paramViewGroup.findViewById(2131624639));
    paramq.g = ((TextView)paramViewGroup.findViewById(2131624640));
    paramq.d = ((ImageView)paramViewGroup.findViewById(2131624637));
    paramq.e = ((ImageView)paramViewGroup.findViewById(2131624638));
    paramq.h = ((LinearLayout)paramViewGroup.findViewById(2131624641));
    paramViewGroup.setTag(paramq);
    return paramViewGroup;
  }
  
  private View a(ViewGroup paramViewGroup, r paramr)
  {
    paramViewGroup = this.e.inflate(2130903213, paramViewGroup, false);
    paramr.a = ((TextView)paramViewGroup.findViewById(2131624647));
    paramr.b = ((LinearLayout)paramViewGroup.findViewById(2131624646));
    paramr.c = ((LinearLayout)paramViewGroup.findViewById(2131624645));
    paramViewGroup.setTag(paramr);
    return paramViewGroup;
  }
  
  private View a(ViewGroup paramViewGroup, s params)
  {
    paramViewGroup = this.e.inflate(2130903214, paramViewGroup, false);
    params.a = ((TextView)paramViewGroup.findViewById(2131624614));
    params.b = ((RecyclerView)paramViewGroup.findViewById(2131624648));
    paramViewGroup.setTag(params);
    return paramViewGroup;
  }
  
  private View a(ViewGroup paramViewGroup, t paramt)
  {
    paramViewGroup = this.e.inflate(2130903218, paramViewGroup, false);
    paramt.a = ((ImageView)paramViewGroup.findViewById(2131624669));
    paramt.b = ((TextView)paramViewGroup.findViewById(2131624670));
    paramt.c = ((TextView)paramViewGroup.findViewById(2131624671));
    paramViewGroup.setTag(paramt);
    return paramViewGroup;
  }
  
  private View a(ViewGroup paramViewGroup, u paramu)
  {
    paramViewGroup = this.e.inflate(2130903219, paramViewGroup, false);
    paramu.c = ((ImageView)paramViewGroup.findViewById(2131624673));
    paramu.d = ((TextView)paramViewGroup.findViewById(2131624674));
    paramu.a = ((LinearLayout)paramViewGroup.findViewById(2131624675));
    paramu.b = ((LinearLayout)paramViewGroup.findViewById(2131624672));
    paramu.g = ((TextView)paramViewGroup.findViewById(2131624678));
    paramu.h = ((TextView)paramViewGroup.findViewById(2131624679));
    paramu.i = ((TextView)paramViewGroup.findViewById(2131624682));
    paramu.j = ((TextView)paramViewGroup.findViewById(2131624683));
    paramu.e = ((ImageView)paramViewGroup.findViewById(2131624676));
    paramu.f = ((ImageView)paramViewGroup.findViewById(2131624677));
    paramu.k = ((TextView)paramViewGroup.findViewById(2131624681));
    paramu.l = ((ImageView)paramViewGroup.findViewById(2131624680));
    paramViewGroup.setTag(paramu);
    return paramViewGroup;
  }
  
  public static boolean b(int paramInt)
  {
    return paramInt == v.a;
  }
  
  public final void c(int paramInt)
  {
    if (getCount() <= paramInt) {}
    final PublicTimeline localPublicTimeline;
    final JsonObject localJsonObject;
    do
    {
      return;
      localPublicTimeline = (PublicTimeline)getItem(paramInt);
      localJsonObject = (JsonObject)m.a().fromJson(localPublicTimeline.getData(), JsonObject.class);
    } while ((localPublicTimeline.getCategory() != 9) || (!"STOCK".equals(localJsonObject.get("type").getAsString())));
    final List localList = (List)m.a().fromJson(localJsonObject.get("elements").getAsJsonArray(), new TypeToken() {}.getType());
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((RecommendStock)localIterator.next()).getSymbol());
    }
    this.v.a(localArrayList, false, new com.xueqiu.android.base.b.p()
    {
      public final void a(com.android.volley.y paramAnonymousy)
      {
        com.xueqiu.android.base.util.v.a("lulei", paramAnonymousy.toString());
      }
    });
  }
  
  public final void d(final int paramInt)
  {
    Object localObject1 = null;
    if (getCount() <= paramInt) {}
    do
    {
      return;
      localObject2 = (PublicTimeline)getItem(paramInt);
    } while (((PublicTimeline)localObject2).getCategory() != 9);
    Object localObject5 = (JsonObject)m.a().fromJson(((PublicTimeline)localObject2).getData(), JsonObject.class);
    final String str = ((JsonObject)localObject5).get("type").getAsString();
    if (("STOCK".equals(str)) || ("CUBE".equals(str)))
    {
      localObject2 = null;
      localObject1 = "";
    }
    while ("STOCK".equals(str))
    {
      localObject5 = ((List)m.a().fromJson(((JsonObject)localObject5).get("elements").getAsJsonArray(), new TypeToken() {}.getType())).iterator();
      for (;;)
      {
        localObject3 = localObject1;
        localObject4 = localObject2;
        if (!((Iterator)localObject5).hasNext()) {
          break;
        }
        localObject1 = String.format("%s,%s", new Object[] { localObject1, ((RecommendStock)((Iterator)localObject5).next()).getSymbol() });
      }
      localObject2 = "";
    }
    if ("CUBE".equals(str))
    {
      localObject5 = ((JsonObject)localObject5).get("elements").getAsJsonArray();
      int i1 = 0;
      for (;;)
      {
        localObject3 = localObject1;
        localObject4 = localObject2;
        if (i1 >= ((JsonArray)localObject5).size()) {
          break;
        }
        localObject1 = String.format("%s,%s", new Object[] { localObject1, ((JsonArray)localObject5).get(i1).getAsJsonObject().get("id").getAsString() });
        i1 += 1;
      }
    }
    Object localObject3 = localObject1;
    Object localObject4 = localObject2;
    if ("USER".equals(str))
    {
      localObject5 = ((List)m.a().fromJson(((JsonObject)localObject5).get("elements").getAsJsonArray(), new TypeToken() {}.getType())).iterator();
      for (;;)
      {
        localObject3 = localObject1;
        localObject4 = localObject2;
        if (!((Iterator)localObject5).hasNext()) {
          break;
        }
        localObject2 = String.format("%s,%d", new Object[] { localObject2, Long.valueOf(((User)((Iterator)localObject5).next()).getUserId()) });
      }
    }
    localObject1 = this.v;
    Object localObject2 = new com.xueqiu.android.base.b.p()
    {
      public final void a(com.android.volley.y paramAnonymousy) {}
    };
    ((com.xueqiu.android.base.b.ai)localObject1).h.d((String)localObject4, (String)localObject3, (com.xueqiu.android.base.b.p)localObject2);
  }
  
  public final int getItemViewType(int paramInt)
  {
    return a(((PublicTimeline)getItem(paramInt)).getCategory()) - 1;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    PublicTimeline localPublicTimeline = (PublicTimeline)getItem(paramInt);
    Object localObject1;
    Object localObject5;
    Object localObject3;
    Object localObject2;
    Object localObject4;
    if (paramInt != 0)
    {
      localObject1 = (PublicTimeline)getItem(paramInt - 1);
      if (localPublicTimeline.getCategory() == ((PublicTimeline)localObject1).getCategory())
      {
        this.m = false;
        if (paramView != null) {
          break label906;
        }
        if (a(localPublicTimeline.getCategory()) != v.a) {
          break label468;
        }
        localObject5 = new u(this);
        paramView = a(paramViewGroup, (u)localObject5);
        localObject1 = null;
        localObject3 = null;
        localObject2 = null;
        localObject4 = null;
        paramViewGroup = null;
      }
    }
    for (;;)
    {
      label94:
      if ((a(localPublicTimeline.getCategory()) == v.a) && (localObject5 != null))
      {
        localObject2 = (PublicTimelineStatus)m.a().fromJson(localPublicTimeline.getData(), PublicTimelineStatus.class);
        if (((u)localObject5).m.m)
        {
          localObject1 = localPublicTimeline.getHeaderText();
          localObject3 = localPublicTimeline.getHeaderIcon();
          ((u)localObject5).b.setVisibility(0);
          localObject4 = ((u)localObject5).d;
          paramViewGroup = (ViewGroup)localObject1;
          if (localObject1 == null) {
            paramViewGroup = "";
          }
          ((TextView)localObject4).setText(paramViewGroup);
          ((u)localObject5).m.k.a((String)localObject3, ((u)localObject5).m.i, new u.1((u)localObject5));
          if (localPublicTimeline.getTarget() == null)
          {
            ((u)localObject5).b.setClickable(false);
            label238:
            if (!((PublicTimelineStatus)localObject2).isPromotion()) {
              break label1423;
            }
            ((u)localObject5).i.setVisibility(8);
            ((u)localObject5).j.setVisibility(8);
            label266:
            if (((PublicTimelineStatus)localObject2).getPicType() != 0) {
              break label1444;
            }
            ((u)localObject5).e.setVisibility(8);
            ((u)localObject5).f.setVisibility(8);
            label294:
            ((u)localObject5).g.setText(((PublicTimelineStatus)localObject2).getTopicTitle());
            ((u)localObject5).h.setText(com.xueqiu.android.base.util.ai.b(((PublicTimelineStatus)localObject2).getTopicDesc(), ((u)localObject5).m.f));
            ((u)localObject5).j.setText(String.valueOf(((PublicTimelineStatus)localObject2).getReplyCount()));
            ((u)localObject5).i.setText(String.valueOf(((PublicTimelineStatus)localObject2).getRetweetCount()));
            if (((PublicTimelineStatus)localObject2).getUser() == null) {
              break label1622;
            }
            ((u)localObject5).k.setVisibility(0);
            ((u)localObject5).l.setVisibility(0);
            ((u)localObject5).k.setText(((PublicTimelineStatus)localObject2).getUser().getScreenName());
            ((u)localObject5).m.k.a(((PublicTimelineStatus)localObject2).getUser().getProfileImageUrl(), ((u)localObject5).l, ((u)localObject5).m.j);
            label437:
            ((u)localObject5).a.setOnClickListener(new u.5((u)localObject5, (PublicTimelineStatus)localObject2, localPublicTimeline));
          }
        }
      }
      label468:
      label906:
      label1423:
      label1444:
      label1622:
      label2145:
      label2158:
      do
      {
        return paramView;
        this.m = true;
        break;
        if (a(localPublicTimeline.getCategory()) == v.b)
        {
          localObject4 = new q(this);
          paramView = a(paramViewGroup, (q)localObject4);
          localObject5 = null;
          localObject2 = null;
          localObject1 = null;
          localObject3 = null;
          paramViewGroup = null;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) == v.d)
        {
          localObject1 = new t(this);
          paramView = a(paramViewGroup, (t)localObject1);
          localObject3 = null;
          localObject2 = null;
          paramViewGroup = null;
          localObject4 = null;
          localObject5 = null;
          break label94;
        }
        Object localObject6;
        if (a(localPublicTimeline.getCategory()) == v.c)
        {
          localObject1 = new r(this);
          paramView = a(paramViewGroup, (r)localObject1);
          localObject4 = null;
          localObject5 = null;
          localObject3 = null;
          localObject2 = null;
          localObject6 = null;
          paramViewGroup = (ViewGroup)localObject1;
          localObject1 = localObject6;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) == v.e)
        {
          localObject3 = new s(this);
          paramView = a(paramViewGroup, (s)localObject3);
          localObject2 = null;
          localObject1 = null;
          paramViewGroup = null;
          localObject4 = null;
          localObject5 = null;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) == v.f)
        {
          localObject2 = new p(this);
          paramView = this.e.inflate(2130903210, paramViewGroup, false);
          ((p)localObject2).a = ((LinearLayout)paramView.findViewById(2131624634));
          ((p)localObject2).b = ((LinearLayout)paramView.findViewById(2131624631));
          ((p)localObject2).c = ((ImageView)paramView.findViewById(2131624632));
          ((p)localObject2).d = ((TextView)paramView.findViewById(2131624633));
          ((p)localObject2).e = ((SnowBallTextView)paramView.findViewById(2131624635));
          ((p)localObject2).f = ((ImageView)paramView.findViewById(2131624399));
          ((p)localObject2).g = ((TextView)paramView.findViewById(2131624400));
          ((p)localObject2).h = ((TextView)paramView.findViewById(2131624457));
          ((p)localObject2).i = ((SnowBallTextView)paramView.findViewById(2131624403));
          paramView.setTag(localObject2);
          paramViewGroup = null;
          localObject4 = null;
          localObject5 = null;
          localObject1 = null;
          localObject3 = null;
          break label94;
        }
        paramView = this.e.inflate(2130903577, paramViewGroup, false);
        paramView.setVisibility(8);
        paramViewGroup = null;
        localObject4 = null;
        localObject5 = null;
        localObject1 = null;
        localObject3 = null;
        localObject2 = null;
        break label94;
        if (a(localPublicTimeline.getCategory()) == v.a)
        {
          if ((paramView.getTag() instanceof u))
          {
            localObject5 = (u)paramView.getTag();
            localObject1 = null;
            localObject3 = null;
            localObject2 = null;
            localObject4 = null;
            paramViewGroup = null;
            break label94;
          }
          localObject5 = new u(this);
          paramView = a(paramViewGroup, (u)localObject5);
          localObject1 = null;
          localObject3 = null;
          localObject2 = null;
          localObject4 = null;
          paramViewGroup = null;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) == v.b)
        {
          if ((paramView.getTag() instanceof q))
          {
            localObject4 = (q)paramView.getTag();
            localObject5 = null;
            localObject2 = null;
            localObject1 = null;
            localObject3 = null;
            paramViewGroup = null;
            break label94;
          }
          localObject4 = new q(this);
          paramView = a(paramViewGroup, (q)localObject4);
          localObject5 = null;
          localObject2 = null;
          localObject1 = null;
          localObject3 = null;
          paramViewGroup = null;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) == v.d)
        {
          if ((paramView.getTag() instanceof t))
          {
            localObject1 = (t)paramView.getTag();
            localObject3 = null;
            localObject2 = null;
            paramViewGroup = null;
            localObject4 = null;
            localObject5 = null;
            break label94;
          }
          localObject1 = new t(this);
          paramView = a(paramViewGroup, (t)localObject1);
          localObject3 = null;
          localObject2 = null;
          paramViewGroup = null;
          localObject4 = null;
          localObject5 = null;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) == v.c)
        {
          if ((paramView.getTag() instanceof r))
          {
            paramViewGroup = (r)paramView.getTag();
            localObject4 = null;
            localObject5 = null;
            localObject3 = null;
            localObject2 = null;
            localObject1 = null;
            break label94;
          }
          localObject1 = new r(this);
          paramView = a(paramViewGroup, (r)localObject1);
          localObject4 = null;
          localObject5 = null;
          localObject3 = null;
          localObject2 = null;
          localObject6 = null;
          paramViewGroup = (ViewGroup)localObject1;
          localObject1 = localObject6;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) == v.e)
        {
          if ((paramView.getTag() instanceof s))
          {
            localObject3 = (s)paramView.getTag();
            localObject2 = null;
            localObject1 = null;
            paramViewGroup = null;
            localObject4 = null;
            localObject5 = null;
            break label94;
          }
          localObject3 = new s(this);
          paramView = a(paramViewGroup, (s)localObject3);
          localObject2 = null;
          localObject1 = null;
          paramViewGroup = null;
          localObject4 = null;
          localObject5 = null;
          break label94;
        }
        if (a(localPublicTimeline.getCategory()) != v.f) {
          break label4266;
        }
        localObject2 = (p)paramView.getTag();
        localObject1 = null;
        localObject3 = null;
        paramViewGroup = null;
        localObject4 = null;
        localObject5 = null;
        break label94;
        ((u)localObject5).b.setClickable(true);
        ((u)localObject5).b.setOnClickListener(new u.2((u)localObject5, localPublicTimeline));
        break label238;
        ((u)localObject5).b.setVisibility(8);
        break label238;
        ((u)localObject5).i.setVisibility(0);
        ((u)localObject5).j.setVisibility(0);
        break label266;
        if (((PublicTimelineStatus)localObject2).getPicType() == 1)
        {
          ((u)localObject5).e.setVisibility(8);
          ((u)localObject5).f.setVisibility(0);
          ((u)localObject5).m.k.a(((PublicTimelineStatus)localObject2).getTopicPic(), ((u)localObject5).m.h, new u.3((u)localObject5));
          break label294;
        }
        if (((PublicTimelineStatus)localObject2).getPicType() != 2) {
          break label294;
        }
        ((u)localObject5).f.setVisibility(8);
        ((u)localObject5).e.setVisibility(0);
        paramViewGroup = ((u)localObject5).e.getLayoutParams();
        paramViewGroup.width = ((u)localObject5).m.t;
        paramViewGroup.height = ((int)(((u)localObject5).m.t * ((PublicTimelineStatus)localObject2).proportion()));
        ((u)localObject5).e.setLayoutParams(paramViewGroup);
        ((u)localObject5).m.k.a(((PublicTimelineStatus)localObject2).getTopicPicHd(), ((u)localObject5).m.h, new u.4((u)localObject5));
        break label294;
        ((u)localObject5).k.setVisibility(4);
        ((u)localObject5).l.setVisibility(4);
        break label437;
        if ((a(localPublicTimeline.getCategory()) == v.b) && (localObject4 != null))
        {
          paramViewGroup = (Interview)m.a().fromJson(localPublicTimeline.getData(), Interview.class);
          ((q)localObject4).c.setText(localPublicTimeline.getHeaderText());
          ((q)localObject4).i.k.a(localPublicTimeline.getHeaderIcon(), ((q)localObject4).b, ((q)localObject4).i.i);
          if (paramViewGroup.getPicType() == 0)
          {
            ((q)localObject4).d.setVisibility(8);
            ((q)localObject4).e.setVisibility(8);
            ((q)localObject4).f.setText(paramViewGroup.getTitle());
            ((q)localObject4).g.setText(com.xueqiu.android.base.util.ai.b(paramViewGroup.getDescription(), ((q)localObject4).i.f));
            ((q)localObject4).h.removeAllViews();
            if (paramViewGroup.getUsers() == null) {
              break label2158;
            }
            if (paramViewGroup.getUsers().size() <= 2) {
              break label2145;
            }
          }
          for (paramInt = 2;; paramInt = paramViewGroup.getUsers().size())
          {
            int i1 = 0;
            while (i1 < paramInt)
            {
              if (paramViewGroup.getUsers().get(i1) != null)
              {
                localObject1 = ((q)localObject4).i.e.inflate(2130903179, ((q)localObject4).h, false);
                localObject2 = (User)paramViewGroup.getUsers().get(i1);
                if (((User)localObject2).getScreenName() != null) {
                  ((TextView)((View)localObject1).findViewById(2131624538)).setText(((User)localObject2).getScreenName());
                }
                if (((User)localObject2).getProfileImageUrl() != null)
                {
                  localObject3 = (ImageView)((View)localObject1).findViewById(2131624537);
                  ((q)localObject4).i.k.a(((User)localObject2).getProfileImageUrl(), (ImageView)localObject3, ((q)localObject4).i.j);
                }
                ((q)localObject4).h.addView((View)localObject1);
              }
              i1 += 1;
            }
            if (paramViewGroup.getPicType() == 1)
            {
              ((q)localObject4).d.setVisibility(8);
              ((q)localObject4).e.setVisibility(0);
              ((q)localObject4).i.k.a(paramViewGroup.getImageUrl(), ((q)localObject4).i.h, new q.1((q)localObject4));
              break;
            }
            if (paramViewGroup.getPicType() != 2) {
              break;
            }
            ((q)localObject4).d.setVisibility(0);
            ((q)localObject4).e.setVisibility(8);
            localObject1 = ((q)localObject4).d.getLayoutParams();
            ((ViewGroup.LayoutParams)localObject1).width = ((q)localObject4).i.t;
            ((ViewGroup.LayoutParams)localObject1).height = ((int)(((q)localObject4).i.t * paramViewGroup.proportion()));
            ((q)localObject4).d.setLayoutParams((ViewGroup.LayoutParams)localObject1);
            ((q)localObject4).i.k.a(paramViewGroup.getImageUrl(), ((q)localObject4).i.h, new q.2((q)localObject4));
            break;
          }
          ((q)localObject4).a.setOnClickListener(new q.3((q)localObject4, paramViewGroup));
          return paramView;
        }
        if ((a(localPublicTimeline.getCategory()) != v.d) || (localObject1 == null)) {
          break label2707;
        }
        paramInt = localPublicTimeline.getCategory();
        paramViewGroup = (JsonObject)m.a().fromJson(localPublicTimeline.getData(), JsonObject.class);
        ((t)localObject1).b.setVisibility(0);
        ((t)localObject1).c.setVisibility(0);
        if (paramInt == 7)
        {
          localObject2 = paramViewGroup.get("tag").getAsString();
          localObject3 = paramViewGroup.get("content").getAsString();
          long l1 = paramViewGroup.get("id").getAsLong();
          ((t)localObject1).b.setText((CharSequence)localObject2);
          ((t)localObject1).c.setText((CharSequence)localObject3);
          paramInt = ((String)localObject2).length() % 3;
          localObject4 = ((t)localObject1).a;
          switch (paramInt)
          {
          default: 
            paramViewGroup = com.xueqiu.android.base.r.h(2130838567);
          }
          for (;;)
          {
            ((ImageView)localObject4).setImageDrawable(paramViewGroup);
            ((t)localObject1).a.setOnClickListener(new t.1((t)localObject1, (String)localObject3, l1, (String)localObject2, paramInt));
            return paramView;
            paramViewGroup = com.xueqiu.android.base.r.h(2130838565);
            continue;
            paramViewGroup = com.xueqiu.android.base.r.h(2130838566);
          }
        }
        ((t)localObject1).d.k.a(paramViewGroup.get("pic").getAsString(), ((t)localObject1).d.i, new t.2((t)localObject1));
        if (paramInt == 8)
        {
          ((t)localObject1).b.setText(paramViewGroup.get("title").getAsString());
          ((t)localObject1).c.setText(paramViewGroup.get("description").getAsString());
          ((t)localObject1).a.setOnClickListener(new t.3((t)localObject1, paramViewGroup));
          return paramView;
        }
        if (paramInt == 10)
        {
          ((t)localObject1).b.setVisibility(8);
          ((t)localObject1).c.setVisibility(8);
          ((t)localObject1).a.setOnClickListener(new t.4((t)localObject1, paramViewGroup));
          localObject1 = new SNBEvent(1100, 21);
          ((SNBEvent)localObject1).addProperty("url", com.xueqiu.android.base.util.r.a(paramViewGroup, "url", ""));
          ((SNBEvent)localObject1).addProperty("ad_id", com.xueqiu.android.base.util.r.a(paramViewGroup, "ad_id", ""));
          i.a().a((SNBEvent)localObject1);
          return paramView;
        }
      } while (paramInt != 11);
      ((t)localObject1).b.setVisibility(8);
      ((t)localObject1).c.setVisibility(8);
      ((t)localObject1).a.setOnClickListener(new t.5((t)localObject1, paramViewGroup));
      localObject1 = new SNBEvent(1100, 21);
      ((SNBEvent)localObject1).addProperty("url", com.xueqiu.android.base.util.r.a(paramViewGroup, "url", ""));
      ((SNBEvent)localObject1).addProperty("ad_id", com.xueqiu.android.base.util.r.a(paramViewGroup, "ad_id", ""));
      i.a().a((SNBEvent)localObject1);
      return paramView;
      label2707:
      if ((a(localPublicTimeline.getCategory()) == v.c) && (paramViewGroup != null))
      {
        localObject1 = (LiveNews)m.a().fromJson(localPublicTimeline.getData(), LiveNews.class);
        if (paramViewGroup.d.m) {
          paramViewGroup.b.setVisibility(0);
        }
        for (;;)
        {
          paramViewGroup.b.setOnClickListener(new r.1(paramViewGroup));
          localObject2 = paramViewGroup.a;
          localObject3 = paramViewGroup.d;
          localObject4 = new SpannableStringBuilder();
          ((SpannableStringBuilder)localObject4).append(((o)localObject3).u.format(((LiveNews)localObject1).getCreatedAt()));
          ((SpannableStringBuilder)localObject4).setSpan(new ForegroundColorSpan(Color.parseColor("#ff7700")), 0, ((SpannableStringBuilder)localObject4).length(), 17);
          ((SpannableStringBuilder)localObject4).append(" - ");
          ((SpannableStringBuilder)localObject4).append(com.xueqiu.android.base.util.ai.b(((LiveNews)localObject1).getText(), ((o)localObject3).f));
          ((TextView)localObject2).setText((CharSequence)localObject4);
          paramViewGroup.c.setOnClickListener(new r.2(paramViewGroup, (LiveNews)localObject1));
          return paramView;
          paramViewGroup.b.setVisibility(8);
        }
      }
      if ((a(localPublicTimeline.getCategory()) == v.e) && (localObject3 != null))
      {
        paramViewGroup = (JsonObject)m.a().fromJson(localPublicTimeline.getData(), JsonObject.class);
        localObject2 = paramViewGroup.get("type").getAsString();
        localObject1 = paramViewGroup.get("elements").getAsJsonArray();
        ((s)localObject3).b.setLayoutManager(new k(0));
        if ("USER".equals(localObject2)) {
          if ((!paramViewGroup.has("name")) || (paramViewGroup.get("name") == null)) {
            break label4259;
          }
        }
      }
      label4117:
      label4193:
      label4217:
      label4238:
      label4252:
      label4259:
      for (paramViewGroup = paramViewGroup.get("name").getAsString();; paramViewGroup = "推荐用户")
      {
        ((s)localObject3).a.setText(paramViewGroup);
        ((s)localObject3).b.setMinimumHeight((int)ay.a(206.0F));
        if (((s)localObject3).c.n.size() <= ((s)localObject3).c.q) {
          ((s)localObject3).c.n.add(new y(((s)localObject3).c.f, 2, (JsonArray)localObject1));
        }
        for (;;)
        {
          ((s)localObject3).b.setAdapter((android.support.v7.widget.s)((s)localObject3).c.n.get(((s)localObject3).c.q));
          ((y)((s)localObject3).c.n.get(((s)localObject3).c.q)).b();
          ((y)((s)localObject3).c.n.get(((s)localObject3).c.q)).d = localPublicTimeline.getTimelineId();
          ((s)localObject3).c.q = ((((s)localObject3).c.q + 1) % 3);
          return paramView;
          ((y)((s)localObject3).c.n.get(((s)localObject3).c.q)).a((JsonArray)localObject1);
        }
        if ("STOCK".equals(localObject2)) {
          if ((!paramViewGroup.has("name")) || (paramViewGroup.get("name") == null)) {
            break label4252;
          }
        }
        for (paramViewGroup = paramViewGroup.get("name").getAsString();; paramViewGroup = "推荐股票")
        {
          ((s)localObject3).a.setText(paramViewGroup);
          ((s)localObject3).b.setMinimumHeight((int)ay.a(178.0F));
          if (((s)localObject3).c.p.size() <= ((s)localObject3).c.s) {
            ((s)localObject3).c.p.add(new y(((s)localObject3).c.f, 3, (JsonArray)localObject1));
          }
          for (;;)
          {
            ((s)localObject3).b.setAdapter((android.support.v7.widget.s)((s)localObject3).c.p.get(((s)localObject3).c.s));
            ((y)((s)localObject3).c.p.get(((s)localObject3).c.s)).b();
            ((y)((s)localObject3).c.p.get(((s)localObject3).c.s)).d = localPublicTimeline.getTimelineId();
            ((s)localObject3).c.s = ((((s)localObject3).c.s + 1) % 3);
            return paramView;
            ((y)((s)localObject3).c.p.get(((s)localObject3).c.s)).a((JsonArray)localObject1);
          }
          if (!"CUBE".equals(localObject2)) {
            break;
          }
          if ((paramViewGroup.has("name")) && (paramViewGroup.get("name") != null)) {}
          for (paramViewGroup = paramViewGroup.get("name").getAsString();; paramViewGroup = "推荐组合")
          {
            ((s)localObject3).a.setText(paramViewGroup);
            ((s)localObject3).b.setMinimumHeight((int)ay.a(250.0F));
            if (((s)localObject3).c.o.size() <= ((s)localObject3).c.r) {
              ((s)localObject3).c.o.add(new y(((s)localObject3).c.f, 1, (JsonArray)localObject1));
            }
            for (;;)
            {
              ((s)localObject3).b.setAdapter((android.support.v7.widget.s)((s)localObject3).c.o.get(((s)localObject3).c.r));
              ((y)((s)localObject3).c.o.get(((s)localObject3).c.r)).b();
              ((y)((s)localObject3).c.o.get(((s)localObject3).c.r)).d = localPublicTimeline.getTimelineId();
              ((s)localObject3).c.r = ((((s)localObject3).c.r + 1) % 3);
              return paramView;
              ((y)((s)localObject3).c.o.get(((s)localObject3).c.r)).a((JsonArray)localObject1);
            }
            if ((a(localPublicTimeline.getCategory()) != v.f) || (localObject2 == null)) {
              break;
            }
            localObject3 = (Status)m.a().fromJson(localPublicTimeline.getData(), Status.class);
            if (((p)localObject2).j.m)
            {
              localObject1 = localPublicTimeline.getHeaderText();
              localObject4 = localPublicTimeline.getHeaderIcon();
              ((p)localObject2).b.setVisibility(0);
              localObject5 = ((p)localObject2).d;
              paramViewGroup = (ViewGroup)localObject1;
              if (localObject1 == null) {
                paramViewGroup = "";
              }
              ((TextView)localObject5).setText(paramViewGroup);
              ((p)localObject2).j.k.a((String)localObject4, ((p)localObject2).j.i, new p.1((p)localObject2));
              if (localPublicTimeline.getTarget() == null)
              {
                ((p)localObject2).b.setClickable(false);
                ((p)localObject2).e.setText(com.xueqiu.android.base.util.ai.a(((Status)localObject3).getDescription(), ((p)localObject2).j.f, ((p)localObject2).e));
                if ((((Status)localObject3).getAnswers() != null) && (((Status)localObject3).getAnswers().size() > 0))
                {
                  paramViewGroup = (Comment)((Status)localObject3).getAnswers().get(0);
                  ((p)localObject2).i.setText(com.xueqiu.android.base.util.ai.a(paramViewGroup.getText(), ((p)localObject2).j.f, ((p)localObject2).e));
                  if (((Status)localObject3).getUser() == null) {
                    break label4217;
                  }
                  ((p)localObject2).g.setVisibility(0);
                  ((p)localObject2).f.setVisibility(0);
                  ((p)localObject2).g.setText(paramViewGroup.getUser().getScreenName());
                  ((p)localObject2).j.k.a(paramViewGroup.getUser().getProfileImageUrl(), ((p)localObject2).f, ((p)localObject2).j.j);
                  if (TextUtils.isEmpty(paramViewGroup.getUser().getVerifiedDescription())) {
                    break label4193;
                  }
                  paramViewGroup = paramViewGroup.getUser().getVerifiedDescription();
                }
              }
            }
            for (;;)
            {
              ((p)localObject2).h.setText(paramViewGroup);
              for (;;)
              {
                ((p)localObject2).a.setOnClickListener(new p.3((p)localObject2, (Status)localObject3, localPublicTimeline));
                return paramView;
                ((p)localObject2).b.setClickable(true);
                ((p)localObject2).b.setOnClickListener(new p.2((p)localObject2, localPublicTimeline));
                break;
                ((p)localObject2).b.setVisibility(8);
                break;
                if (TextUtils.isEmpty(paramViewGroup.getUser().getDescription())) {
                  break label4238;
                }
                paramViewGroup = paramViewGroup.getUser().getDescription();
                break label4117;
                ((p)localObject2).g.setVisibility(4);
                ((p)localObject2).f.setVisibility(4);
              }
              paramViewGroup = "";
            }
          }
        }
      }
      label4266:
      paramViewGroup = null;
      localObject4 = null;
      localObject5 = null;
      localObject1 = null;
      localObject3 = null;
      localObject2 = null;
    }
  }
  
  public final int getViewTypeCount()
  {
    return 7;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */