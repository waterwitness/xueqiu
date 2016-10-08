package com.xueqiu.android.cube.b;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersListView;
import com.xueqiu.android.common.c;
import com.xueqiu.android.cube.a.p;
import com.xueqiu.android.cube.a.q;
import com.xueqiu.android.cube.a.r;
import com.xueqiu.android.cube.a.s;
import java.util.ArrayList;
import java.util.List;

public final class j
  extends c
{
  private EditText a;
  private StickyListHeadersListView b;
  private p c;
  
  public static j u()
  {
    return new j();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    e_(true);
    return paramLayoutInflater.inflate(2130903350, paramViewGroup, false);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.a = ((EditText)paramView.findViewById(2131624753));
    this.b = ((StickyListHeadersListView)paramView.findViewById(2131624309));
    paramView = new ArrayList();
    paramBundle = new ArrayList();
    paramBundle.add(new r("上升最快", new s() {}));
    paramBundle.add(new r("收益率最高", new s() {}));
    paramBundle.add(new r("热门主题", new s() {}));
    paramBundle.add(new r("关注人数", new s() {}));
    paramView.add(new q("发现更多组合", paramBundle));
    paramBundle = new ArrayList();
    paramBundle.add(new r("24小时热股", new s() {}));
    paramBundle.add(new r("24小时热门话题", new s() {}));
    paramView.add(new q("更多分类检索", paramBundle));
    this.c = new p(f(), paramView);
    this.b.setAdapter(this.c);
    this.b.setAreHeadersSticky(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\b\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */