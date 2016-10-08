package com.xueqiu.android.community.widget;

import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.model.HomeTimelineStatusGroup;
import com.xueqiu.android.community.model.Status;
import java.util.ArrayList;
import java.util.Iterator;

public final class i
  extends r<Status>
{
  public i(SNBPullToRefreshListView paramSNBPullToRefreshListView, t<Status> paramt)
  {
    super(paramSNBPullToRefreshListView, paramt);
  }
  
  public final void a(ArrayList<Status> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    Object localObject;
    if (!paramBoolean)
    {
      if (!(paramArrayList instanceof HomeTimelineStatusGroup)) {
        break label111;
      }
      long l = ((HomeTimelineStatusGroup)paramArrayList).getNextId();
      localObject = this.c.a();
      if ((((ArrayList)localObject).size() > 0) && (l > ((Status)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1)).getStatusId())) {
        c();
      }
    }
    while (paramArrayList != null)
    {
      localObject = paramArrayList.iterator();
      while (((Iterator)localObject).hasNext()) {
        if (((Status)((Iterator)localObject).next()).isBlocked()) {
          ((Iterator)localObject).remove();
        }
      }
      label111:
      if ((paramArrayList != null) && (paramArrayList.size() == this.f)) {
        c();
      }
    }
    super.a(paramArrayList, paramThrowable, paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */