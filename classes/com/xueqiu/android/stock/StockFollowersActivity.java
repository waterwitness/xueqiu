package com.xueqiu.android.stock;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.d;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.a;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.parser.GroupParser;
import com.xueqiu.android.common.model.parser.UserParser;
import com.xueqiu.android.community.UserListActivity;
import com.xueqiu.android.community.UserProfileActivity;
import com.xueqiu.android.community.a.ba;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.community.model.User.Gender;
import com.xueqiu.android.community.model.UserVerifyType;
import com.xueqiu.android.message.GroupProfileActivity;
import com.xueqiu.android.message.IMGroupListActivity;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.IMGroup.Parser;
import com.xueqiu.android.stock.model.Stock;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class StockFollowersActivity
  extends b
{
  private String j;
  private String k;
  private JSONObject p = null;
  private Context q;
  
  private View a(final User paramUser)
  {
    View localView = View.inflate(this.q, 2130903170, null);
    localView.setClickable(true);
    try
    {
      Object localObject1 = Html.fromHtml(paramUser.getScreenName());
      ((TextView)localView.findViewById(2131624440)).setText((CharSequence)localObject1);
      localObject1 = (ImageView)localView.findViewById(2131624464);
      if (!c.a(paramUser.getProfileImageUrl()))
      {
        localObject2 = paramUser.getProfileImageUrl();
        localGender = paramUser.getGender();
        if ((localObject2 == null) || (((String)localObject2).equals("")))
        {
          localObject1 = (TextView)localView.findViewById(2131624441);
          if (c.a(paramUser.getRemark())) {
            break label316;
          }
          ((TextView)localObject1).setText("(" + Html.fromHtml(paramUser.getRemark()) + ")");
          ((TextView)localObject1).setVisibility(0);
          localObject2 = ba.a(paramUser, this.q);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            if (c.a(paramUser.getVerifiedDescription())) {
              break label325;
            }
            localObject1 = paramUser.getVerifiedDescription();
          }
        }
      }
      try
      {
        localObject2 = Html.fromHtml((String)localObject1);
        localObject1 = localObject2;
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          String str;
          d locald;
          continue;
          str.setVisibility(8);
        }
      }
      ((TextView)localView.findViewById(2131624457)).setText((CharSequence)localObject1);
      localObject1 = (ImageView)localView.findViewById(2131624401);
      if (paramUser.isVerified())
      {
        ((ImageView)localObject1).setVisibility(0);
        ((ImageView)localObject1).setImageResource(paramUser.getVerifyType().iconResId());
        localView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(StockFollowersActivity.b(StockFollowersActivity.this), UserProfileActivity.class);
            paramAnonymousView.putExtra("extra_user", paramUser);
            StockFollowersActivity.this.startActivity(paramAnonymousView);
          }
        });
        return localView;
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        Object localObject2;
        final User.Gender localGender;
        str = paramUser.getScreenName();
        continue;
        locald = n.a().b();
        f.a().a((String)localObject2, str, locald, new o()
        {
          public final void a(String paramAnonymousString, View paramAnonymousView)
          {
            if (localGender == User.Gender.FEMALE)
            {
              ((ImageView)paramAnonymousView).setImageDrawable(StockFollowersActivity.e(StockFollowersActivity.this));
              return;
            }
            ((ImageView)paramAnonymousView).setImageDrawable(StockFollowersActivity.f(StockFollowersActivity.this));
          }
        });
        continue;
        if (paramUser.getGender() == User.Gender.FEMALE)
        {
          str.setImageDrawable(l());
        }
        else
        {
          str.setImageDrawable(k());
          continue;
          label316:
          str.setVisibility(8);
          continue;
          label325:
          str = paramUser.getDescription();
        }
      }
    }
  }
  
  private ImageView b(int paramInt)
  {
    ImageView localImageView = new ImageView(this.q);
    localImageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    localImageView.setImageResource(paramInt);
    return localImageView;
  }
  
  private void j()
  {
    if (this.p != null)
    {
      findViewById(2131624342).setVisibility(0);
      if (this.p == null) {}
    }
    final Object localObject3;
    Object localObject2;
    int n;
    int i;
    label384:
    label524:
    int m;
    for (;;)
    {
      try
      {
        Object localObject1 = this.p.getJSONObject("1").getJSONObject("result");
        localObject4 = new GroupParser(new UserParser()).parse(((JSONObject)localObject1).getJSONArray("myusers"));
        localObject3 = new GroupParser(new UserParser()).parse(((JSONObject)localObject1).getJSONArray("analystusers"));
        localObject1 = this.p.getJSONObject("2").getJSONArray("result");
        localObject1 = new GroupParser(new UserParser()).parse((JSONArray)localObject1);
        localObject2 = this.p.getJSONObject("3").getJSONArray("result");
        localObject2 = new GroupParser(new IMGroup.Parser()).parse((JSONArray)localObject2);
        n = this.p.getJSONObject("4").getJSONObject("result").getInt("totalcount");
        if (((ArrayList)localObject4).size() > 0)
        {
          localObject5 = findViewById(2131624343);
          ((View)localObject5).setVisibility(0);
          localObject5 = (LinearLayout)((View)localObject5).findViewById(2131624344);
          if (((LinearLayout)localObject5).getChildCount() <= 0) {
            break label990;
          }
          ((LinearLayout)localObject5).removeAllViews();
          break label990;
          if ((i < ((ArrayList)localObject4).size()) && (i < 2))
          {
            ((LinearLayout)localObject5).addView(a((User)((ArrayList)localObject4).get(i)));
            ((LinearLayout)localObject5).addView(m());
            i += 1;
            continue;
          }
          if (((ArrayList)localObject4).size() > 2)
          {
            localObject6 = n();
            ((LinearLayout)localObject5).addView((View)localObject6);
            ((LinearLayout)localObject5).addView(m());
            ((View)localObject6).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                paramAnonymousView = new Intent(StockFollowersActivity.b(StockFollowersActivity.this), UserListActivity.class);
                paramAnonymousView.putParcelableArrayListExtra("extra_users", new ArrayList(localObject4));
                paramAnonymousView.putExtra("extra_title", StockFollowersActivity.this.getString(2131166208, new Object[] { StockFollowersActivity.c(StockFollowersActivity.this) }));
                paramAnonymousView.putExtra("extra_list_type", 6);
                StockFollowersActivity.this.startActivity(paramAnonymousView);
              }
            });
          }
        }
        if (((ArrayList)localObject3).size() > 0)
        {
          localObject4 = findViewById(2131624345);
          ((View)localObject4).setVisibility(0);
          localObject4 = (LinearLayout)((View)localObject4).findViewById(2131624346);
          if (((LinearLayout)localObject4).getChildCount() <= 0) {
            break label996;
          }
          ((LinearLayout)localObject4).removeAllViews();
          break label996;
          if ((i < ((ArrayList)localObject3).size()) && (i < 2))
          {
            ((LinearLayout)localObject4).addView(a((User)((ArrayList)localObject3).get(i)));
            ((LinearLayout)localObject4).addView(m());
            i += 1;
            continue;
          }
          if (((ArrayList)localObject3).size() > 2)
          {
            localObject5 = n();
            ((LinearLayout)localObject4).addView((View)localObject5);
            ((LinearLayout)localObject4).addView(m());
            ((View)localObject5).setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                paramAnonymousView = new Intent(StockFollowersActivity.b(StockFollowersActivity.this), UserListActivity.class);
                paramAnonymousView.putParcelableArrayListExtra("extra_users", new ArrayList(localObject3));
                paramAnonymousView.putExtra("extra_title", StockFollowersActivity.this.getString(2131166206, new Object[] { StockFollowersActivity.c(StockFollowersActivity.this) }));
                StockFollowersActivity.this.startActivity(paramAnonymousView);
              }
            });
          }
        }
        if (((ArrayList)localObject2).size() <= 0) {
          break label798;
        }
        localObject3 = findViewById(2131624349);
        ((View)localObject3).setVisibility(0);
        localObject3 = (LinearLayout)((View)localObject3).findViewById(2131624350);
        if (((LinearLayout)localObject3).getChildCount() <= 0) {
          break label1002;
        }
        ((LinearLayout)localObject3).removeAllViews();
      }
      catch (JSONException localJSONException)
      {
        Object localObject6;
        d locald;
        int i1;
        label668:
        localJSONException.printStackTrace();
      }
      if ((i >= ((ArrayList)localObject2).size()) || (i >= 2)) {
        break;
      }
      final Object localObject4 = (IMGroup)((ArrayList)localObject2).get(i);
      Object localObject5 = LayoutInflater.from(this.q).inflate(2130903404, null);
      ((View)localObject5).setClickable(true);
      ((TextView)((View)localObject5).findViewById(2131625321)).setText(((IMGroup)localObject4).getName());
      localObject6 = (ImageView)((View)localObject5).findViewById(2131625320);
      if (!c.a(((IMGroup)localObject4).getProfileImageUrl()))
      {
        locald = n.a().b();
        f.a().a(((IMGroup)localObject4).getProfileImageUrl(), (ImageView)localObject6, locald, new o());
      }
      localObject6 = (LinearLayout)((View)localObject5).findViewById(2131624134);
      i1 = ((IMGroup)localObject4).getStar();
      m = 1;
      if (m <= 5)
      {
        if (i1 > (m - 1) * 20)
        {
          ((LinearLayout)localObject6).addView(b(2130838075));
          break label1008;
        }
        ((LinearLayout)localObject6).addView(b(2130838076));
        break label1008;
        return;
      }
      ((View)localObject5).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(StockFollowersActivity.b(StockFollowersActivity.this), GroupProfileActivity.class);
          paramAnonymousView.putExtra("extra_group_id", localObject4.getId());
          StockFollowersActivity.this.startActivity(paramAnonymousView);
        }
      });
      ((LinearLayout)localObject3).addView((View)localObject5);
      ((LinearLayout)localObject3).addView(m());
      i += 1;
    }
    if (((ArrayList)localObject2).size() > 2)
    {
      localObject2 = n();
      ((View)localObject2).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(StockFollowersActivity.b(StockFollowersActivity.this), IMGroupListActivity.class);
          paramAnonymousView.putExtra("extra_data_typesss", 2);
          paramAnonymousView.putExtra("extra_stock_symbol", StockFollowersActivity.c(StockFollowersActivity.this));
          paramAnonymousView.putExtra("extra_title", StockFollowersActivity.this.getString(2131166205, new Object[] { StockFollowersActivity.c(StockFollowersActivity.this) }));
          StockFollowersActivity.this.startActivity(paramAnonymousView);
        }
      });
      ((LinearLayout)localObject3).addView((View)localObject2);
      ((LinearLayout)localObject3).addView(m());
    }
    label798:
    if (localJSONException.size() > 0)
    {
      localObject2 = findViewById(2131624347);
      ((View)localObject2).setVisibility(0);
      localObject2 = (LinearLayout)((View)localObject2).findViewById(2131624348);
      if (((LinearLayout)localObject2).getChildCount() <= 0) {
        break label1017;
      }
      ((LinearLayout)localObject2).removeAllViews();
    }
    for (;;)
    {
      if ((i < localJSONException.size()) && (i < 2))
      {
        ((LinearLayout)localObject2).addView(a((User)localJSONException.get(i)));
        ((LinearLayout)localObject2).addView(m());
        i += 1;
      }
      else
      {
        if (localJSONException.size() > 2)
        {
          localView = n();
          ((LinearLayout)localObject2).addView(localView);
          ((LinearLayout)localObject2).addView(m());
          localView.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              paramAnonymousView = new Intent(StockFollowersActivity.b(StockFollowersActivity.this), UserListActivity.class);
              paramAnonymousView.putExtra("extra_list_type", 4);
              Stock localStock = new Stock();
              localStock.setCode(StockFollowersActivity.c(StockFollowersActivity.this));
              paramAnonymousView.putExtra("extra_stock", localStock);
              paramAnonymousView.putExtra("extra_title", StockFollowersActivity.this.getString(2131166207, new Object[] { StockFollowersActivity.c(StockFollowersActivity.this) }));
              StockFollowersActivity.this.startActivity(paramAnonymousView);
            }
          });
        }
        ((TextView)findViewById(2131624352)).setText(n + "人");
        View localView = findViewById(2131624351);
        localView.setVisibility(0);
        localView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(StockFollowersActivity.b(StockFollowersActivity.this), UserListActivity.class);
            paramAnonymousView.putExtra("extra_list_type", 5);
            Stock localStock = new Stock();
            localStock.setCode(StockFollowersActivity.c(StockFollowersActivity.this));
            localStock.setName(StockFollowersActivity.d(StockFollowersActivity.this));
            paramAnonymousView.putExtra("extra_stock", localStock);
            StockFollowersActivity.this.startActivity(paramAnonymousView);
          }
        });
        return;
        label990:
        i = 0;
        break;
        label996:
        i = 0;
        break label384;
        label1002:
        i = 0;
        break label524;
        label1008:
        m += 1;
        break label668;
        label1017:
        i = 0;
      }
    }
  }
  
  private Drawable k()
  {
    TypedArray localTypedArray = this.q.getTheme().obtainStyledAttributes(new int[] { 2130772281 });
    return getResources().getDrawable(localTypedArray.getResourceId(0, 0));
  }
  
  private Drawable l()
  {
    TypedArray localTypedArray = this.q.getTheme().obtainStyledAttributes(new int[] { 2130772282 });
    return getResources().getDrawable(localTypedArray.getResourceId(0, 0));
  }
  
  @SuppressLint({"NewApi"})
  private View m()
  {
    View localView = new View(this.q);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 1);
    localLayoutParams.gravity = 16;
    localView.setLayoutParams(localLayoutParams);
    int i = this.q.getTheme().obtainStyledAttributes(new int[] { 2130772270 }).getResourceId(0, 0);
    a.a(localView, getResources().getDrawable(i));
    return localView;
  }
  
  @SuppressLint({"NewApi"})
  private View n()
  {
    TextView localTextView = new TextView(this.q);
    localTextView.setText("点击查看更多");
    Resources localResources = getResources();
    int i = (int)TypedValue.applyDimension(1, 10.0F, localResources.getDisplayMetrics());
    localTextView.setPadding(0, i, 0, i);
    localTextView.setClickable(true);
    TypedArray localTypedArray = this.q.getTheme().obtainStyledAttributes(new int[] { 2130772051, 2130772017 });
    a.a(localTextView, getResources().getDrawable(localTypedArray.getResourceId(1, 0)));
    localTextView.setTextColor(localResources.getColor(localTypedArray.getResourceId(0, 0)));
    localTextView.setGravity(17);
    localTextView.setTextSize(2, 13.0F);
    return localTextView;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903116);
    this.q = this;
    this.j = getIntent().getStringExtra("extra_symbol");
    this.k = getIntent().getStringExtra("extra_name");
    setTitle("球友");
    if (this.p == null)
    {
      a(com.xueqiu.android.base.q.a().b().b(this.j, new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      }));
      return;
    }
    j();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\StockFollowersActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */