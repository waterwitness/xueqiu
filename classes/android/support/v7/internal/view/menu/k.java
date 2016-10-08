package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class k
  implements ad
{
  private int a;
  private int b;
  protected Context h;
  protected Context i;
  protected p j;
  protected LayoutInflater k;
  protected LayoutInflater l;
  public ae m;
  protected af n;
  public int o;
  
  public k(Context paramContext, int paramInt1, int paramInt2)
  {
    this.h = paramContext;
    this.k = LayoutInflater.from(paramContext);
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public af a(ViewGroup paramViewGroup)
  {
    if (this.n == null)
    {
      this.n = ((af)this.k.inflate(this.a, paramViewGroup, false));
      this.n.a(this.j);
      b(true);
    }
    return this.n;
  }
  
  public View a(t paramt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof ag)) {}
    for (paramView = (ag)paramView;; paramView = (ag)this.k.inflate(this.b, paramViewGroup, false))
    {
      a(paramt, paramView);
      return (View)paramView;
    }
  }
  
  public void a(Context paramContext, p paramp)
  {
    this.i = paramContext;
    this.l = LayoutInflater.from(this.i);
    this.j = paramp;
  }
  
  public void a(p paramp, boolean paramBoolean)
  {
    if (this.m != null) {
      this.m.a(paramp, paramBoolean);
    }
  }
  
  public abstract void a(t paramt, ag paramag);
  
  public boolean a(aj paramaj)
  {
    if (this.m != null) {
      return this.m.b(paramaj);
    }
    return false;
  }
  
  public boolean a(t paramt)
  {
    return true;
  }
  
  protected boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public void b(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)this.n;
    if (localViewGroup == null) {}
    label219:
    label226:
    for (;;)
    {
      return;
      int i2;
      if (this.j != null)
      {
        this.j.h();
        ArrayList localArrayList = this.j.g();
        int i4 = localArrayList.size();
        int i3 = 0;
        int i1 = 0;
        i2 = i1;
        if (i3 < i4)
        {
          t localt = (t)localArrayList.get(i3);
          if (!a(localt)) {
            break label219;
          }
          View localView1 = localViewGroup.getChildAt(i1);
          if ((localView1 instanceof ag)) {}
          for (Object localObject = ((ag)localView1).getItemData();; localObject = null)
          {
            View localView2 = a(localt, localView1, localViewGroup);
            if (localt != localObject) {
              localView2.setPressed(false);
            }
            if (localView2 != localView1)
            {
              localObject = (ViewGroup)localView2.getParent();
              if (localObject != null) {
                ((ViewGroup)localObject).removeView(localView2);
              }
              ((ViewGroup)this.n).addView(localView2, i1);
            }
            i1 += 1;
            i3 += 1;
            break;
          }
        }
      }
      for (;;)
      {
        if (i2 >= localViewGroup.getChildCount()) {
          break label226;
        }
        if (!a(localViewGroup, i2))
        {
          i2 += 1;
          continue;
          break;
          i2 = 0;
        }
      }
    }
  }
  
  public final boolean b(t paramt)
  {
    return false;
  }
  
  public final boolean c(t paramt)
  {
    return false;
  }
  
  public boolean h()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */