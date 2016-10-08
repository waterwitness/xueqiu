package com.flurry.sdk;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

class jj$a
  implements LocationListener
{
  public jj$a(jj paramjj) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    if (paramLocation != null) {
      jj.a(this.a, paramLocation);
    }
    if (jj.c(this.a) >= 3)
    {
      kg.a(4, jj.f(), "Max location reports reached, stopping");
      jj.b(this.a);
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jj$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */