package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xueqiu.android.base.util.ab;
import java.io.Serializable;

public class InvestmentCalendar
  implements Parcelable, Serializable
{
  public static final String AUTHOR_ID = "author_id";
  public static final String COLOR = "color";
  public static final String CREATED_AT = "created_at";
  public static final Parcelable.Creator<InvestmentCalendar> CREATOR = new Parcelable.Creator()
  {
    public final InvestmentCalendar createFromParcel(Parcel paramAnonymousParcel)
    {
      return new InvestmentCalendar(paramAnonymousParcel, null);
    }
    
    public final InvestmentCalendar[] newArray(int paramAnonymousInt)
    {
      return new InvestmentCalendar[paramAnonymousInt];
    }
  };
  public static final String DESCRIPTION = "description";
  public static final String FOLLOWERS_COUNT = "followers_count";
  public static final String ID = "id";
  public static final String IS_MINE = "is_mine";
  public static final String LOCATION = "location";
  public static final String MINE = "mine";
  public static final String OTHER = "other";
  public static final String PRIVACY_READ = "privacy_read";
  public static final String PRIVACY_WRITE = "privacy_write";
  public static final String STAT = "stat";
  public static final String STAT_ALERT = "alert";
  public static final String STAT_SHOW = "show";
  public static final String STAT_SORT = "sort";
  public static final String SYMBOL = "symbol";
  public static final String TIMEZONE = "timezone";
  public static final String TITLE = "title";
  public static final String TYPE = "type";
  public static final String URL = "url";
  private static final long serialVersionUID = 1L;
  public long mAuthor_id;
  public String mColor;
  public long mCreated_at;
  public String mDescription;
  public int mFollowers_count;
  public long mId;
  public boolean mIsMine;
  public String mLocation;
  public String mPrivacy_read;
  public String mPrivacy_write;
  public String mStat;
  public String mStatAlert;
  public String mStatColor;
  public boolean mStatShow;
  public int mStatSort;
  public String mSymbol;
  public String mTimezone;
  public String mTitle;
  public int mType;
  public String mUrl;
  
  public InvestmentCalendar() {}
  
  private InvestmentCalendar(Parcel paramParcel)
  {
    this.mId = paramParcel.readLong();
    this.mAuthor_id = paramParcel.readLong();
    this.mUrl = ab.a(paramParcel);
    this.mColor = ab.a(paramParcel);
    this.mTimezone = ab.a(paramParcel);
    this.mTitle = ab.a(paramParcel);
    this.mDescription = ab.a(paramParcel);
    this.mLocation = ab.a(paramParcel);
    this.mFollowers_count = paramParcel.readInt();
    this.mCreated_at = paramParcel.readLong();
    this.mSymbol = ab.a(paramParcel);
    this.mType = paramParcel.readInt();
    this.mPrivacy_read = ab.a(paramParcel);
    this.mPrivacy_write = ab.a(paramParcel);
    this.mStat = ab.a(paramParcel);
    this.mStatColor = ab.a(paramParcel);
    this.mStatAlert = ab.a(paramParcel);
    this.mStatSort = paramParcel.readInt();
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      this.mStatShow = bool1;
      if (paramParcel.readInt() != 1) {
        break label186;
      }
    }
    label186:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.mIsMine = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeLong(this.mId);
    paramParcel.writeLong(this.mAuthor_id);
    ab.a(paramParcel, this.mUrl);
    ab.a(paramParcel, this.mColor);
    ab.a(paramParcel, this.mTimezone);
    ab.a(paramParcel, this.mTitle);
    ab.a(paramParcel, this.mDescription);
    ab.a(paramParcel, this.mLocation);
    paramParcel.writeInt(this.mFollowers_count);
    paramParcel.writeLong(this.mCreated_at);
    ab.a(paramParcel, this.mSymbol);
    paramParcel.writeInt(this.mType);
    ab.a(paramParcel, this.mPrivacy_read);
    ab.a(paramParcel, this.mPrivacy_write);
    ab.a(paramParcel, this.mStat);
    ab.a(paramParcel, this.mStatColor);
    ab.a(paramParcel, this.mStatAlert);
    paramParcel.writeInt(this.mStatSort);
    if (this.mStatShow)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.mIsMine) {
        break label180;
      }
    }
    label180:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\InvestmentCalendar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */