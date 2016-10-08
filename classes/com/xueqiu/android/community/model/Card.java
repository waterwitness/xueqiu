package com.xueqiu.android.community.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.xueqiu.android.base.util.ab;

public class Card
  implements Parcelable
{
  public static final Parcelable.Creator<Card> CREATOR = new Parcelable.Creator()
  {
    public final Card createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Card(paramAnonymousParcel, null);
    }
    
    public final Card[] newArray(int paramAnonymousInt)
    {
      return new Card[paramAnonymousInt];
    }
  };
  public static final String TYPE_CUBE = "cube";
  public static final String TYPE_REBALANCING = "rebalancing";
  public static final String TYPE_STOCK = "stock";
  @Expose
  public String data;
  @Expose
  public String param;
  @Expose
  public String type;
  
  public Card() {}
  
  private Card(Parcel paramParcel)
  {
    this.type = ab.a(paramParcel);
    this.param = ab.a(paramParcel);
    this.data = ab.a(paramParcel);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ab.a(paramParcel, this.type);
    ab.a(paramParcel, this.param);
    ab.a(paramParcel, this.data);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\model\Card.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */