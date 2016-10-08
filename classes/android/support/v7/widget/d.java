package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

final class d
{
  final f a;
  final e b;
  final List<View> c;
  
  d(f paramf)
  {
    this.a = paramf;
    this.b = new e();
    this.c = new ArrayList();
  }
  
  final int a()
  {
    return this.a.a() - this.c.size();
  }
  
  final int a(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = this.a.a();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label72;
      }
      int k = paramInt - (i - this.b.d(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!this.b.b(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label72:
    return -1;
  }
  
  final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = this.a.a();; paramInt = a(paramInt))
    {
      this.a.a(paramView, paramInt, paramLayoutParams);
      this.b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        this.c.add(paramView);
      }
      return;
    }
  }
  
  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = this.a.a();; paramInt = a(paramInt))
    {
      this.a.a(paramView, paramInt);
      this.b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        this.c.add(paramView);
      }
      return;
    }
  }
  
  final int b()
  {
    return this.a.a();
  }
  
  final View b(int paramInt)
  {
    paramInt = a(paramInt);
    return this.a.b(paramInt);
  }
  
  final View c(int paramInt)
  {
    return this.a.b(paramInt);
  }
  
  public final String toString()
  {
    return this.b.toString() + ", hidden list:" + this.c.size();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */