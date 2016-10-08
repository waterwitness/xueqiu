package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;
import java.util.List;

public class e
  implements Parcelable
{
  public static final Parcelable.Creator<e> CREATOR = new Parcelable.Creator() {};
  @Expose
  private boolean enabled;
  @Expose
  private int optionId;
  @Expose
  private List<a> options;
  @Expose
  private Date updateAt;
  @Expose
  private long userId;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.enabled)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.optionId);
      paramParcel.writeList(this.options);
      if (this.updateAt != null) {
        break label58;
      }
    }
    label58:
    for (long l = 0L;; l = this.updateAt.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeLong(this.userId);
      return;
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */