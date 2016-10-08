package com.pingan.main.utils;

import android.content.Context;
import android.util.Log;
import com.google.gson.Gson;
import com.loopj.android.http.AsyncHttpClient;
import com.loopj.android.http.AsyncHttpResponseHandler;
import com.loopj.android.http.RequestParams;
import com.pingan.a.a.e;
import com.pingan.a.a.g;
import com.pingan.main.GlobalVarHolder;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.http.Header;

public class MCPUtils
{
  private static final String DYNAMICFLAG = "1";
  public static int GET_IBOS_TOKEN_FAILED = 3;
  public static int GET_IBOS_TOKEN_OK_F = 0;
  public static int GET_IBOS_TOKEN_OK_S = 0;
  public static String LOCATION;
  private static final String MCPTOKEN = "7efaae0430e856f943f1a4b7e936ef7b";
  public static final int MCP_PRD = 0;
  public static final int MCP_STG = 1;
  private static String MCP_URL;
  private static String SYSTEMID = "Lfex-trade-BH";
  private static final String TAG = "MCPExtension";
  static AsyncHttpResponseHandler asyncHttpResponseHandler = new AsyncHttpResponseHandler()
  {
    public void onFailure(int paramAnonymousInt, Header[] paramAnonymousArrayOfHeader, byte[] paramAnonymousArrayOfByte, Throwable paramAnonymousThrowable)
    {
      if (paramAnonymousArrayOfByte != null)
      {
        Log.i("MCPExtension", "请求失败：" + new String(paramAnonymousArrayOfByte));
        return;
      }
      Log.i("MCPExtension", "请求失败：arg2=null");
    }
    
    public void onSuccess(int paramAnonymousInt, Header[] paramAnonymousArrayOfHeader, byte[] paramAnonymousArrayOfByte)
    {
      try
      {
        paramAnonymousArrayOfHeader = new String(paramAnonymousArrayOfByte, "GBK");
        Log.i("MCPExtension", "请求成功" + paramAnonymousArrayOfHeader);
        paramAnonymousArrayOfHeader = (ExtensionDateBean)new Gson().fromJson(paramAnonymousArrayOfHeader, ExtensionDateBean.class);
        if (paramAnonymousArrayOfHeader == null)
        {
          e.d("MCPExtension", "getExtension-->Json数据解析失败！");
          return;
        }
      }
      catch (UnsupportedEncodingException paramAnonymousArrayOfHeader)
      {
        do
        {
          for (;;)
          {
            paramAnonymousArrayOfHeader.printStackTrace();
            paramAnonymousArrayOfHeader = null;
          }
          if (paramAnonymousArrayOfHeader.data == null)
          {
            e.d("MCPExtension", "getExtension-->Json数据解析--data=null！");
            return;
          }
          paramAnonymousArrayOfByte = paramAnonymousArrayOfHeader.data.message;
          e.a("MCPExtension", "getExtension--->msg=" + paramAnonymousArrayOfByte + "--token=" + paramAnonymousArrayOfHeader.data.token + "-bucket=" + paramAnonymousArrayOfHeader.data.bucketName);
        } while ((!"S".equalsIgnoreCase(paramAnonymousArrayOfHeader.data.flag)) || (paramAnonymousArrayOfHeader.data.token == null) || (paramAnonymousArrayOfHeader.data.bucketName == null));
        MCPUtils.mUploadUtil.c = paramAnonymousArrayOfHeader.data.bucketName;
        MCPUtils.mUploadUtil.d = paramAnonymousArrayOfHeader.data.token;
        MCPUtils.mUploadUtil.a(GlobalVarHolder.UUID);
      }
    }
  };
  private static long expiryDate;
  private static Context mContext;
  private static AsyncHttpClient mRequestQueue;
  static g mUploadUtil;
  private static long tempExpiryDate;
  private static String tempTokenKey;
  private static String tokenKey;
  private String TERMINALNO = "0";
  
  static
  {
    LOCATION = "1";
    MCP_URL = GlobalVarHolder.MCP_URL_PRD;
    GET_IBOS_TOKEN_OK_S = 1;
    GET_IBOS_TOKEN_OK_F = 2;
  }
  
  public static void cancleRequestQueue()
  {
    getInstence(mContext).cancelRequests(mContext, true);
  }
  
  private static String createToken(String paramString1, String paramString2, long paramLong)
  {
    paramString2 = paramString1 + paramString2 + paramLong;
    paramString1 = MessageDigest.getInstance("SHA");
    try
    {
      paramString1.update(paramString2.getBytes("GBK"));
      arrayOfByte = paramString1.digest();
      localStringBuffer = new StringBuffer();
      int j = arrayOfByte.length;
      i = 0;
      if (i >= j) {
        return localStringBuffer.toString();
      }
    }
    catch (UnsupportedEncodingException paramString2)
    {
      for (;;)
      {
        byte[] arrayOfByte;
        StringBuffer localStringBuffer;
        int i;
        paramString2.printStackTrace();
        continue;
        paramString2 = Integer.toHexString(arrayOfByte[i] & 0xFF);
        paramString1 = paramString2;
        if (paramString2.length() == 1) {
          paramString1 = "0" + paramString2;
        }
        localStringBuffer.append(paramString1);
        i += 1;
      }
    }
  }
  
  private static String getExpiryDate()
  {
    return String.valueOf(expiryDate);
  }
  
  public static void getIBOSTokenAndUpload(Context paramContext, g paramg)
  {
    setTempTokenKey();
    mUploadUtil = paramg;
    paramg = new RequestParams();
    paramg.put("systemId", SYSTEMID);
    paramg.put("expiryDate", String.valueOf(tempExpiryDate));
    paramg.put("tokenKey", tempTokenKey);
    Log.d("MCPExtension", "MCP_URL=" + MCP_URL);
    getInstence(paramContext).post(paramContext, MCP_URL + "common/getIobsToken.do", paramg, asyncHttpResponseHandler);
  }
  
  public static AsyncHttpClient getInstence(Context paramContext)
  {
    if (mRequestQueue == null) {
      mRequestQueue = new AsyncHttpClient();
    }
    return mRequestQueue;
  }
  
  private static long getLongExpiryDate()
  {
    return System.currentTimeMillis() + 600000L;
  }
  
  public static void mcpSwitch(int paramInt)
  {
    if (paramInt == 0)
    {
      MCP_URL = GlobalVarHolder.MCP_URL_PRD;
      SYSTEMID = "642807";
    }
    while (paramInt != 1) {
      return;
    }
    MCP_URL = GlobalVarHolder.MCP_URL_STG;
    SYSTEMID = "642807";
  }
  
  private static void setParams()
  {
    expiryDate = System.currentTimeMillis() + 600000L;
    try
    {
      tokenKey = createToken("7efaae0430e856f943f1a4b7e936ef7b", SYSTEMID, expiryDate);
      e.a("MCPExtension", "MCPExtension-----getExtension----->setParams-->tokenKey=" + tokenKey);
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
  }
  
  private static String setTempTokenKey()
  {
    try
    {
      tempExpiryDate = System.currentTimeMillis() + 600000L;
      tempTokenKey = createToken("7efaae0430e856f943f1a4b7e936ef7b", SYSTEMID, tempExpiryDate);
      e.a("MCPExtension", "MCPExtension-----getTokenKey--->tokenKey=" + tokenKey);
      return tokenKey;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        localNoSuchAlgorithmException.printStackTrace();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\utils\MCPUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */