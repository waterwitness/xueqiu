package android.support.v4.view;

import android.database.DataSetObservable;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class bd
{
  DataSetObservable a = new DataSetObservable();
  
  public Parcelable a()
  {
    return null;
  }
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }
  
  public void a(ViewGroup paramViewGroup) {}
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }
  
  public abstract boolean a(View paramView, Object paramObject);
  
  public abstract int b();
  
  public CharSequence b(int paramInt)
  {
    return null;
  }
  
  public void b(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
  
  public int c()
  {
    return -1;
  }
  
  public void d()
  {
    this.a.notifyChanged();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\bd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */