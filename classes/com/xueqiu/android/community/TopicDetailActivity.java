package com.xueqiu.android.community;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v7.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.d.a.b.d;
import com.d.a.b.e;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.t;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.j;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.base.util.q;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.an;
import com.xueqiu.android.community.a.ao;
import com.xueqiu.android.community.d.c.7;
import com.xueqiu.android.community.d.c.8;
import com.xueqiu.android.community.d.c.9;
import com.xueqiu.android.community.model.RecommendStock;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.TopicInfo;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.widget.PullToZoomListView;
import com.xueqiu.android.community.widget.TransparentHeader;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeCalGainType;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class TopicDetailActivity
  extends j<com.xueqiu.android.community.d.c>
  implements com.xueqiu.android.community.b.i
{
  public boolean p = true;
  private PullToZoomListView q;
  private TransparentHeader r;
  private View s;
  private ao t;
  private ImageButton u;
  private View v;
  private View w;
  private long x;
  private d y;
  
  public TopicDetailActivity()
  {
    e locale = n.a();
    locale.b = 2130838024;
    locale.c = 2130838024;
    locale.a = 2130838024;
    locale.q = new com.d.a.b.c.c((int)ay.a(73.0F));
    this.y = locale.b();
  }
  
  private static void a(ImageView paramImageView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramImageView.setImageResource(2130837830);
      return;
    }
    paramImageView.setImageResource(2130837829);
  }
  
  public final void a(RecommendStock paramRecommendStock, View paramView)
  {
    a((ImageView)paramView.findViewById(2131624428), paramRecommendStock.isHasExist());
  }
  
  public final void a(TopicInfo paramTopicInfo)
  {
    Object localObject1 = this.q;
    View localView = LayoutInflater.from(this).inflate(2130903224, null, false);
    TextView localTextView1 = (TextView)localView.findViewById(2131624691);
    ImageView localImageView = (ImageView)localView.findViewById(2131624690);
    Object localObject2 = localImageView.getLayoutParams();
    ((ViewGroup.LayoutParams)localObject2).width = (ay.c(this) * 5 / 21);
    ((ViewGroup.LayoutParams)localObject2).height = (ay.c(this) * 5 / 21);
    localImageView.setLayoutParams((ViewGroup.LayoutParams)localObject2);
    localObject2 = (TextView)localView.findViewById(2131624692);
    TextView localTextView2 = (TextView)localView.findViewById(2131624693);
    if (1 == paramTopicInfo.getTopicType())
    {
      Object localObject3 = n.a();
      ((e)localObject3).c = 2130838624;
      ((e)localObject3).b = 2130838624;
      ((e)localObject3).a = 2130838624;
      localObject3 = ((e)localObject3).b();
      com.d.a.b.f.a().a(paramTopicInfo.getTopicPicHeader(), localImageView, (d)localObject3, new o());
      localTextView1.setVisibility(8);
      localTextView2.setWidth((int)ay.a(140.0F));
      localTextView2.setHeight((int)ay.a(28.0F));
    }
    if (paramTopicInfo.getTopicType() == 0)
    {
      localImageView.setVisibility(8);
      if (paramTopicInfo.getTopicTitle() != null)
      {
        localTextView1.setText(paramTopicInfo.getTopicTitle());
        if (paramTopicInfo.getTopicTitle().length() <= 14) {
          break label382;
        }
        int j = (paramTopicInfo.getTopicTitle().length() - 14) / 2;
        int i = j;
        if (j > 3) {
          i = 3;
        }
        localTextView1.setTextSize(20 - i);
      }
    }
    for (;;)
    {
      localTextView2.setWidth((int)ay.a(155.0F));
      localTextView2.setHeight((int)ay.a(31.0F));
      if (paramTopicInfo.getTopicDescription() != null) {
        ((TextView)localObject2).setText(paramTopicInfo.getTopicDescription());
      }
      ((PullToZoomListView)localObject1).a(localView);
      if (paramTopicInfo.getTopicTitle() != null) {
        this.r.setTitle(paramTopicInfo.getTopicTitle());
      }
      localObject1 = n.a();
      ((e)localObject1).c = 2130838024;
      ((e)localObject1).b = 2130838024;
      ((e)localObject1).a = 2130838024;
      localObject1 = ((e)localObject1).b();
      com.d.a.b.f.a().a(paramTopicInfo.getTopicPic(), (d)localObject1, new com.d.a.b.f.a()
      {
        public final void a() {}
        
        public final void a(com.d.a.b.a.b paramAnonymousb) {}
        
        public final void a(String paramAnonymousString, View paramAnonymousView) {}
        
        public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
        {
          TopicDetailActivity.e(TopicDetailActivity.this).setHeaderBackground(paramAnonymousBitmap);
          TopicDetailActivity.a(TopicDetailActivity.this).a(paramAnonymousBitmap);
        }
      });
      return;
      label382:
      localTextView1.setTextSize(20.0F);
    }
  }
  
  public final void a(User paramUser, View paramView)
  {
    a((ImageView)paramView.findViewById(2131624428), paramUser.isFollowing());
  }
  
  public final void a(Cube paramCube, com.xueqiu.android.cube.a.c paramc)
  {
    paramc.a(paramCube, CubeCalGainType.TOTAL, false, false);
  }
  
  public final void a(ArrayList<Status> paramArrayList)
  {
    this.t.a().addAll(paramArrayList);
    if ((this.t.a().size() == 0) && (((com.xueqiu.android.community.d.c)this.j).e)) {
      this.w.setVisibility(0);
    }
    for (;;)
    {
      this.t.notifyDataSetChanged();
      this.s.setVisibility(8);
      return;
      this.q.removeFooterView(this.w);
    }
  }
  
  public final void a(List<RecommendStock> paramList)
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    localLinearLayout.setOrientation(1);
    localLinearLayout.removeAllViews();
    final Object localObject;
    if (((com.xueqiu.android.community.d.c)this.j).c())
    {
      localObject = LayoutInflater.from(this).inflate(2130903149, null, false);
      ((TextView)((View)localObject).findViewById(2131624420)).setText("相关股票");
      localLinearLayout.addView((View)localObject);
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject = (RecommendStock)paramList.next();
      final View localView1 = LayoutInflater.from(this).inflate(2130903150, null, false);
      localView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          Intent localIntent = q.a(paramAnonymousView.getContext(), new StockQuote(localObject.getName(), localObject.getSymbol()));
          paramAnonymousView.getContext().startActivity(localIntent);
          paramAnonymousView = new SNBEvent(2001, 9);
          paramAnonymousView.addProperty("special_id", String.valueOf(TopicDetailActivity.f(TopicDetailActivity.this)));
          paramAnonymousView.addProperty("symbol", localObject.getSymbol());
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      View localView2 = localView1.findViewById(2131624422);
      TextView localTextView1 = (TextView)localView1.findViewById(2131624423);
      TextView localTextView2 = (TextView)localView1.findViewById(2131624424);
      TextView localTextView3 = (TextView)localView1.findViewById(2131624425);
      TextView localTextView4 = (TextView)localView1.findViewById(2131624426);
      TextView localTextView5 = (TextView)localView1.findViewById(2131624429);
      View localView3 = localView1.findViewById(2131624427);
      a((ImageView)localView3.findViewById(2131624428), ((RecommendStock)localObject).isHasExist());
      localView3.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = (com.xueqiu.android.community.d.c)TopicDetailActivity.g(TopicDetailActivity.this);
          RecommendStock localRecommendStock = localObject;
          Object localObject = localView1;
          localObject = new c.8(paramAnonymousView, (TopicDetailActivity)paramAnonymousView.a, localRecommendStock, (View)localObject);
          if (localRecommendStock.isHasExist()) {
            paramAnonymousView.b.d(localRecommendStock.getSymbol(), (p)localObject);
          }
          for (;;)
          {
            localObject = new SNBEvent(2001, 5);
            ((SNBEvent)localObject).addProperty("special_id", String.valueOf(paramAnonymousView.g));
            ((SNBEvent)localObject).addProperty("symbol", localRecommendStock.getSymbol());
            com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
            return;
            paramAnonymousView.b.a(localRecommendStock.getSymbol(), 2, (p)localObject);
          }
        }
      });
      localTextView1.setText(String.format(Locale.CHINA, "%.2f", new Object[] { Double.valueOf(((RecommendStock)localObject).getCurrent()) }));
      localTextView3.setText(((RecommendStock)localObject).getName());
      localTextView4.setText(((RecommendStock)localObject).getSymbol());
      localView2.setBackgroundColor(ar.a().a(((RecommendStock)localObject).getChange()));
      localTextView2.setText(String.format(Locale.CHINA, "%+.2f(%+.2f)", new Object[] { Double.valueOf(((RecommendStock)localObject).getChange()), Double.valueOf(((RecommendStock)localObject).getPercentage()) }));
      localTextView5.setText(au.a("点评：", ((RecommendStock)localObject).getRecommendReason(), "#ff7700"));
      localLinearLayout.addView(localView1);
    }
    this.q.addHeaderView(localLinearLayout, null, false);
  }
  
  public final void b(final String paramString)
  {
    TextView localTextView = (TextView)this.q.findViewById(2131624693);
    localTextView.setVisibility(0);
    localTextView.setTag(paramString);
    localTextView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new an();
        paramAnonymousView.c = paramString;
        paramAnonymousView.d = paramString.substring(paramString.lastIndexOf("http"));
        paramAnonymousView.k.put("wx_title", paramString);
        paramAnonymousView.f = BitmapFactory.decodeResource(TopicDetailActivity.this.getResources(), 2130837614);
        aj.a(TopicDetailActivity.this, paramAnonymousView, null);
      }
    });
  }
  
  public final void b(ArrayList<Cube> paramArrayList)
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    localLinearLayout.setOrientation(1);
    localLinearLayout.removeAllViews();
    View localView;
    if (((com.xueqiu.android.community.d.c)this.j).c())
    {
      localView = LayoutInflater.from(this).inflate(2130903149, null, false);
      ((TextView)localView.findViewById(2131624420)).setText("相关组合");
      localLinearLayout.addView(localView);
    }
    int i = 0;
    while (i < paramArrayList.size())
    {
      localView = LayoutInflater.from(this).inflate(2130903292, null, false);
      final com.xueqiu.android.cube.a.c localc = new com.xueqiu.android.cube.a.c();
      localc.a(localView, LayoutInflater.from(this), new com.xueqiu.android.cube.a.b()
      {
        public final void a(Cube paramAnonymousCube) {}
        
        public final void b(Cube paramAnonymousCube)
        {
          com.xueqiu.android.community.d.c localc = (com.xueqiu.android.community.d.c)TopicDetailActivity.i(TopicDetailActivity.this);
          Object localObject = localc;
          com.xueqiu.android.base.util.f.a(paramAnonymousCube, (TopicDetailActivity)localc.a, new c.7(localc, (com.xueqiu.android.cube.a.c)localObject), false);
          localObject = new SNBEvent(2001, 4);
          ((SNBEvent)localObject).addProperty("special_id", String.valueOf(localc.g));
          ((SNBEvent)localObject).addProperty("symbol", paramAnonymousCube.getSymbol());
          com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
        }
        
        public final void c(Cube paramAnonymousCube)
        {
          Object localObject = new Intent(TopicDetailActivity.this, CubeActivity.class);
          ((Intent)localObject).putExtra("extra_cube_symbol", paramAnonymousCube.getSymbol());
          TopicDetailActivity.this.startActivity((Intent)localObject);
          localObject = new SNBEvent(2001, 8);
          ((SNBEvent)localObject).addProperty("special_id", String.valueOf(TopicDetailActivity.f(TopicDetailActivity.this)));
          ((SNBEvent)localObject).addProperty("symbol", paramAnonymousCube.getSymbol());
          com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
        }
      }, this.y);
      localc.a((Cube)paramArrayList.get(i), CubeCalGainType.TOTAL, false, false);
      localLinearLayout.addView(localView);
      localView = new View(this);
      localView.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
      localView.setBackgroundResource(2131558698);
      localLinearLayout.addView(localView);
      i += 1;
    }
    this.q.addHeaderView(localLinearLayout, null, false);
  }
  
  public final void b(List<User> paramList)
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    localLinearLayout.setOrientation(1);
    localLinearLayout.removeAllViews();
    final Object localObject;
    if (((com.xueqiu.android.community.d.c)this.j).c())
    {
      localObject = LayoutInflater.from(this).inflate(2130903149, null, false);
      ((TextView)((View)localObject).findViewById(2131624420)).setText("相关用户");
      localLinearLayout.addView((View)localObject);
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject = (User)paramList.next();
      final View localView1 = LayoutInflater.from(this).inflate(2130903151, null, false);
      localView1.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(TopicDetailActivity.this, UserProfileActivity.class);
          paramAnonymousView.putExtra("extra_user", localObject);
          TopicDetailActivity.this.startActivity(paramAnonymousView);
          paramAnonymousView = new SNBEvent(2001, 7);
          paramAnonymousView.addProperty("special_id", String.valueOf(TopicDetailActivity.f(TopicDetailActivity.this)));
          paramAnonymousView.addProperty("user_id", String.valueOf(localObject.getUserId()));
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
        }
      });
      ImageView localImageView = (ImageView)localView1.findViewById(2131624430);
      TextView localTextView1 = (TextView)localView1.findViewById(2131624400);
      TextView localTextView2 = (TextView)localView1.findViewById(2131624431);
      TextView localTextView3 = (TextView)localView1.findViewById(2131624429);
      View localView2 = localView1.findViewById(2131624427);
      a((ImageView)localView2.findViewById(2131624428), ((User)localObject).isFollowing());
      localView2.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = (com.xueqiu.android.community.d.c)TopicDetailActivity.h(TopicDetailActivity.this);
          User localUser = localObject;
          Object localObject = localView1;
          t localt = new t((TopicDetailActivity)paramAnonymousView.a);
          if (localUser.isFollowing()) {
            paramAnonymousView.b.h(localUser.getUserId(), localt);
          }
          for (;;)
          {
            localt.a((TopicDetailActivity)paramAnonymousView.a).b(new c.9(paramAnonymousView, localUser, (View)localObject));
            localObject = new SNBEvent(2001, 3);
            ((SNBEvent)localObject).addProperty("special_id", String.valueOf(paramAnonymousView.g));
            ((SNBEvent)localObject).addProperty("user_id", String.valueOf(localUser.getUserId()));
            com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
            return;
            paramAnonymousView.b.i(localUser.getUserId(), localt);
          }
        }
      });
      com.d.a.b.f.a().a(((User)localObject).getProfileLargeImageUrl(), localImageView, this.y);
      localTextView1.setText(((User)localObject).getScreenName());
      localTextView2.setText(String.format(Locale.CHINA, "%d 人关注", new Object[] { Integer.valueOf(((User)localObject).getFollowersCount()) }));
      localTextView3.setText(au.a("点评：", ((User)localObject).getRecommendReason(), "#ff7700"));
      localLinearLayout.addView(localView1);
    }
    this.q.addHeaderView(localLinearLayout, null, false);
  }
  
  public final void b(boolean paramBoolean)
  {
    View localView = this.v;
    if (paramBoolean) {}
    for (int i = 8;; i = 0)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  public final void c(boolean paramBoolean)
  {
    View localView = this.s;
    if (!paramBoolean) {}
    for (int i = 8;; i = 0)
    {
      localView.setVisibility(i);
      return;
    }
  }
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  public final void j()
  {
    this.t = new ao(this, this.x);
    this.q.setAdapter(this.t);
    this.q.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        int i = TopicDetailActivity.a(TopicDetailActivity.this).getHeaderViewsCount();
        if ((paramAnonymousInt - i >= 0) && (paramAnonymousInt < TopicDetailActivity.a(TopicDetailActivity.this).getCount() - TopicDetailActivity.a(TopicDetailActivity.this).getFooterViewsCount()) && (TopicDetailActivity.b(TopicDetailActivity.this)))
        {
          paramAnonymousAdapterView = (Status)TopicDetailActivity.c(TopicDetailActivity.this).a().get(paramAnonymousInt - i);
          if (paramAnonymousAdapterView.getType().equals("normal"))
          {
            paramAnonymousView = new Intent(TopicDetailActivity.this.getBaseContext(), StatusDetailActivity.class);
            paramAnonymousView.putExtra("status_id", paramAnonymousAdapterView.getStatusId());
            TopicDetailActivity.this.startActivityForResult(paramAnonymousView, 1);
            paramAnonymousView = new SNBEvent(2001, 2);
            paramAnonymousView.addProperty("special_id", String.valueOf(paramAnonymousAdapterView.getStatusId()));
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
          }
        }
      }
    });
    this.q.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        paramAnonymousInt2 = 0;
        if (paramAnonymousInt1 == 0)
        {
          paramAnonymousAbsListView = TopicDetailActivity.a(TopicDetailActivity.this).getChildAt(0);
          if (paramAnonymousAbsListView == null) {
            break label146;
          }
          paramAnonymousInt2 = paramAnonymousAbsListView.getTop();
          paramAnonymousInt1 = paramAnonymousAbsListView.getBottom();
        }
        for (;;)
        {
          if (paramAnonymousInt2 == 0) {
            TopicDetailActivity.e(TopicDetailActivity.this).b();
          }
          while (paramAnonymousInt1 < TopicDetailActivity.e(TopicDetailActivity.this).getHeight())
          {
            float f = (TopicDetailActivity.e(TopicDetailActivity.this).getHeight() - paramAnonymousInt1) / TopicDetailActivity.e(TopicDetailActivity.this).getHeight();
            TopicDetailActivity.e(TopicDetailActivity.this).getHeaderTitle().setAlpha(f);
            return;
            TopicDetailActivity.e(TopicDetailActivity.this).a();
          }
          TopicDetailActivity.e(TopicDetailActivity.this).getHeaderTitle().setAlpha(0.0F);
          return;
          TopicDetailActivity.e(TopicDetailActivity.this).getHeaderTitle().setAlpha(1.0F);
          return;
          label146:
          paramAnonymousInt3 = 0;
          paramAnonymousInt1 = paramAnonymousInt2;
          paramAnonymousInt2 = paramAnonymousInt3;
        }
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        }
        do
        {
          return;
        } while (paramAnonymousAbsListView.getLastVisiblePosition() != paramAnonymousAbsListView.getCount() - 1);
        ((com.xueqiu.android.community.d.c)TopicDetailActivity.d(TopicDetailActivity.this)).d();
      }
    });
  }
  
  public final void k()
  {
    View localView = LayoutInflater.from(this).inflate(2130903149, null, false);
    ((TextView)localView.findViewById(2131624420)).setText("相关文章");
    this.q.addHeaderView(localView, null, false);
  }
  
  public final void l()
  {
    this.q.removeFooterView(this.s);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1) && (paramInt2 == 5))
    {
      paramIntent = (Status)paramIntent.getParcelableExtra("back_status");
      if ((paramIntent != null) && (this.t != null))
      {
        Iterator localIterator = this.t.a().iterator();
        while (localIterator.hasNext())
        {
          Status localStatus = (Status)localIterator.next();
          if (localStatus.getStatusId() == paramIntent.getStatusId())
          {
            localStatus.setRetweetsCount(paramIntent.getRetweetsCount());
            localStatus.setCommentsCount(paramIntent.getCommentsCount());
            this.t.notifyDataSetChanged();
          }
        }
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.x = getIntent().getLongExtra("topic_id", -1L);
    if (this.x < 0L)
    {
      finish();
      return;
    }
    setContentView(2130903078);
    this.v = findViewById(2131624257);
    this.i.b().d();
    this.q = ((PullToZoomListView)findViewById(2131624017));
    this.r = ((TransparentHeader)findViewById(2131624217));
    this.u = this.r.getBackButton();
    this.u.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        TopicDetailActivity.this.finish();
      }
    });
    this.s = LayoutInflater.from(this).inflate(2130903580, null, false);
    this.s.findViewById(2131625836).setVisibility(0);
    this.q.addFooterView(this.s);
    this.w = LayoutInflater.from(this).inflate(2130903575, null, false);
    this.w.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    this.w.setVisibility(8);
    this.q.addFooterView(this.w);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\TopicDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */