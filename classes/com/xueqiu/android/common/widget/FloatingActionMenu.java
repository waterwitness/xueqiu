package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListPopupWindow;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.d.a.b.f;
import com.xueqiu.android.base.util.a;
import com.xueqiu.android.base.util.ay;
import java.util.Map;

public class FloatingActionMenu
  extends LinearLayout
{
  public LinearLayout a;
  public TypedArray b = getContext().getTheme().obtainStyledAttributes(new int[] { 2130772017, 2130772270, 2130772272 });
  private j c = null;
  
  public FloatingActionMenu(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingActionMenu(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public FloatingActionMenu(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private View a(int paramInt1, String paramString1, int paramInt2, String paramString2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 2130837634;; i = this.b.getResourceId(0, 0)) {
      return a(paramInt1, paramString1, paramInt2, paramString2, paramBoolean, i);
    }
  }
  
  private View a(int paramInt1, String paramString1, int paramInt2, String paramString2, boolean paramBoolean, int paramInt3)
  {
    return a(paramInt1, paramString1, paramInt2, paramString2, paramBoolean, paramInt3, 3, 0);
  }
  
  private void a()
  {
    setOrientation(1);
    View localView = new View(getContext());
    localView.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
    a.a(localView, getResources().getDrawable(this.b.getResourceId(1, 0)));
    addView(localView);
    this.a = new LinearLayout(getContext());
    this.a.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.a.setOrientation(0);
    addView(this.a);
  }
  
  public final View a(int paramInt1, String paramString1, int paramInt2, String paramString2, boolean paramBoolean, int paramInt3, int paramInt4, int paramInt5)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(getContext());
    localRelativeLayout.setTag(2131623962, Integer.valueOf(paramInt1));
    localRelativeLayout.setBackgroundResource(paramInt3);
    localRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelOffset(2131230805), paramInt4));
    localRelativeLayout.setGravity(17);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(15);
    Object localObject = new ImageView(getContext());
    ((ImageView)localObject).setLayoutParams(localLayoutParams);
    if (paramInt2 > 0) {
      ((ImageView)localObject).setImageResource(paramInt2);
    }
    for (;;)
    {
      ((ImageView)localObject).setId(2131623961);
      localRelativeLayout.addView((View)localObject);
      paramString2 = new RelativeLayout.LayoutParams(-2, -2);
      paramString2.addRule(15);
      paramString2.addRule(1, ((ImageView)localObject).getId());
      paramString2.leftMargin = ((int)ay.a(getContext(), 3.0F));
      localObject = new TextView(getContext());
      ((TextView)localObject).setLayoutParams(paramString2);
      ((TextView)localObject).setText(paramString1);
      ((TextView)localObject).setTextSize(2, 14.0F);
      if (paramInt5 == 0) {
        break;
      }
      ((TextView)localObject).setTextColor(paramInt5);
      localRelativeLayout.addView((View)localObject);
      localRelativeLayout.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          int i = ((Integer)paramAnonymousView.getTag(2131623962)).intValue();
          if (FloatingActionMenu.a(FloatingActionMenu.this) != null) {
            FloatingActionMenu.a(FloatingActionMenu.this).a(i);
          }
        }
      });
      if ((!paramBoolean) && (this.a.getChildCount() > 0))
      {
        paramString1 = new View(getContext());
        paramString1.setLayoutParams(new ViewGroup.LayoutParams(1, -1));
        a.a(paramString1, getResources().getDrawable(this.b.getResourceId(1, 0)));
        this.a.addView(paramString1);
      }
      this.a.addView(localRelativeLayout);
      return localRelativeLayout;
      if ((paramString2 != null) && (paramString2.length() > 0)) {
        f.a().a(paramString2, (ImageView)localObject);
      }
    }
    paramString1 = getResources();
    if (paramBoolean) {}
    for (paramInt1 = 2131558728;; paramInt1 = this.b.getResourceId(2, 0))
    {
      ((TextView)localObject).setTextColor(paramString1.getColor(paramInt1));
      break;
    }
  }
  
  public final i a(int paramInt1, int paramInt2)
  {
    View localView = a(paramInt1, getResources().getString(2131165742), paramInt2, null, false);
    final ListPopupWindow localListPopupWindow = new ListPopupWindow(getContext());
    ArrayAdapter localArrayAdapter = new ArrayAdapter(getContext(), 2130903584);
    final i locali = new i(localArrayAdapter);
    localListPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        localListPopupWindow.dismiss();
        if (!locali.a.containsKey(Integer.valueOf(paramAnonymousInt))) {}
        do
        {
          return;
          paramAnonymousInt = ((Integer)locali.a.get(Integer.valueOf(paramAnonymousInt))).intValue();
        } while (FloatingActionMenu.a(FloatingActionMenu.this) == null);
        FloatingActionMenu.a(FloatingActionMenu.this).a(paramAnonymousInt);
      }
    });
    localListPopupWindow.setAdapter(localArrayAdapter);
    localListPopupWindow.setAnchorView(localView);
    localListPopupWindow.setModal(true);
    localListPopupWindow.setContentWidth((int)ay.a(getContext(), 120.0F));
    localView.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        localListPopupWindow.show();
      }
    });
    return locali;
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, getResources().getString(paramInt2), paramInt3, null, false);
  }
  
  public final void a(int paramInt1, String paramString, int paramInt2)
  {
    a(paramInt1, paramString, paramInt2, null, false);
  }
  
  public final void a(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    a(paramInt1, paramString1, 0, paramString2, true, paramInt2, 2, 0);
  }
  
  public final void a(int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    a(paramInt, paramString1, 0, paramString2, paramBoolean);
  }
  
  public final void a(int paramInt1, String paramString1, String paramString2, boolean paramBoolean, int paramInt2)
  {
    a(paramInt1, paramString1, 0, paramString2, paramBoolean, paramInt2);
  }
  
  public void setOnMenuItemSelectedListener(j paramj)
  {
    this.c = paramj;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\FloatingActionMenu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */