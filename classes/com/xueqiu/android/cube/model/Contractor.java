package com.xueqiu.android.cube.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Contractor
{
  @Expose
  private String certNo;
  @Expose
  private String id;
  @Expose
  private String logo;
  @Expose
  private String name;
  @Expose
  private String shortName;
  @Expose
  @SerializedName("tel")
  private String telephoneNumber;
  
  public String getCertNo()
  {
    return this.certNo;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getLogo()
  {
    return this.logo;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getShortName()
  {
    return this.shortName;
  }
  
  public String getTelephoneNumber()
  {
    return this.telephoneNumber;
  }
  
  public void setCertNo(String paramString)
  {
    this.certNo = paramString;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setLogo(String paramString)
  {
    this.logo = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setShortName(String paramString)
  {
    this.shortName = paramString;
  }
  
  public void setTelephoneNumber(String paramString)
  {
    this.telephoneNumber = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\model\Contractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */