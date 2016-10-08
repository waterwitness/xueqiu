package com.xueqiu.android.community.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.d.a.b.e;
import com.d.a.b.f;
import com.xueqiu.android.base.util.n;
import com.xueqiu.android.base.util.o;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.User;

public final class am
  extends com.xueqiu.android.common.a.d<Status>
{
  private f e;
  private com.d.a.b.d f = null;
  private com.d.a.b.f.d g = null;
  
  public am(Context paramContext)
  {
    super(paramContext, 2130903169);
    paramContext = this.c.getResources().getDrawable(this.c.getTheme().obtainStyledAttributes(new int[] { 2130772158 }).getResourceId(0, 0));
    this.e = f.a();
    e locale = n.a();
    locale.d = paramContext;
    locale.e = paramContext;
    this.f = locale.b();
    this.g = new o();
  }
  
  public final Object getItem(int paramInt)
  {
    return super.getItem(paramInt);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Status localStatus = (Status)getItem(paramInt);
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    if (localView.getTag() == null)
    {
      paramViewGroup = new an();
      paramViewGroup.a = ((TextView)localView.findViewById(2131624153));
      paramViewGroup.c = ((ImageView)localView.findViewById(2131624492));
      paramViewGroup.b = ((TextView)localView.findViewById(2131624521));
      paramViewGroup.d = ((TextView)localView.findViewById(2131624518));
      localView.setTag(paramViewGroup);
      paramView = null;
      if (TextUtils.isEmpty(localStatus.getTopicTitle())) {
        break label231;
      }
      paramView = Html.fromHtml(localStatus.getTopicTitle());
    }
    for (;;)
    {
      paramViewGroup.b.setText(paramView);
      if ((localStatus.getTopicPicThumbnail() != null) && (!TextUtils.isEmpty(localStatus.getTopicPicThumbnail()))) {
        this.e.a(localStatus.getTopicPicThumbnail(), paramViewGroup.c, this.f, this.g);
      }
      paramViewGroup.d.setText(this.c.getString(2131165346, new Object[] { Integer.valueOf(localStatus.getCommentsCount()) }));
      paramViewGroup.a.setText(localStatus.getUser().getScreenName());
      return localView;
      paramViewGroup = (an)localView.getTag();
      break;
      label231:
      if (!TextUtils.isEmpty(localStatus.getTitle())) {
        paramView = Html.fromHtml(localStatus.getTitle());
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */