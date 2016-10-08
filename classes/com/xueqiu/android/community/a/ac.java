package com.xueqiu.android.community.a;

import android.content.Context;
import android.content.Intent;
import android.support.v4.view.bd;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.model.RecommendCard;
import com.xueqiu.android.community.model.Status;
import java.util.List;

public final class ac
  extends bd
{
  Context b;
  private RecommendCard<Status> c;
  private int d;
  
  public ac(Context paramContext, RecommendCard<Status> paramRecommendCard)
  {
    this.b = paramContext;
    this.c = paramRecommendCard;
    this.d = paramRecommendCard.getElements().size();
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == null)
    {
      View localView = LayoutInflater.from(this.b).inflate(2130903207, paramViewGroup, false);
      final Status localStatus;
      TextView localTextView1;
      TextView localTextView2;
      TextView localTextView3;
      if (paramInt == 0) {
        if (this.d == 1)
        {
          localView.setPadding(0, localView.getPaddingTop(), 0, localView.getPaddingBottom());
          localStatus = (Status)this.c.getElements().get(paramInt);
          localTextView1 = (TextView)localView.findViewById(2131624582);
          localTextView2 = (TextView)localView.findViewById(2131624626);
          localTextView3 = (TextView)localView.findViewById(2131624627);
          if (TextUtils.isEmpty(localStatus.getTitle())) {
            break label215;
          }
          localTextView1.setText(localStatus.getTitle());
        }
      }
      for (;;)
      {
        localTextView2.setText(localStatus.getSource());
        localTextView3.setText(String.valueOf(localStatus.getCommentsCount()));
        localView.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            if (!TextUtils.isEmpty(localStatus.getTarget())) {}
            try
            {
              paramAnonymousView = new SNBEvent(1700, 13);
              paramAnonymousView.addProperty("status_id", String.valueOf(localStatus.getStatusId()));
              i.a().a(paramAnonymousView);
              paramAnonymousView = new Intent(ac.this.b, StatusDetailActivity.class);
              paramAnonymousView.putExtra("status_id", localStatus.getStatusId());
              ac.this.b.startActivity(paramAnonymousView);
              return;
            }
            catch (Exception paramAnonymousView)
            {
              for (;;)
              {
                paramAnonymousView.printStackTrace();
              }
            }
          }
        });
        paramViewGroup.addView(localView);
        return localView;
        localView.setPadding(0, localView.getPaddingTop(), localView.getPaddingRight(), localView.getPaddingBottom());
        break;
        if (paramInt != this.d - 1) {
          break;
        }
        localView.setPadding(localView.getPaddingLeft(), localView.getPaddingTop(), 0, localView.getPaddingBottom());
        break;
        label215:
        localTextView1.setText(localStatus.getDescription());
      }
    }
    return paramViewGroup.getChildAt(paramInt);
  }
  
  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
  
  public final boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public final int b()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */