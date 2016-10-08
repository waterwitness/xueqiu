package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;

public class LastTicket
  implements Parcelable
{
  public static final Parcelable.Creator<LastTicket> CREATOR = new Parcelable.Creator()
  {
    public final LastTicket createFromParcel(Parcel paramAnonymousParcel)
    {
      boolean bool2 = true;
      LastTicket localLastTicket = new LastTicket();
      if (paramAnonymousParcel.readInt() == 1)
      {
        bool1 = true;
        LastTicket.access$002(localLastTicket, Boolean.valueOf(bool1));
        if (paramAnonymousParcel.readInt() != 1) {
          break label107;
        }
        bool1 = true;
        label40:
        LastTicket.access$102(localLastTicket, Boolean.valueOf(bool1));
        if (paramAnonymousParcel.readInt() != 1) {
          break label112;
        }
        bool1 = true;
        label59:
        LastTicket.access$202(localLastTicket, Boolean.valueOf(bool1));
        if (paramAnonymousParcel.readInt() != 1) {
          break label117;
        }
      }
      label107:
      label112:
      label117:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        LastTicket.access$302(localLastTicket, Boolean.valueOf(bool1));
        LastTicket.access$402(localLastTicket, Integer.valueOf(paramAnonymousParcel.readInt()));
        return localLastTicket;
        bool1 = false;
        break;
        bool1 = false;
        break label40;
        bool1 = false;
        break label59;
      }
    }
    
    public final LastTicket[] newArray(int paramAnonymousInt)
    {
      return new LastTicket[paramAnonymousInt];
    }
  };
  @Expose
  private Boolean closed;
  @Expose
  private Boolean finished;
  @Expose
  private Boolean paid;
  @Expose
  private Integer status;
  @Expose
  private Boolean submitted;
  
  public int describeContents()
  {
    return 0;
  }
  
  public Boolean getClosed()
  {
    return this.closed;
  }
  
  public Boolean getFinished()
  {
    return this.finished;
  }
  
  public Boolean getPaid()
  {
    return this.paid;
  }
  
  public Integer getStatus()
  {
    return this.status;
  }
  
  public Boolean getSubmitted()
  {
    return this.submitted;
  }
  
  public void setClosed(Boolean paramBoolean)
  {
    this.closed = paramBoolean;
  }
  
  public void setFinished(Boolean paramBoolean)
  {
    this.finished = paramBoolean;
  }
  
  public void setPaid(Boolean paramBoolean)
  {
    this.paid = paramBoolean;
  }
  
  public void setStatus(Integer paramInteger)
  {
    this.status = paramInteger;
  }
  
  public void setSubmitted(Boolean paramBoolean)
  {
    this.submitted = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    if (this.closed.booleanValue())
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!this.paid.booleanValue()) {
        break label87;
      }
      paramInt = 1;
      label31:
      paramParcel.writeInt(paramInt);
      if (!this.submitted.booleanValue()) {
        break label92;
      }
      paramInt = 1;
      label48:
      paramParcel.writeInt(paramInt);
      if (!this.finished.booleanValue()) {
        break label97;
      }
    }
    label87:
    label92:
    label97:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(this.status.intValue());
      return;
      paramInt = 0;
      break;
      paramInt = 0;
      break label31;
      paramInt = 0;
      break label48;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\LastTicket.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */