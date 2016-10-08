package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaDescription.Builder;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class a
  implements Parcelable
{
  public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator() {};
  private final String a;
  private final CharSequence b;
  private final CharSequence c;
  private final CharSequence d;
  private final Bitmap e;
  private final Uri f;
  private final Bundle g;
  private final Uri h;
  private Object i;
  
  private a(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.c = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.d = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.e = ((Bitmap)paramParcel.readParcelable(null));
    this.f = ((Uri)paramParcel.readParcelable(null));
    this.g = paramParcel.readBundle();
    this.h = ((Uri)paramParcel.readParcelable(null));
  }
  
  private a(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri1, Bundle paramBundle, Uri paramUri2)
  {
    this.a = paramString;
    this.b = paramCharSequence1;
    this.c = paramCharSequence2;
    this.d = paramCharSequence3;
    this.e = paramBitmap;
    this.f = paramUri1;
    this.g = paramBundle;
    this.h = paramUri2;
  }
  
  public static a a(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
      return null;
    }
    Object localObject = new b();
    ((b)localObject).a = ((MediaDescription)paramObject).getMediaId();
    ((b)localObject).b = ((MediaDescription)paramObject).getTitle();
    ((b)localObject).c = ((MediaDescription)paramObject).getSubtitle();
    ((b)localObject).d = ((MediaDescription)paramObject).getDescription();
    ((b)localObject).e = ((MediaDescription)paramObject).getIconBitmap();
    ((b)localObject).f = ((MediaDescription)paramObject).getIconUri();
    ((b)localObject).g = ((MediaDescription)paramObject).getExtras();
    if (Build.VERSION.SDK_INT >= 23) {
      ((b)localObject).h = ((MediaDescription)paramObject).getMediaUri();
    }
    localObject = new a(((b)localObject).a, ((b)localObject).b, ((b)localObject).c, ((b)localObject).d, ((b)localObject).e, ((b)localObject).f, ((b)localObject).g, ((b)localObject).h, (byte)0);
    ((a)localObject).i = paramObject;
    return (a)localObject;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String toString()
  {
    return this.b + ", " + this.c + ", " + this.d;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      paramParcel.writeString(this.a);
      TextUtils.writeToParcel(this.b, paramParcel, paramInt);
      TextUtils.writeToParcel(this.c, paramParcel, paramInt);
      TextUtils.writeToParcel(this.d, paramParcel, paramInt);
      paramParcel.writeParcelable(this.e, paramInt);
      paramParcel.writeParcelable(this.f, paramInt);
      paramParcel.writeBundle(this.g);
      return;
    }
    if ((this.i != null) || (Build.VERSION.SDK_INT < 21)) {}
    for (Object localObject1 = this.i;; localObject1 = this.i)
    {
      ((MediaDescription)localObject1).writeToParcel(paramParcel, paramInt);
      return;
      localObject1 = new MediaDescription.Builder();
      Object localObject2 = this.a;
      ((MediaDescription.Builder)localObject1).setMediaId((String)localObject2);
      localObject2 = this.b;
      ((MediaDescription.Builder)localObject1).setTitle((CharSequence)localObject2);
      localObject2 = this.c;
      ((MediaDescription.Builder)localObject1).setSubtitle((CharSequence)localObject2);
      localObject2 = this.d;
      ((MediaDescription.Builder)localObject1).setDescription((CharSequence)localObject2);
      localObject2 = this.e;
      ((MediaDescription.Builder)localObject1).setIconBitmap((Bitmap)localObject2);
      localObject2 = this.f;
      ((MediaDescription.Builder)localObject1).setIconUri((Uri)localObject2);
      localObject2 = this.g;
      ((MediaDescription.Builder)localObject1).setExtras((Bundle)localObject2);
      if (Build.VERSION.SDK_INT >= 23)
      {
        localObject2 = this.h;
        ((MediaDescription.Builder)localObject1).setMediaUri((Uri)localObject2);
      }
      this.i = ((MediaDescription.Builder)localObject1).build();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\media\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */