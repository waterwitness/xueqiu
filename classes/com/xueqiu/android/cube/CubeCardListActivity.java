package com.xueqiu.android.cube;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.a.f;
import android.support.v7.internal.widget.ListPopupWindow;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.android.volley.n;
import com.android.volley.y;
import com.google.gson.Gson;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.cube.model.CubeCalGainType;
import com.xueqiu.android.cube.model.CubeRankCategory;
import com.xueqiu.android.cube.model.Editorial;
import com.xueqiu.android.cube.model.Industry;
import com.xueqiu.android.cube.model.Topic;
import com.xueqiu.android.cube.widget.CubeFilterHeaderView;
import com.xueqiu.android.cube.widget.CubeFilterHeaderView.3;
import com.xueqiu.android.cube.widget.CubeFilterHeaderView.4;
import com.xueqiu.android.cube.widget.CubeFilterHeaderView.5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CubeCardListActivity
  extends com.xueqiu.android.common.b
{
  private Industry j;
  private Editorial k;
  private int p;
  private SNBPullToRefreshListView q;
  private com.xueqiu.android.cube.a.a r;
  private com.xueqiu.android.common.r<Cube> s;
  private CubeFilterHeaderView t = null;
  private String u = "";
  
  private static JSONArray b(List<Topic> paramList, JSONArray paramJSONArray)
  {
    StringBuilder localStringBuilder;
    JSONObject localJSONObject1;
    try
    {
      localStringBuilder = new StringBuilder(paramJSONArray.toString());
      localJSONObject1 = new JSONObject();
      localJSONObject1.put("param", "topic_name");
      JSONArray localJSONArray = new JSONArray();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Object localObject = (Topic)paramList.next();
        JSONObject localJSONObject2 = new JSONObject();
        localObject = ((Topic)localObject).getName();
        localJSONObject2.put("name", localObject);
        localJSONObject2.put("value", localObject);
        localJSONArray.put(localJSONObject2);
      }
      localJSONObject1.put("filter_values", localJSONArray);
    }
    catch (JSONException paramList)
    {
      aa.a(paramList);
      return paramJSONArray;
    }
    localStringBuilder.insert(1, localJSONObject1.toString() + ",");
    paramList = new JSONArray(localStringBuilder.toString());
    return paramList;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1) && (paramIntent != null))
    {
      Cube localCube = (Cube)paramIntent.getParcelableExtra("extra_cube");
      if ((localCube != null) && (this.r != null))
      {
        this.r.a(localCube);
        this.r.notifyDataSetChanged();
      }
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903095);
    this.q = ((SNBPullToRefreshListView)findViewById(2131624309));
    this.r = new com.xueqiu.android.cube.a.a(this);
    this.j = ((Industry)getIntent().getParcelableExtra("extra_topic"));
    this.k = ((Editorial)getIntent().getParcelableExtra("extra_exitorial"));
    this.p = getIntent().getIntExtra("extra_rank_category", -1);
    if (this.j != null)
    {
      this.u = this.j.getName();
      setTitle(this.u);
      this.s = new com.xueqiu.android.common.r(this.q, new t()
      {
        int a = 1;
        
        public final n<ArrayList<Cube>> a(p<ArrayList<Cube>> paramAnonymousp)
        {
          this.a = 1;
          return CubeCardListActivity.a(CubeCardListActivity.this, this.a, paramAnonymousp);
        }
        
        public final void a(ArrayList<Cube> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
        {
          CubeCardListActivity.this.i();
          if (paramAnonymousArrayList == null) {
            aa.a(paramAnonymousThrowable);
          }
          if (!paramAnonymousBoolean) {
            CubeCardListActivity.a(CubeCardListActivity.this).c();
          }
        }
        
        public final n<ArrayList<Cube>> b(p<ArrayList<Cube>> paramAnonymousp)
        {
          this.a += 1;
          return CubeCardListActivity.a(CubeCardListActivity.this, this.a, paramAnonymousp);
        }
      });
      this.s.a(this.r);
      this.r.e = new com.xueqiu.android.cube.a.b()
      {
        public final void a(Cube paramAnonymousCube)
        {
          if (paramAnonymousCube == null) {
            return;
          }
          com.xueqiu.android.trade.g.a(CubeCardListActivity.this, paramAnonymousCube.getId(), paramAnonymousCube.getSymbol());
        }
        
        public final void b(Cube paramAnonymousCube)
        {
          CubeCardListActivity.a(CubeCardListActivity.this, paramAnonymousCube);
        }
        
        public final void c(Cube paramAnonymousCube)
        {
          Intent localIntent = new Intent(CubeCardListActivity.this.getBaseContext(), CubeActivity.class);
          localIntent.putExtra("extra_cube_symbol", paramAnonymousCube.getSymbol());
          localIntent.putExtra("extra_cube_id", paramAnonymousCube.getId());
          CubeCardListActivity.this.startActivityForResult(localIntent, 1);
        }
      };
      paramBundle = UserPrefs.getString(this, "cube_rank_filter", null);
      if (TextUtils.isEmpty(paramBundle)) {}
    }
    for (;;)
    {
      try
      {
        localObject2 = new JSONObject(paramBundle);
        if (this.p != CubeRankCategory.MOST_POPULAR.value()) {
          continue;
        }
        localObject1 = ((JSONObject)localObject2).getJSONArray("10");
        paramBundle = (Bundle)localObject1;
        if (!((JSONObject)localObject2).has("1001")) {
          continue;
        }
        paramBundle = ((JSONObject)localObject2).getJSONArray("1001");
      }
      catch (Throwable paramBundle)
      {
        Object localObject3;
        com.xueqiu.android.cube.widget.c localc;
        aa.a(paramBundle);
        continue;
        Object localObject2 = null;
        Object localObject1 = paramBundle;
        paramBundle = (Bundle)localObject2;
        continue;
      }
      this.t = new CubeFilterHeaderView(this.i.b().e());
      this.t.a((JSONArray)localObject1);
      if ((paramBundle != null) && (paramBundle.length() > 0))
      {
        localObject1 = this.t;
        ((CubeFilterHeaderView)localObject1).a();
        localObject2 = LayoutInflater.from(((CubeFilterHeaderView)localObject1).getContext()).inflate(2130903279, null);
        ((View)localObject2).setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0F));
        paramBundle = (ArrayList)m.a().fromJson(paramBundle.toString(), new CubeFilterHeaderView.3((CubeFilterHeaderView)localObject1).getType());
        localObject3 = new ListPopupWindow(((CubeFilterHeaderView)localObject1).getContext(), null, 16843479);
        localc = new com.xueqiu.android.cube.widget.c(((CubeFilterHeaderView)localObject1).getContext(), paramBundle, (byte)0);
        ((ListPopupWindow)localObject3).a(localc);
        ((ListPopupWindow)localObject3).c = -1;
        ((ListPopupWindow)localObject3).g = ((View)localObject2);
        ((ListPopupWindow)localObject3).a(((CubeFilterHeaderView)localObject1).getResources().getDrawable(2130837744));
        ((ListPopupWindow)localObject3).a(1);
        ((ListPopupWindow)localObject3).a();
        ((View)localObject2).setOnClickListener(new CubeFilterHeaderView.4((CubeFilterHeaderView)localObject1, (ListPopupWindow)localObject3));
        ((ListPopupWindow)localObject3).h = new CubeFilterHeaderView.5((CubeFilterHeaderView)localObject1, (ListPopupWindow)localObject3, localc, paramBundle);
        ((CubeFilterHeaderView)localObject1).addView((View)localObject2);
      }
      this.t.setOnFilterChangedListener(new com.xueqiu.android.cube.widget.b()
      {
        public final void a()
        {
          CubeCardListActivity.a(CubeCardListActivity.this).a(true);
        }
        
        public final void a(Map paramAnonymousMap)
        {
          CubeCardListActivity.a(CubeCardListActivity.this).a(true);
          if (paramAnonymousMap.containsKey("profit"))
          {
            paramAnonymousMap = CubeCalGainType.fromValue((String)paramAnonymousMap.get("profit"));
            if (paramAnonymousMap != null) {
              CubeCardListActivity.c(CubeCardListActivity.this).f = paramAnonymousMap;
            }
          }
        }
      });
      localObject1 = new LinearLayout.LayoutParams(-1, -2);
      paramBundle = (LinearLayout)findViewById(2131624117);
      paramBundle.addView(this.t, 0, (ViewGroup.LayoutParams)localObject1);
      localObject1 = new LinearLayout.LayoutParams(-1, 1);
      localObject2 = new View(this);
      ((View)localObject2).setBackgroundColor(getResources().getColor(2131558698));
      ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
      paramBundle.addView((View)localObject2, 1, (ViewGroup.LayoutParams)localObject1);
      this.s.a(true);
      return;
      if (this.k != null)
      {
        this.u = this.k.getName();
        break;
      }
      if (this.p == CubeRankCategory.MOST_POPULAR.value())
      {
        this.u = getString(2131165743);
        break;
      }
      if (this.p != CubeRankCategory.MOST_VALUABLE.value()) {
        break;
      }
      this.u = getString(2131165744);
      break;
      if (this.p == CubeRankCategory.MOST_VALUABLE.value())
      {
        localObject1 = ((JSONObject)localObject2).getJSONArray("12");
        paramBundle = (Bundle)localObject1;
        if (!((JSONObject)localObject2).has("1201")) {
          continue;
        }
        paramBundle = ((JSONObject)localObject2).getJSONArray("1201");
      }
      else if (this.j != null)
      {
        paramBundle = ((JSONObject)localObject2).getJSONArray("13");
        localObject1 = new Topic();
        ((Topic)localObject1).setName(getString(2131165397));
        localObject2 = new ArrayList();
        ((List)localObject2).add(localObject1);
        localObject1 = b((List)localObject2, paramBundle);
        localObject2 = com.xueqiu.android.base.q.a().b();
        localObject3 = this.j.getName();
        paramBundle = new p(this)
        {
          public final void a(y paramAnonymousy)
          {
            aa.a(paramAnonymousy);
          }
        };
        ((ai)localObject2).l.e((String)localObject3, paramBundle);
        paramBundle = null;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeCardListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */