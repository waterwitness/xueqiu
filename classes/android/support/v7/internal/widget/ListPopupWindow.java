package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v7.b.c;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;

public class ListPopupWindow
{
  private boolean A;
  public PopupWindow a;
  public v b;
  public int c = -2;
  int d;
  int e = Integer.MAX_VALUE;
  int f = 0;
  public View g;
  public AdapterView.OnItemClickListener h;
  private Context i;
  private ListAdapter j;
  private int k = -2;
  private int l;
  private boolean m;
  private boolean n = false;
  private boolean o = false;
  private View p;
  private DataSetObserver q;
  private Drawable r;
  private AdapterView.OnItemSelectedListener s;
  private final aa t = new aa(this, (byte)0);
  private final z u = new z(this, (byte)0);
  private final y v = new y(this, (byte)0);
  private final w w = new w(this, (byte)0);
  private Runnable x;
  private Handler y = new Handler();
  private Rect z = new Rect();
  
  public ListPopupWindow(Context paramContext)
  {
    this(paramContext, null, c.listPopupWindowStyle);
  }
  
  public ListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this.i = paramContext;
    this.a = new PopupWindow(paramContext, paramAttributeSet, paramInt);
    this.a.setInputMethodMode(1);
    paramContext = this.i.getResources().getConfiguration().locale;
  }
  
  public final void a()
  {
    this.A = true;
    this.a.setFocusable(true);
  }
  
  public final void a(int paramInt)
  {
    this.l = paramInt;
    this.m = true;
  }
  
  public final void a(Drawable paramDrawable)
  {
    this.a.setBackgroundDrawable(paramDrawable);
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    if (this.q == null) {
      this.q = new x(this, (byte)0);
    }
    for (;;)
    {
      this.j = paramListAdapter;
      if (this.j != null) {
        paramListAdapter.registerDataSetObserver(this.q);
      }
      if (this.b != null) {
        this.b.setAdapter(this.j);
      }
      return;
      if (this.j != null) {
        this.j.unregisterDataSetObserver(this.q);
      }
    }
  }
  
  public final void a(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.a.setOnDismissListener(paramOnDismissListener);
  }
  
  public void b()
  {
    boolean bool3 = true;
    boolean bool2 = true;
    int i5 = -1;
    Object localObject2;
    boolean bool1;
    Object localObject1;
    Object localObject3;
    LinearLayout.LayoutParams localLayoutParams;
    label249:
    int i1;
    int i2;
    if (this.b == null)
    {
      localObject2 = this.i;
      this.x = new Runnable()
      {
        public final void run()
        {
          View localView = ListPopupWindow.this.g;
          if ((localView != null) && (localView.getWindowToken() != null)) {
            ListPopupWindow.this.b();
          }
        }
      };
      if (!this.A)
      {
        bool1 = true;
        this.b = new v((Context)localObject2, bool1);
        if (this.r != null) {
          this.b.setSelector(this.r);
        }
        this.b.setAdapter(this.j);
        this.b.setOnItemClickListener(this.h);
        this.b.setFocusable(true);
        this.b.setFocusableInTouchMode(true);
        this.b.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener()
        {
          public final void onItemSelected(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            if (paramAnonymousInt != -1)
            {
              paramAnonymousAdapterView = ListPopupWindow.a(ListPopupWindow.this);
              if (paramAnonymousAdapterView != null) {
                v.a(paramAnonymousAdapterView, false);
              }
            }
          }
          
          public final void onNothingSelected(AdapterView<?> paramAnonymousAdapterView) {}
        });
        this.b.setOnScrollListener(this.v);
        if (this.s != null) {
          this.b.setOnItemSelectedListener(this.s);
        }
        localObject1 = this.b;
        localObject3 = this.p;
        if (localObject3 == null) {
          break label1282;
        }
        localObject2 = new LinearLayout((Context)localObject2);
        ((LinearLayout)localObject2).setOrientation(1);
        localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (this.f)
        {
        default: 
          Log.e("ListPopupWindow", "Invalid hint position " + this.f);
          ((View)localObject3).measure(View.MeasureSpec.makeMeasureSpec(this.c, Integer.MIN_VALUE), 0);
          localObject1 = (LinearLayout.LayoutParams)((View)localObject3).getLayoutParams();
          i1 = ((View)localObject3).getMeasuredHeight();
          i2 = ((LinearLayout.LayoutParams)localObject1).topMargin;
          i1 = ((LinearLayout.LayoutParams)localObject1).bottomMargin + (i1 + i2);
          localObject1 = localObject2;
        }
      }
    }
    for (;;)
    {
      this.a.setContentView((View)localObject1);
      for (;;)
      {
        label306:
        localObject1 = this.a.getBackground();
        int i3;
        label371:
        label385:
        int i6;
        int i4;
        if (localObject1 != null)
        {
          ((Drawable)localObject1).getPadding(this.z);
          i2 = this.z.top + this.z.bottom;
          i3 = i2;
          if (!this.m)
          {
            this.l = (-this.z.top);
            i3 = i2;
          }
          if (this.a.getInputMethodMode() != 2) {
            break label768;
          }
          i2 = 1;
          localObject1 = this.g;
          i6 = this.l;
          localObject2 = new Rect();
          ((View)localObject1).getWindowVisibleDisplayFrame((Rect)localObject2);
          localObject3 = new int[2];
          ((View)localObject1).getLocationOnScreen((int[])localObject3);
          i4 = ((Rect)localObject2).bottom;
          if (i2 == 0) {
            break label1269;
          }
        }
        label572:
        label585:
        label607:
        label614:
        label768:
        label934:
        label964:
        label970:
        label976:
        label1008:
        label1029:
        label1035:
        label1046:
        label1057:
        label1222:
        label1263:
        label1269:
        for (i2 = ((View)localObject1).getContext().getResources().getDisplayMetrics().heightPixels;; i2 = i4)
        {
          i2 = Math.max(i2 - (localObject3[1] + ((View)localObject1).getHeight()) - i6, localObject3[1] - ((Rect)localObject2).top + i6);
          i4 = i2;
          if (this.a.getBackground() != null)
          {
            this.a.getBackground().getPadding(this.z);
            i4 = i2 - (this.z.top + this.z.bottom);
          }
          if ((this.n) || (this.k == -1))
          {
            i1 = i4 + i3;
            bool1 = g();
            if (!this.a.isShowing()) {
              break label1035;
            }
            if (this.c != -1) {
              break label934;
            }
            i2 = -1;
            if (this.k != -1) {
              break label1008;
            }
            if (!bool1) {
              break label964;
            }
            if (!bool1) {
              break label976;
            }
            localObject1 = this.a;
            if (this.c != -1) {
              break label970;
            }
            i3 = i5;
            ((PopupWindow)localObject1).setWindowLayoutMode(i3, 0);
            localObject1 = this.a;
            if ((this.o) || (this.n)) {
              break label1029;
            }
          }
          for (bool1 = bool2;; bool1 = false)
          {
            ((PopupWindow)localObject1).setOutsideTouchable(bool1);
            this.a.update(this.g, this.d, this.l, i2, i1);
            return;
            bool1 = false;
            break;
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            ((LinearLayout)localObject2).addView((View)localObject3);
            break label249;
            ((LinearLayout)localObject2).addView((View)localObject3);
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            break label249;
            this.a.getContentView();
            localObject1 = this.p;
            if (localObject1 == null) {
              break label1276;
            }
            localObject2 = (LinearLayout.LayoutParams)((View)localObject1).getLayoutParams();
            i1 = ((View)localObject1).getMeasuredHeight();
            i2 = ((LinearLayout.LayoutParams)localObject2).topMargin;
            i1 = ((LinearLayout.LayoutParams)localObject2).bottomMargin + (i1 + i2);
            break label306;
            this.z.setEmpty();
            i3 = 0;
            break label371;
            i2 = 0;
            break label385;
            switch (this.c)
            {
            default: 
              i2 = View.MeasureSpec.makeMeasureSpec(this.c, 1073741824);
            }
            for (;;)
            {
              i4 = this.b.a(i2, i4 - i1);
              i2 = i1;
              if (i4 > 0) {
                i2 = i1 + i3;
              }
              i1 = i2 + i4;
              break;
              i2 = View.MeasureSpec.makeMeasureSpec(this.i.getResources().getDisplayMetrics().widthPixels - (this.z.left + this.z.right), Integer.MIN_VALUE);
              continue;
              i2 = View.MeasureSpec.makeMeasureSpec(this.i.getResources().getDisplayMetrics().widthPixels - (this.z.left + this.z.right), 1073741824);
            }
            if (this.c == -2)
            {
              i2 = this.g.getWidth();
              break label572;
            }
            i2 = this.c;
            break label572;
            i1 = -1;
            break label585;
            i3 = 0;
            break label607;
            localObject1 = this.a;
            if (this.c == -1) {}
            for (i3 = -1;; i3 = 0)
            {
              ((PopupWindow)localObject1).setWindowLayoutMode(i3, -1);
              break;
            }
            if (this.k == -2) {
              break label614;
            }
            i1 = this.k;
            break label614;
          }
          if (this.c == -1)
          {
            i2 = -1;
            if (this.k != -1) {
              break label1222;
            }
            i1 = -1;
            this.a.setWindowLayoutMode(i2, i1);
            localObject1 = this.a;
            if ((this.o) || (this.n)) {
              break label1263;
            }
          }
          for (bool1 = bool3;; bool1 = false)
          {
            ((PopupWindow)localObject1).setOutsideTouchable(bool1);
            this.a.setTouchInterceptor(this.u);
            this.a.showAsDropDown(this.g, this.d, this.l);
            this.b.setSelection(-1);
            if ((!this.A) || (this.b.isInTouchMode())) {
              e();
            }
            if (this.A) {
              break;
            }
            this.y.post(this.w);
            return;
            if (this.c == -2)
            {
              this.a.setWidth(this.g.getWidth());
              i2 = 0;
              break label1046;
            }
            this.a.setWidth(this.c);
            i2 = 0;
            break label1046;
            if (this.k == -2)
            {
              this.a.setHeight(i1);
              i1 = 0;
              break label1057;
            }
            this.a.setHeight(this.k);
            i1 = 0;
            break label1057;
          }
        }
        label1276:
        i1 = 0;
      }
      label1282:
      i1 = 0;
    }
  }
  
  public final void b(int paramInt)
  {
    Drawable localDrawable = this.a.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(this.z);
      this.c = (this.z.left + this.z.right + paramInt);
      return;
    }
    this.c = paramInt;
  }
  
  public final void c()
  {
    this.a.dismiss();
    if (this.p != null)
    {
      ViewParent localViewParent = this.p.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(this.p);
      }
    }
    this.a.setContentView(null);
    this.b = null;
    this.y.removeCallbacks(this.t);
  }
  
  public final void d()
  {
    this.a.setInputMethodMode(2);
  }
  
  public final void e()
  {
    v localv = this.b;
    if (localv != null)
    {
      v.a(localv, true);
      localv.requestLayout();
    }
  }
  
  public final boolean f()
  {
    return this.a.isShowing();
  }
  
  public final boolean g()
  {
    return this.a.getInputMethodMode() == 2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ListPopupWindow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */