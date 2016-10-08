package com.tencent.stat.event;

import java.util.Arrays;
import java.util.Properties;

public class CustomEvent$Key
{
  String[] args;
  String id;
  Properties prop = null;
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    int i;
    label81:
    do
    {
      return true;
      if (!(paramObject instanceof Key)) {
        break;
      }
      paramObject = (Key)paramObject;
      if ((this.id.equals(((Key)paramObject).id)) && (Arrays.equals(this.args, ((Key)paramObject).args))) {}
      for (i = 1;; i = 0)
      {
        if (this.prop == null) {
          break label81;
        }
        if ((i != 0) && (this.prop.equals(((Key)paramObject).prop))) {
          break;
        }
        return false;
      }
    } while ((i != 0) && (((Key)paramObject).prop == null));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    if (this.id != null) {
      j = this.id.hashCode();
    }
    int i = j;
    if (this.args != null) {
      i = j ^ Arrays.hashCode(this.args);
    }
    j = i;
    if (this.prop != null) {
      j = i ^ this.prop.hashCode();
    }
    return j;
  }
  
  public String toString()
  {
    String str3 = this.id;
    String str1 = "";
    if (this.args != null)
    {
      str1 = this.args[0];
      int i = 1;
      while (i < this.args.length)
      {
        str1 = str1 + "," + this.args[i];
        i += 1;
      }
      str1 = "[" + str1 + "]";
    }
    String str2 = str1;
    if (this.prop != null) {
      str2 = str1 + this.prop.toString();
    }
    return str3 + str2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\event\CustomEvent$Key.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */