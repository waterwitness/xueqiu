package com.xueqiu.android.message.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.List;

public final class r
  extends BaseAdapter
{
  private Context a;
  private LayoutInflater b;
  private Talk c;
  private List<t> d;
  
  public r(Context paramContext, Talk paramTalk)
  {
    this.a = paramContext;
    this.c = paramTalk;
    this.b = LayoutInflater.from(paramContext);
    paramContext = new ArrayList();
    paramTalk = new t();
    paramTalk.c = "拍照";
    paramTalk.a = 1;
    paramTalk.b = 2130838191;
    paramContext.add(paramTalk);
    paramTalk = new t();
    paramTalk.c = "图片";
    paramTalk.a = 2;
    paramTalk.b = 2130838192;
    paramContext.add(paramTalk);
    paramTalk = new t();
    paramTalk.c = "股票";
    paramTalk.a = 3;
    paramTalk.b = 2130838194;
    paramContext.add(paramTalk);
    paramTalk = new t();
    paramTalk.c = "名片";
    paramTalk.a = 4;
    paramTalk.b = 2130838193;
    paramContext.add(paramTalk);
    this.d = paramContext;
  }
  
  public final int getCount()
  {
    return this.d.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.d.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return ((t)this.d.get(paramInt)).a;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.b.inflate(2130903409, paramViewGroup, false);
      paramView = new s();
      paramView.a = ((ImageView)localView.findViewById(2131625328));
      paramView.b = ((TextView)localView.findViewById(2131625329));
      localView.setTag(paramView);
    }
    paramView = (s)localView.getTag();
    paramViewGroup = (t)this.d.get(paramInt);
    if (paramViewGroup.a > 0)
    {
      paramView.a.setBackgroundResource(paramViewGroup.b);
      paramView.b.setText(paramViewGroup.c);
    }
    while (paramViewGroup.a != -1) {
      return localView;
    }
    paramView.a.setBackgroundResource(2130838190);
    paramView.b.setText("");
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */