package android.support.v7.widget;

import android.view.ViewGroup;

public abstract class s<VH extends ao>
{
  public final t a = new t();
  boolean b = false;
  
  public abstract int a();
  
  public abstract VH a(ViewGroup paramViewGroup);
  
  public abstract void a(VH paramVH, int paramInt);
  
  public final void b(VH paramVH, int paramInt)
  {
    paramVH.b = paramInt;
    if (this.b) {
      paramVH.d = -1L;
    }
    a(paramVH, paramInt);
    paramVH.a(1, 7);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */