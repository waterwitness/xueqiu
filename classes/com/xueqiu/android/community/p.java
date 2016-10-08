package com.xueqiu.android.community;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import android.widget.TextView;

final class p
  extends BaseAdapter
{
  String[] a;
  LayoutInflater b;
  
  public p(UpdateUserInfoActivity paramUpdateUserInfoActivity, String[] paramArrayOfString, Context paramContext)
  {
    this.a = paramArrayOfString;
    this.b = LayoutInflater.from(paramContext);
  }
  
  public final int getCount()
  {
    if (this.a != null) {
      return this.a.length;
    }
    return 0;
  }
  
  public final Object getItem(int paramInt)
  {
    if (this.a != null) {
      return this.a[paramInt];
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramView;
    if (paramView == null)
    {
      paramViewGroup = this.b.inflate(2130903154, null);
      paramView = new q(this);
      paramView.a = paramViewGroup;
      paramView.b = ((TextView)paramViewGroup.findViewById(2131624436));
      paramView.c = ((RadioButton)paramViewGroup.findViewById(2131624437));
      paramViewGroup.setTag(paramView);
    }
    paramView = (q)paramViewGroup.getTag();
    String str = (String)getItem(paramInt);
    paramView.b.setText(str);
    if (UpdateUserInfoActivity.i(this.c).equals(str)) {
      paramView.c.setChecked(true);
    }
    for (;;)
    {
      paramView.a.setOnClickListener(new r(this, str));
      paramView.c.setOnClickListener(new r(this, str));
      return paramViewGroup;
      paramView.c.setChecked(false);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */