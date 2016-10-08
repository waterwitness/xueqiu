package com.xueqiu.android.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class SearchHots
  implements Parcelable
{
  public static final Parcelable.Creator<SearchHots> CREATOR = new Parcelable.Creator()
  {
    public final SearchHots createFromParcel(Parcel paramAnonymousParcel)
    {
      return new SearchHots(paramAnonymousParcel);
    }
    
    public final SearchHots[] newArray(int paramAnonymousInt)
    {
      return new SearchHots[paramAnonymousInt];
    }
  };
  @Expose
  private String key;
  @Expose
  private String target;
  @Expose
  private String type;
  
  protected SearchHots(Parcel paramParcel)
  {
    this.key = paramParcel.readString();
    this.type = paramParcel.readString();
    this.target = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getKey()
  {
    return this.key;
  }
  
  public String getTarget()
  {
    return this.target;
  }
  
  public String getType()
  {
    return this.type;
  }
  
  public void setKey(String paramString)
  {
    this.key = paramString;
  }
  
  public void setTarget(String paramString)
  {
    this.target = paramString;
  }
  
  public void setType(String paramString)
  {
    this.type = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.key);
    paramParcel.writeString(this.type);
    paramParcel.writeString(this.target);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\SearchHots.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */