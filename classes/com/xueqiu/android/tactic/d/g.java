package com.xueqiu.android.tactic.d;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;
import java.util.List;

public class g
  implements Parcelable
{
  public static final Parcelable.Creator<g> CREATOR = new Parcelable.Creator() {};
  @Expose
  public String categoryName;
  @Expose
  private List<String> constraints;
  @Expose
  public String content;
  @Expose
  private Date createdAt;
  @Expose
  private int defaultOptionId;
  @Expose
  public String detail;
  @Expose
  private Date endTime;
  @Expose
  private String iconUrl;
  @Expose
  public long id;
  @Expose
  public String imageUrl;
  @Expose
  private List<g> items;
  @Expose
  public String owningStatus;
  @Expose
  public double percentage;
  @Expose
  public List<f> prices;
  @Expose
  public String pushTime;
  @Expose
  private Date startTime;
  @Expose
  public String status;
  @Expose
  public int stockCount;
  @Expose
  private String subtitle;
  @Expose
  public String summary;
  @Expose
  public String tag;
  @Expose
  public String title;
  @Expose
  private String type;
  @Expose
  private Date updateAt;
  @Expose
  private boolean visible;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = 0L;
    paramParcel.writeStringList(this.constraints);
    long l1;
    if (this.createdAt == null)
    {
      l1 = 0L;
      paramParcel.writeLong(l1);
      paramParcel.writeInt(this.defaultOptionId);
      paramParcel.writeString(this.detail);
      if (this.endTime != null) {
        break label214;
      }
      l1 = 0L;
      label50:
      paramParcel.writeLong(l1);
      paramParcel.writeString(this.iconUrl);
      paramParcel.writeLong(this.id);
      paramParcel.writeList(this.items);
      paramParcel.writeList(this.prices);
      if (this.startTime != null) {
        break label225;
      }
      l1 = 0L;
      label96:
      paramParcel.writeLong(l1);
      paramParcel.writeString(this.status);
      paramParcel.writeString(this.summary);
      paramParcel.writeString(this.tag);
      paramParcel.writeString(this.title);
      paramParcel.writeString(this.type);
      if (this.updateAt != null) {
        break label236;
      }
      l1 = l2;
      label151:
      paramParcel.writeLong(l1);
      if (!this.visible) {
        break label247;
      }
    }
    label214:
    label225:
    label236:
    label247:
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeString(this.categoryName);
      paramParcel.writeString(this.subtitle);
      paramParcel.writeString(this.owningStatus);
      paramParcel.writeInt(this.stockCount);
      return;
      l1 = this.createdAt.getTime();
      break;
      l1 = this.endTime.getTime();
      break label50;
      l1 = this.startTime.getTime();
      break label96;
      l1 = this.updateAt.getTime();
      break label151;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\d\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */