package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;
import java.util.List;

public class b
  implements Parcelable
{
  public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator() {};
  @Expose
  public double changePercent;
  @Expose
  private String changePercentDesc;
  @Expose
  public double current;
  @Expose
  public String desc;
  @Expose
  public int flag;
  @Expose
  public boolean isNew;
  @Expose
  public String name;
  @Expose
  public int replyCount;
  @Expose
  public long statusId;
  @Expose
  public String symbol;
  @Expose
  private List<String> triggerDesc;
  @Expose
  public double triggerPrice;
  @Expose
  private Date triggerTime;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeDouble(this.changePercent);
    paramParcel.writeString(this.changePercentDesc);
    paramParcel.writeDouble(this.current);
    paramParcel.writeString(this.desc);
    if (this.isNew)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      paramParcel.writeString(this.name);
      paramParcel.writeString(this.symbol);
      paramParcel.writeInt(this.flag);
      paramParcel.writeStringList(this.triggerDesc);
      paramParcel.writeDouble(this.triggerPrice);
      if (this.triggerTime != null) {
        break label122;
      }
    }
    label122:
    for (long l = 0L;; l = this.triggerTime.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeInt(this.replyCount);
      paramParcel.writeLong(this.statusId);
      return;
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */