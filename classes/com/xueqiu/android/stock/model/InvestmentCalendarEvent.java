package com.xueqiu.android.stock.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xueqiu.android.base.util.ab;
import java.io.Serializable;

public class InvestmentCalendarEvent
  implements Parcelable, Serializable
{
  public static final String ALL_DAY = "all_day";
  public static final String AUTHOR_ID = "author_id";
  public static final String BEST_EDITOR_ID = "best_editor_id";
  public static final String CALENDAR_ID = "calendar_id";
  public static final String COLOR = "color";
  public static final String CREATED_AT = "created_at";
  public static final Parcelable.Creator<InvestmentCalendarEvent> CREATOR = new Parcelable.Creator()
  {
    public final InvestmentCalendarEvent createFromParcel(Parcel paramAnonymousParcel)
    {
      return new InvestmentCalendarEvent(paramAnonymousParcel, null);
    }
    
    public final InvestmentCalendarEvent[] newArray(int paramAnonymousInt)
    {
      return new InvestmentCalendarEvent[paramAnonymousInt];
    }
  };
  public static final String DATE_TIME = "date_time";
  public static final String DESCRIPTION = "description";
  public static final String END_DATE = "end_date";
  public static final String ID = "id";
  public static final String IS_STOCK_EVENT = "is_stock_event";
  public static final String LAST_MODIFIED = "last_modified";
  public static final String LOCATION = "location";
  public static final String PRIVACY = "privacy";
  public static final String PRIVACY_READ = "privacy_read";
  public static final String PRIVACY_WRITE = "privacy_write";
  public static final String SHARE_ID = "share_id";
  public static final String START_DATE = "start_date";
  public static final String STAT = "stat";
  public static final String STAT_ALERT = "alert";
  public static final String STAT_SHARE = "share";
  public static final String STOCK = "stock";
  public static final String STOCK_EVENT_TYPE = "stock_event_type";
  public static final String TIMEZONE = "timezone";
  public static final String TITLE = "title";
  public static final String URL = "url";
  private static final long serialVersionUID = 1L;
  public String mAlert;
  public boolean mAll_day;
  public long mAuthor_id;
  public long mBest_editor_id;
  public long mCalendar_id;
  public String mCalendar_title;
  public String mColor;
  public long mCreated_at;
  public String mDescription;
  public String mEDateTime;
  public long mEnd_Date;
  public long mId;
  public boolean mIsStockEvent;
  public String mLocation;
  public String mPrivacy_read;
  public String mPrivacy_write;
  public String mSDateTime;
  public String mShare;
  public long mShare_id;
  public long mStart_date;
  public String mStat;
  public String mStock;
  public int mStock_event_type;
  public String mTimezone;
  public String mTitle;
  public String mUrl;
  public long mlast_modified;
  
  public InvestmentCalendarEvent() {}
  
  private InvestmentCalendarEvent(Parcel paramParcel)
  {
    this.mId = paramParcel.readLong();
    this.mAuthor_id = paramParcel.readLong();
    this.mCalendar_id = paramParcel.readLong();
    this.mCalendar_title = ab.a(paramParcel);
    this.mTitle = ab.a(paramParcel);
    this.mTimezone = ab.a(paramParcel);
    this.mColor = ab.a(paramParcel);
    this.mStart_date = paramParcel.readLong();
    this.mEnd_Date = paramParcel.readLong();
    this.mLocation = ab.a(paramParcel);
    this.mDescription = ab.a(paramParcel);
    this.mUrl = ab.a(paramParcel);
    this.mStock = ab.a(paramParcel);
    this.mStock_event_type = paramParcel.readInt();
    this.mBest_editor_id = paramParcel.readLong();
    this.mlast_modified = paramParcel.readLong();
    this.mCreated_at = paramParcel.readLong();
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      this.mAll_day = bool1;
      this.mShare_id = paramParcel.readLong();
      this.mPrivacy_read = ab.a(paramParcel);
      this.mPrivacy_write = ab.a(paramParcel);
      this.mAlert = ab.a(paramParcel);
      this.mShare = ab.a(paramParcel);
      this.mSDateTime = ab.a(paramParcel);
      this.mEDateTime = ab.a(paramParcel);
      this.mStat = ab.a(paramParcel);
      if (paramParcel.readInt() != 1) {
        break label242;
      }
    }
    label242:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.mIsStockEvent = bool1;
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
    paramParcel.writeLong(this.mCalendar_id);
    ab.a(paramParcel, this.mCalendar_title);
    ab.a(paramParcel, this.mTitle);
    ab.a(paramParcel, this.mTimezone);
    ab.a(paramParcel, this.mColor);
    paramParcel.writeLong(this.mStart_date);
    paramParcel.writeLong(this.mEnd_Date);
    ab.a(paramParcel, this.mLocation);
    ab.a(paramParcel, this.mDescription);
    ab.a(paramParcel, this.mUrl);
    ab.a(paramParcel, this.mStock);
    paramParcel.writeInt(this.mStock_event_type);
    paramParcel.writeLong(this.mBest_editor_id);
    paramParcel.writeLong(this.mlast_modified);
    paramParcel.writeLong(this.mCreated_at);
    if (this.mAll_day)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      paramParcel.writeLong(this.mShare_id);
      ab.a(paramParcel, this.mPrivacy_read);
      ab.a(paramParcel, this.mPrivacy_write);
      ab.a(paramParcel, this.mAlert);
      ab.a(paramParcel, this.mShare);
      ab.a(paramParcel, this.mSDateTime);
      ab.a(paramParcel, this.mEDateTime);
      ab.a(paramParcel, this.mStat);
      if (!this.mIsStockEvent) {
        break label236;
      }
    }
    label236:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
      paramInt = 0;
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\model\InvestmentCalendarEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */