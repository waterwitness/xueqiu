package android.support.v7.a;

import android.app.ActionBar;
import android.app.ActionBar.LayoutParams;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

class r
  extends a
{
  final Activity a;
  final b b;
  final ActionBar c;
  private ImageView d;
  private ArrayList<WeakReference<Object>> e = new ArrayList();
  
  public r(Activity paramActivity, b paramb)
  {
    this(paramActivity, paramb, true);
  }
  
  r(Activity paramActivity, b paramb, boolean paramBoolean)
  {
    this.a = paramActivity;
    this.b = paramb;
    this.c = paramActivity.getActionBar();
    if ((paramBoolean) && ((b() & 0x4) != 0)) {
      e(true);
    }
  }
  
  public View a()
  {
    return this.c.getCustomView();
  }
  
  public void a(int paramInt)
  {
    this.c.setCustomView(paramInt);
  }
  
  public void a(Drawable paramDrawable)
  {
    this.c.setBackgroundDrawable(paramDrawable);
  }
  
  public void a(View paramView)
  {
    this.c.setCustomView(paramView);
  }
  
  public void a(View paramView, c paramc)
  {
    ActionBar.LayoutParams localLayoutParams = new ActionBar.LayoutParams(paramc);
    localLayoutParams.gravity = paramc.a;
    this.c.setCustomView(paramView, localLayoutParams);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    this.c.setTitle(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    this.c.setDisplayShowHomeEnabled(paramBoolean);
  }
  
  public int b()
  {
    return this.c.getDisplayOptions();
  }
  
  public void b(int paramInt)
  {
    this.c.setTitle(paramInt);
  }
  
  public void b(Drawable paramDrawable)
  {
    this.c.setStackedBackgroundDrawable(paramDrawable);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    this.c.setSubtitle(paramCharSequence);
  }
  
  public void b(boolean paramBoolean)
  {
    this.c.setDisplayHomeAsUpEnabled(paramBoolean);
  }
  
  public int c()
  {
    return this.c.getHeight();
  }
  
  public void c(int paramInt)
  {
    this.c.setDisplayOptions(paramInt);
  }
  
  public void c(Drawable paramDrawable)
  {
    this.c.setSplitBackgroundDrawable(paramDrawable);
  }
  
  public void c(boolean paramBoolean)
  {
    this.c.setDisplayShowTitleEnabled(paramBoolean);
  }
  
  public void d()
  {
    this.c.hide();
  }
  
  public void d(int paramInt)
  {
    this.c.setNavigationMode(paramInt);
  }
  
  public void d(boolean paramBoolean)
  {
    this.c.setDisplayShowCustomEnabled(paramBoolean);
  }
  
  public Context e()
  {
    return this.c.getThemedContext();
  }
  
  public void e(int paramInt)
  {
    Object localObject1;
    if (this.d == null)
    {
      localObject1 = this.a.findViewById(16908332);
      if (localObject1 == null) {}
      for (localObject1 = null;; localObject1 = null)
      {
        if (localObject1 != null)
        {
          if (paramInt == 0) {
            break label107;
          }
          ((ImageView)localObject1).setImageResource(paramInt);
        }
        return;
        localObject2 = (ViewGroup)((View)localObject1).getParent();
        if (((ViewGroup)localObject2).getChildCount() == 2) {
          break;
        }
      }
      localObject1 = ((ViewGroup)localObject2).getChildAt(0);
      localObject2 = ((ViewGroup)localObject2).getChildAt(1);
      if (((View)localObject1).getId() != 16908332) {
        break label104;
      }
      localObject1 = localObject2;
    }
    label104:
    for (;;)
    {
      if ((localObject1 instanceof ImageView)) {
        this.d = ((ImageView)localObject1);
      }
      localObject1 = this.d;
      break;
    }
    label107:
    Object localObject2 = this.a.obtainStyledAttributes(new int[] { 16843531 });
    Drawable localDrawable = ((TypedArray)localObject2).getDrawable(0);
    ((TypedArray)localObject2).recycle();
    ((ImageView)localObject1).setImageDrawable(localDrawable);
  }
  
  public void e(boolean paramBoolean)
  {
    this.c.setHomeButtonEnabled(paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */