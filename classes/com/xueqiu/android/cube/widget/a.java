package com.xueqiu.android.cube.widget;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

class a
{
  @Expose
  @SerializedName("name")
  String label;
  @Expose
  @SerializedName("value")
  String value;
  
  public String toString()
  {
    return this.label;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\widget\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */