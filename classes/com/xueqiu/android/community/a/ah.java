package com.xueqiu.android.community.a;

import android.app.Activity;
import android.graphics.Bitmap.Config;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.d;
import com.d.a.b.f;
import com.xueqiu.android.base.util.n;
import java.util.List;
import java.util.Map;

public class ah
  extends BaseAdapter
{
  private static final String a = ah.class.getSimpleName();
  private List<Map<String, String>> b;
  private Activity c;
  private f d;
  private d e = null;
  
  public ah(Activity paramActivity, List<Map<String, String>> paramList)
  {
    this.c = paramActivity;
    this.b = paramList;
    this.d = f.a();
    paramActivity = n.a().a(Bitmap.Config.RGB_565);
    paramActivity.j = com.d.a.b.a.e.e;
    paramActivity.b = 2130838664;
    paramActivity.a = 2130838664;
    paramActivity.c = 2130838664;
    this.e = paramActivity.b();
  }
  
  public final void a(List<Map<String, String>> paramList)
  {
    this.b = paramList;
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    if (this.b != null) {
      return this.b.size();
    }
    return 0;
  }
  
  public Object getItem(int paramInt)
  {
    if (this.b != null) {
      return (Map)this.b.get(paramInt);
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    String str = (String)((Map)this.b.get(paramInt)).get("type_key");
    if (TextUtils.isEmpty(str)) {
      return super.getItemViewType(paramInt);
    }
    if (str.equals("0")) {
      return 0;
    }
    if (str.equals("1")) {
      return 1;
    }
    if (str.equals("2")) {
      return 2;
    }
    if (str.equals("3")) {
      return 3;
    }
    return super.getItemViewType(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.b == null) {
      return null;
    }
    int i = getItemViewType(paramInt);
    ai localai;
    if (paramView == null) {
      if ((i == 2) || (i == 3))
      {
        paramViewGroup = LayoutInflater.from(this.c).inflate(2130903192, paramViewGroup, false);
        localai = new ai((byte)0);
        localai.a = ((ImageView)paramViewGroup.findViewById(2131624220));
        localai.b = ((TextView)paramViewGroup.findViewById(2131624544));
        localai.c = ((TextView)paramViewGroup.findViewById(2131624224));
        localai.d = ((TextView)paramViewGroup.findViewById(2131624581));
        paramViewGroup.setTag(localai);
        paramView = null;
      }
    }
    for (;;)
    {
      if (i == 0) {
        paramView.a.setText((CharSequence)((Map)this.b.get(paramInt)).get("title_key"));
      }
      do
      {
        return paramViewGroup;
        if (i == 0)
        {
          paramViewGroup = LayoutInflater.from(this.c).inflate(2130903193, paramViewGroup, false);
          paramView = new aj((byte)0);
          paramView.a = ((TextView)paramViewGroup.findViewById(2131624582));
          paramViewGroup.setTag(paramView);
          localai = null;
          break;
        }
        if (i != 1) {
          break label622;
        }
        paramViewGroup = LayoutInflater.from(this.c).inflate(2130903191, paramViewGroup, false);
        localai = null;
        paramView = null;
        break;
        if ((i == 2) || (i == 3))
        {
          localai = (ai)paramView.getTag();
          localaj = null;
          paramViewGroup = paramView;
          paramView = localaj;
          break;
        }
        if (i != 0) {
          break label622;
        }
        localaj = (aj)paramView.getTag();
        localai = null;
        paramViewGroup = paramView;
        paramView = localaj;
        break;
        if (i == 2)
        {
          localai.b.setText((CharSequence)((Map)this.b.get(paramInt)).get("name_key"));
          paramView = (String)((Map)this.b.get(paramInt)).get("description");
          if (!TextUtils.isEmpty(paramView)) {
            localai.c.setText(paramView);
          }
          for (;;)
          {
            this.d.a((String)((Map)this.b.get(paramInt)).get("profile_image"), localai.a, this.e);
            localai.d.setVisibility(8);
            break;
            localai.c.setText((CharSequence)((Map)this.b.get(paramInt)).get("verified_description"));
          }
        }
      } while (i != 3);
      localai.b.setText((CharSequence)((Map)this.b.get(paramInt)).get("name_key"));
      paramView = (String)((Map)this.b.get(paramInt)).get("description");
      if (!TextUtils.isEmpty(paramView)) {
        localai.c.setText(paramView);
      }
      for (;;)
      {
        this.d.a((String)((Map)this.b.get(paramInt)).get("profile_image"), localai.a, this.e);
        localai.d.setVisibility(0);
        break;
        localai.c.setText((CharSequence)((Map)this.b.get(paramInt)).get("verified_description"));
      }
      label622:
      localai = null;
      aj localaj = null;
      paramViewGroup = paramView;
      paramView = localaj;
    }
  }
  
  public int getViewTypeCount()
  {
    return 4;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */