package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class SessionToken
  implements Parcelable
{
  public static final Parcelable.Creator<SessionToken> CREATOR = new Parcelable.Creator()
  {
    public final SessionToken createFromParcel(Parcel paramAnonymousParcel)
    {
      SessionToken localSessionToken = new SessionToken();
      SessionToken.access$002(localSessionToken, paramAnonymousParcel.readString());
      return localSessionToken;
    }
    
    public final SessionToken[] newArray(int paramAnonymousInt)
    {
      return new SessionToken[paramAnonymousInt];
    }
  };
  @Expose
  private String sessionToken;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getSessionToken()
  {
    return this.sessionToken;
  }
  
  public void setSessionToken(String paramString)
  {
    this.sessionToken = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.sessionToken);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\SessionToken.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */