package com.xueqiu.android.common.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
import java.util.Map;

public final class ao
  extends BaseAdapter
{
  List<Map<String, Object>> a = null;
  Context b = null;
  int c = 0;
  
  public ao(Activity paramActivity, List<Map<String, Object>> paramList)
  {
    this.b = paramActivity;
    this.c = 2130903268;
    this.a = paramList;
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
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = LayoutInflater.from(this.b).inflate(this.c, paramViewGroup, false);
    }
    paramView = (TextView)localView.findViewById(2131624097);
    paramViewGroup = (ImageView)localView.findViewById(2131624096);
    paramView.setText((String)((Map)this.a.get(paramInt)).get("title"));
    paramViewGroup.setImageDrawable((Drawable)((Map)this.a.get(paramInt)).get("icon"));
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */