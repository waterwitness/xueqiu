package android.support.v4.view;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.d.d;
import android.support.v4.d.e;
import android.support.v4.d.f;
import android.view.View.BaseSavedState;

public final class cs
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<cs> CREATOR;
  int a;
  Parcelable b;
  ClassLoader c;
  
  static
  {
    Object localObject = new e() {};
    if (Build.VERSION.SDK_INT >= 13) {}
    for (localObject = new f((e)localObject);; localObject = new d((e)localObject))
    {
      CREATOR = (Parcelable.Creator)localObject;
      return;
    }
  }
  
  cs(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    super(paramParcel);
    ClassLoader localClassLoader = paramClassLoader;
    if (paramClassLoader == null) {
      localClassLoader = getClass().getClassLoader();
    }
    this.a = paramParcel.readInt();
    this.b = paramParcel.readParcelable(localClassLoader);
    this.c = localClassLoader;
  }
  
  public cs(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public final String toString()
  {
    return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a);
    paramParcel.writeParcelable(this.b, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\cs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */