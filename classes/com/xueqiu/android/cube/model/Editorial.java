package com.xueqiu.android.cube.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.gson.annotations.Expose;
import java.util.Date;

public class Editorial
  implements Parcelable
{
  public static final Parcelable.Creator<Editorial> CREATOR = new Parcelable.Creator()
  {
    public final Editorial createFromParcel(Parcel paramAnonymousParcel)
    {
      Editorial localEditorial = new Editorial();
      Editorial.access$002(localEditorial, paramAnonymousParcel.readLong());
      Editorial.access$102(localEditorial, paramAnonymousParcel.readString());
      Editorial.access$202(localEditorial, paramAnonymousParcel.readInt());
      Editorial.access$302(localEditorial, paramAnonymousParcel.readString());
      Editorial.access$402(localEditorial, paramAnonymousParcel.readString());
      Editorial.access$502(localEditorial, paramAnonymousParcel.readInt());
      Editorial.access$602(localEditorial, new Date(paramAnonymousParcel.readLong()));
      Editorial.access$702(localEditorial, paramAnonymousParcel.readString());
      return localEditorial;
    }
    
    public final Editorial[] newArray(int paramAnonymousInt)
    {
      return new Editorial[paramAnonymousInt];
    }
  };
  @Expose
  private Date createdAt;
  @Expose
  private int cubeCount;
  @Expose
  private String description;
  @Expose
  private long id;
  @Expose
  private String image;
  @Expose
  private String name;
  @Expose
  private int rank;
  @Expose
  private String url;
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getCreatedAt()
  {
    return this.createdAt;
  }
  
  public int getCubeCount()
  {
    return this.cubeCount;
  }
  
  public String getDescription()
  {
    return this.description;
  }
  
  public long getId()
  {
    return this.id;
  }
  
  public String getImage()
  {
    return this.image;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int getRank()
  {
    return this.rank;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public void setCreatedAt(Date paramDate)
  {
    this.createdAt = paramDate;
  }
  
  public void setCubeCount(int paramInt)
  {
    this.cubeCount = paramInt;
  }
  
  public void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public void setId(long paramLong)
  {
    this.id = paramLong;
  }
  
  public void setImage(String paramString)
  {
    this.image = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setRank(int paramInt)
  {
    this.rank = paramInt;
  }
  
  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.id);
    paramParcel.writeString(this.name);
    paramParcel.writeInt(this.cubeCount);
    paramParcel.writeString(this.description);
    paramParcel.writeString(this.image);
    paramParcel.writeInt(this.rank);
    paramParcel.writeLong(this.createdAt.getTime());
    paramParcel.writeString(this.url);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Editorial.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */