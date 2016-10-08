package com.sina.weibo.sdk.openapi.legacy;

import android.util.SparseArray;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class LocationAPI
  extends AbsOpenAPI
{
  private static final String API_BASE_URL = "https://api.weibo.com/2/location";
  private static final int READ_API_GET_TO_ADDRESS = 2;
  private static final int READ_API_GPS_TO_OFFSET = 0;
  private static final int READ_API_SEARCH_POIS_BY_GEO = 1;
  private static final SparseArray<String> sAPIList;
  
  static
  {
    SparseArray localSparseArray = new SparseArray();
    sAPIList = localSparseArray;
    localSparseArray.put(0, "https://api.weibo.com/2/location/geo/gps_to_offset.json");
    sAPIList.put(1, "https://api.weibo.com/2/location/pois/search/by_geo.json");
    sAPIList.put(2, "https://api.weibo.com/2/location/geo/geo_to_address.json");
  }
  
  public LocationAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildGPS2OffsetParams(Double paramDouble1, Double paramDouble2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("coordinate", paramDouble1 + "," + paramDouble2);
    return localWeiboParameters;
  }
  
  private WeiboParameters buildGeo2AddressParam(Double paramDouble1, Double paramDouble2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("coordinate", paramDouble1 + "," + paramDouble2);
    return localWeiboParameters;
  }
  
  private WeiboParameters buildSerarPoiByGeoParmas(Double paramDouble1, Double paramDouble2, String paramString)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("coordinate", paramDouble1 + "," + paramDouble2);
    localWeiboParameters.put("q", paramString);
    return localWeiboParameters;
  }
  
  public void geo2Address(Double paramDouble1, Double paramDouble2, RequestListener paramRequestListener)
  {
    paramDouble1 = buildGeo2AddressParam(paramDouble1, paramDouble2);
    requestAsync((String)sAPIList.get(2), paramDouble1, "GET", paramRequestListener);
  }
  
  public String geo2AddressSync(Double paramDouble1, Double paramDouble2)
  {
    paramDouble1 = buildGeo2AddressParam(paramDouble1, paramDouble2);
    return requestSync((String)sAPIList.get(2), paramDouble1, "GET");
  }
  
  public void gps2Offset(Double paramDouble1, Double paramDouble2, RequestListener paramRequestListener)
  {
    paramDouble1 = buildGPS2OffsetParams(paramDouble1, paramDouble2);
    requestAsync((String)sAPIList.get(0), paramDouble1, "GET", paramRequestListener);
  }
  
  public String gps2OffsetSync(Double paramDouble1, Double paramDouble2)
  {
    paramDouble1 = buildGPS2OffsetParams(paramDouble1, paramDouble2);
    return requestSync((String)sAPIList.get(0), paramDouble1, "GET");
  }
  
  public void searchPoisByGeo(Double paramDouble1, Double paramDouble2, String paramString, RequestListener paramRequestListener)
  {
    paramDouble1 = buildSerarPoiByGeoParmas(paramDouble1, paramDouble2, paramString);
    requestAsync((String)sAPIList.get(1), paramDouble1, "GET", paramRequestListener);
  }
  
  public String searchPoisByGeoSync(Double paramDouble1, Double paramDouble2, String paramString)
  {
    paramDouble1 = buildSerarPoiByGeoParmas(paramDouble1, paramDouble2, paramString);
    return requestSync((String)sAPIList.get(1), paramDouble1, "GET");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\LocationAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */