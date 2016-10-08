package com.xueqiu.android.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.Date;

public class EnterButton
  implements Parcelable
{
  public static final Parcelable.Creator<EnterButton> CREATOR = new Parcelable.Creator()
  {
    public final EnterButton createFromParcel(Parcel paramAnonymousParcel)
    {
      boolean bool = true;
      EnterButton localEnterButton = new EnterButton();
      EnterButton.access$002(localEnterButton, paramAnonymousParcel.readString());
      EnterButton.access$102(localEnterButton, paramAnonymousParcel.readString());
      EnterButton.access$202(localEnterButton, paramAnonymousParcel.readString());
      EnterButton.access$302(localEnterButton, paramAnonymousParcel.readInt());
      EnterButton.access$402(localEnterButton, paramAnonymousParcel.readString());
      EnterButton.access$502(localEnterButton, new Date(paramAnonymousParcel.readLong()));
      if (paramAnonymousParcel.readInt() == 1) {}
      for (;;)
      {
        EnterButton.access$602(localEnterButton, bool);
        EnterButton.access$702(localEnterButton, paramAnonymousParcel.readInt());
        return localEnterButton;
        bool = false;
      }
    }
    
    public final EnterButton[] newArray(int paramAnonymousInt)
    {
      return new EnterButton[paramAnonymousInt];
    }
  };
  @Expose
  @SerializedName("buttonName")
  private String buttonName;
  @Expose
  @SerializedName("buttonPosition")
  private int buttonPosition;
  @Expose
  @SerializedName("createAt")
  private Date createAt;
  @Expose
  private int id;
  @Expose
  @SerializedName("imageLink_2x")
  private String imageLink_2x;
  @Expose
  @SerializedName("imageLink_3x")
  private String imageLink_3x;
  @Expose
  @SerializedName("targetUrl")
  private String targetUrl;
  @Expose
  private boolean visible;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getButtonName()
  {
    return this.buttonName;
  }
  
  public int getButtonPosition()
  {
    return this.buttonPosition;
  }
  
  public Date getCreateAt()
  {
    return this.createAt;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getImageLink_2x()
  {
    return this.imageLink_2x;
  }
  
  public String getImageLink_3x()
  {
    return this.imageLink_3x;
  }
  
  public String getTargetUrl()
  {
    return this.targetUrl;
  }
  
  public boolean isVisible()
  {
    return this.visible;
  }
  
  public void setButtonName(String paramString)
  {
    this.buttonName = paramString;
  }
  
  public void setButtonPosition(int paramInt)
  {
    this.buttonPosition = paramInt;
  }
  
  public void setCreateAt(Date paramDate)
  {
    this.createAt = paramDate;
  }
  
  public void setId(int paramInt)
  {
    this.id = paramInt;
  }
  
  public void setImageLink_2x(String paramString)
  {
    this.imageLink_2x = paramString;
  }
  
  public void setImageLink_3x(String paramString)
  {
    this.imageLink_3x = paramString;
  }
  
  public void setTargetUrl(String paramString)
  {
    this.targetUrl = paramString;
  }
  
  public void setVisible(boolean paramBoolean)
  {
    this.visible = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.buttonName);
    paramParcel.writeString(this.imageLink_2x);
    paramParcel.writeString(this.imageLink_3x);
    paramParcel.writeInt(this.buttonPosition);
    paramParcel.writeString(this.targetUrl);
    long l;
    if (this.createAt == null)
    {
      l = 0L;
      paramParcel.writeLong(l);
      if (!this.visible) {
        break label88;
      }
    }
    label88:
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.id);
      return;
      l = this.createAt.getTime();
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\model\EnterButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */