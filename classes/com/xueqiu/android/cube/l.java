package com.xueqiu.android.cube;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

class l
{
  @Expose
  @SerializedName("name")
  String name;
  @Expose
  @SerializedName("value")
  String value;
  
  public l(CubeTopListActivity paramCubeTopListActivity, String paramString1, String paramString2)
  {
    this.name = paramString1;
    this.value = paramString2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */