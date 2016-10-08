package pl.droidsonroids.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.view.View.BaseSavedState;

final class f
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<f> CREATOR = new Parcelable.Creator() {};
  final long[][] a;
  
  private f(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = new long[paramParcel.readInt()][];
    int i = 0;
    while (i < this.a.length)
    {
      this.a[i] = paramParcel.createLongArray();
      i += 1;
    }
  }
  
  public f(Parcelable paramParcelable, long[] paramArrayOfLong)
  {
    super(paramParcelable);
    this.a = new long[1][];
    this.a[0] = paramArrayOfLong;
  }
  
  f(Parcelable paramParcelable, Drawable... paramVarArgs)
  {
    super(paramParcelable);
    this.a = new long[paramVarArgs.length][];
    int i = 0;
    if (i < paramVarArgs.length)
    {
      paramParcelable = paramVarArgs[i];
      if ((paramParcelable instanceof b)) {
        this.a[i] = ((b)paramParcelable).f.m();
      }
      for (;;)
      {
        i += 1;
        break;
        this.a[i] = null;
      }
    }
  }
  
  final void a(Drawable paramDrawable, int paramInt)
  {
    if ((this.a[paramInt] != null) && ((paramDrawable instanceof b)))
    {
      paramDrawable = (b)paramDrawable;
      paramDrawable.a(paramDrawable.f.a(this.a[paramInt], paramDrawable.e));
    }
  }
  
  public final void writeToParcel(@NonNull Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a.length);
    long[][] arrayOfLong = this.a;
    int i = arrayOfLong.length;
    paramInt = 0;
    while (paramInt < i)
    {
      paramParcel.writeLongArray(arrayOfLong[paramInt]);
      paramInt += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */