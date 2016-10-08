package com.xueqiu.android.cube.widget;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;

class d
{
  @Expose
  @SerializedName("filter_values")
  ArrayList<a> filterValues;
  @Expose
  @SerializedName("param")
  String paramKey;
  
  public String toString()
  {
    return ((a)this.filterValues.get(0)).label;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\widget\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */