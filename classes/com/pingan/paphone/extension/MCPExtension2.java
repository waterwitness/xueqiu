package com.pingan.paphone.extension;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.pingan.a;
import com.pingan.domain.ExtensionDateBean;
import com.pingan.domain.ExtensionDateBean.ExtenssionInfo;
import com.pingan.domain.ExtensionDateBean.LdData;
import com.pingan.domain.ExtensionDateBean.QueueDetailMap;
import com.pingan.domain.ExtensionDateBean.QueueInfo;
import com.pingan.domain.ExtensionDateBean.SystemInfo;
import com.pingan.main.GlobalVarHolder;
import com.pingan.paphone.extension.http.AsyncHttpClient;
import com.pingan.paphone.extension.http.AsyncHttpResponseHandler;
import com.pingan.paphone.extension.http.RequestParams;
import com.pingan.paphone.utils.CommonUtil;
import com.pingan.paphone.utils.LogM;
import com.pingan.paphone.utils.NetHttpUtils;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

public class MCPExtension2
{
  private static final String DYNAMICFLAG = "1";
  public static final int FETCH_CALLID_FAILD = 302;
  public static final int FETCH_CALLID_SUCCESS = 301;
  public static final int GET_EXTENSION_FAIL = 204;
  public static final int GET_EXTENSION_OK_F = 201;
  public static final int GET_EXTENSION_OK_S = 200;
  public static final int GET_EXTENSION_RELEASE = 205;
  public static final int GET_QUEUEDEDEDAIL_FAIL = 214;
  public static final int GET_QUEUEDEDEDAIL_OK = 210;
  public static String LOCATION = "1";
  private static final String MCPTOKEN = "8efaae0430e456e943f1a2b7e436ef7b";
  private static final String SYSTEMID = "521261";
  private static final String TAG = "MCPExtension";
  private static int callDoCount = 0;
  public static int callIdCount = 0;
  private static int count = 0;
  private static long expiryDate;
  private static String extensionNumber;
  private static Gson gson;
  private static Context mContext;
  private static Handler mHandler;
  private static Timer queueDetailTimer;
  private static int refreshCount;
  private static int releaseCount = 0;
  private static MCPExtension2.QueueDetailTask taskQueueDetail;
  private static MCPExtension2.MyTimerTaskRefresh taskRefresh;
  private static long tempExpiryDate;
  private static String tempTokenKey;
  private static Timer timeRefresh;
  private static String tokenKey;
  private String TERMINALNO = "0";
  
  static
  {
    refreshCount = 0;
  }
  
  public static void callDo(String paramString)
  {
    RequestParams localRequestParams = new RequestParams();
    LogM.i("calldo-->getParams--extensionNumber=" + extensionNumber);
    localRequestParams.put("callerNumber", extensionNumber);
    localRequestParams.put("calleeNumber", GlobalVarHolder.callTo);
    localRequestParams.put("recordFlag", "1");
    localRequestParams.put("systemId", "521261");
    localRequestParams.put("callId", paramString);
    NetHttpUtils.getInstence(mContext).post(a.b + "common/call.do", localRequestParams, new AsyncHttpResponseHandler()
    {
      public final void onFailure(Throwable paramAnonymousThrowable, String paramAnonymousString)
      {
        LogM.e("-------保存流水号到mcp失败");
        if (MCPExtension2.access$504() <= 3) {
          MCPExtension2.callDo(MCPExtension2.this);
        }
        for (;;)
        {
          LogM.e("MCPExtension", paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
          return;
          LogM.e("MCPExtension", "MCPExtension---calldo三次重试失败");
        }
      }
      
      public final void onSuccess(int paramAnonymousInt, String paramAnonymousString)
      {
        LogM.d("MCPExtension", "保存流水号到mcp--response -> " + paramAnonymousString);
      }
    });
  }
  
  public static void cancleRequestQueue()
  {
    NetHttpUtils.getInstence(mContext).cancelRequests(mContext, true);
  }
  
  private static String createToken(String paramString1, String paramString2, long paramLong)
  {
    paramString2 = paramString1 + paramString2 + paramLong;
    paramString1 = MessageDigest.getInstance("SHA");
    StringBuffer localStringBuffer;
    try
    {
      paramString1.update(paramString2.getBytes("GBK"));
      byte[] arrayOfByte = paramString1.digest();
      localStringBuffer = new StringBuffer();
      int j = arrayOfByte.length;
      int i = 0;
      while (i < j)
      {
        paramString2 = Integer.toHexString(arrayOfByte[i] & 0xFF);
        paramString1 = paramString2;
        if (paramString2.length() == 1) {
          paramString1 = "0" + paramString2;
        }
        localStringBuffer.append(paramString1);
        i += 1;
      }
    }
    catch (UnsupportedEncodingException paramString2)
    {
      for (;;)
      {
        paramString2.printStackTrace();
      }
    }
    return localStringBuffer.toString();
  }
  
  public static void fetchCallUuId(final String paramString, Context paramContext, final Handler paramHandler)
  {
    AsyncHttpClient localAsyncHttpClient = NetHttpUtils.getInstence(paramContext);
    LogM.d("MCPExtension", " fetchCallUuId start -- user_id=" + a.d);
    RequestParams localRequestParams = new RequestParams();
    try
    {
      localRequestParams.put("funcNo", "700010");
      localRequestParams.put("user_id", a.d);
      localRequestParams.put("flow_sn", paramString);
      LogM.d("MCPExtension", "fetchCallUuId---params=" + localRequestParams.toString());
      localAsyncHttpClient.post(a.i, localRequestParams, new AsyncHttpResponseHandler()
      {
        Message msg = new Message();
        
        public final void onFailure(Throwable paramAnonymousThrowable, String paramAnonymousString)
        {
          if (MCPExtension2.callIdCount <= 5)
          {
            MCPExtension2.callIdCount += 1;
            LogM.e("MCPExtension", "fetchCallUuId---呼叫号保存重试 callIdCount=" + MCPExtension2.callIdCount);
            MCPExtension2.fetchCallUuId(paramString, MCPExtension2.this, paramHandler);
            return;
          }
          LogM.e("MCPExtension", "fetchCallUuId---呼叫号保存重试5次均失败。");
          this.msg.arg1 = 302;
          paramHandler.sendMessage(this.msg);
        }
        
        public final void onSuccess(int paramAnonymousInt, String paramAnonymousString)
        {
          LogM.e("MCPExtension", "fetchCallUuId-->呼叫号保存-->response=" + paramAnonymousString);
          MCPExtension2.callIdCount = 0;
          CommonUtil.TDOnEvent(MCPExtension2.this, "15-视频认证页面", "1504-上传流水号");
          try
          {
            paramAnonymousString = new JSONObject(paramAnonymousString).getString("error_no");
            LogM.d("MCPExtension", "error_no=" + paramAnonymousString);
            this.msg.arg1 = 301;
            this.msg.obj = paramAnonymousString;
            paramHandler.sendMessage(this.msg);
            return;
          }
          catch (JSONException paramAnonymousString)
          {
            LogM.d("MCPExtension", "fetchCallUuId-->呼叫号ee保存-->结果json解析失败。");
            paramAnonymousString.printStackTrace();
          }
        }
      });
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  private static String getExpiryDate()
  {
    return String.valueOf(expiryDate);
  }
  
  public static void getExtension(final Context paramContext, Handler paramHandler)
  {
    try
    {
      mContext = paramContext;
      setParams();
      RequestParams localRequestParams = new RequestParams();
      LogM.i("getExtension-->getParams---MCP_URL=" + a.b);
      localRequestParams.put("dynamicFlag", "1");
      localRequestParams.put("systemId", "521261");
      localRequestParams.put("location", LOCATION);
      localRequestParams.put("expiryDate", String.valueOf(expiryDate));
      localRequestParams.put("tokenKey", tokenKey);
      if (a.a != null) {
        localRequestParams.put("terminalID", a.a);
      }
      NetHttpUtils.getInstence(mContext).post(a.b + "common/clientInit.do", localRequestParams, new AsyncHttpResponseHandler()
      {
        public final void onFailure(Throwable paramAnonymousThrowable, String paramAnonymousString)
        {
          super.onFailure(paramAnonymousThrowable, paramAnonymousString);
          LogM.e("MCPExtension", "getExtension-content:" + paramAnonymousString);
          MCPExtension2.this.postDelayed(new Runnable()
          {
            public void run()
            {
              MCPExtension2.access$208();
              if (MCPExtension2.count < 3)
              {
                LogM.i("getExtension-->延时5秒重新执行--count=" + MCPExtension2.count);
                MCPExtension2.getExtension(MCPExtension2.1.this.val$context, MCPExtension2.this);
                return;
              }
              LogM.i("getExtension-->重试次数达到上限---count=" + MCPExtension2.count);
              MCPExtension2.access$202(0);
              MCPExtension2.this.sendEmptyMessage(204);
            }
          }, 10000L);
          LogM.e("MCPExtension", paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
        }
        
        public final void onSuccess(int paramAnonymousInt, String paramAnonymousString)
        {
          super.onSuccess(paramAnonymousInt, paramAnonymousString);
          String str;
          try
          {
            LogM.d("MCPExtension", "getExtension--response -> " + paramAnonymousString);
            MCPExtension2.access$002(new Gson());
            LogM.e("MCPExtension", "getExtension-content:" + paramAnonymousString);
            paramAnonymousString = (ExtensionDateBean)MCPExtension2.gson.fromJson(paramAnonymousString, ExtensionDateBean.class);
            if (paramAnonymousString == null)
            {
              LogM.e("MCPExtension", "getExtension-->Json数据解析失败！");
              return;
            }
            str = paramAnonymousString.message;
            LogM.d("MCPExtension", "getExtension--->msg=" + str);
            if ((paramAnonymousString.data == null) || (paramAnonymousString.data.equals("null")) || (paramAnonymousString.data.equals("")))
            {
              LogM.e("MCPExtension", "getExtension-->Json数据--->data为空！");
              return;
            }
          }
          catch (JsonSyntaxException paramAnonymousString)
          {
            paramAnonymousString.printStackTrace();
            LogM.e("MCPExtension", "getExtension-->json格式错误--JsonSyntaxException--" + paramAnonymousString.getMessage());
            return;
            if ("S".equals(paramAnonymousString.data.flag))
            {
              MCPExtension2.access$102(paramAnonymousString.data.extensionInfo.extensionNumber);
              GlobalVarHolder.account = MCPExtension2.extensionNumber;
              GlobalVarHolder.password = paramAnonymousString.data.extensionInfo.password;
              GlobalVarHolder.SBCIP = paramAnonymousString.data.systemInfo.sipServer;
              str = paramAnonymousString.data.systemInfo.realm;
              GlobalVarHolder.SBCDomain = str;
              if (str.equals("gcc-sip-stg-paic.com.cn")) {
                GlobalVarHolder.SBCDomain = "gcc-sip-stg.paic.com.cn";
              }
              GlobalVarHolder.SBCPort = paramAnonymousString.data.systemInfo.sipServerPort;
              MCPExtension2.this.sendEmptyMessage(200);
              return;
            }
          }
          catch (Exception paramAnonymousString)
          {
            LogM.e("MCPExtension", "getExtension-->Exception--" + paramAnonymousString.getMessage());
            return;
          }
          if (paramAnonymousString.data.useAbleExtensionFlag == null) {
            MCPExtension2.this.postDelayed(new Runnable()
            {
              public void run()
              {
                MCPExtension2.access$208();
                if (MCPExtension2.count < 3)
                {
                  LogM.i("getExtension-->请求成功-延时5秒重新执行--count=" + MCPExtension2.count);
                  MCPExtension2.getExtension(MCPExtension2.1.this.val$context, MCPExtension2.this);
                  return;
                }
                LogM.i("getExtension-->请求成功-重试次数达到上限---count=" + MCPExtension2.count);
                MCPExtension2.access$202(0);
                MCPExtension2.this.sendEmptyMessage(201);
              }
            }, 10000L);
          }
          if (!"S".equals(paramAnonymousString.data.useAbleExtensionFlag))
          {
            if ("F".equals(paramAnonymousString.data.useAbleExtensionFlag))
            {
              MCPExtension2.this.postDelayed(new Runnable()
              {
                public void run()
                {
                  MCPExtension2.access$208();
                  if (MCPExtension2.count < 3)
                  {
                    LogM.i("getExtension-->请求成功-延时5秒重新执行--count=" + MCPExtension2.count);
                    MCPExtension2.getExtension(MCPExtension2.1.this.val$context, MCPExtension2.this);
                    return;
                  }
                  LogM.i("getExtension-->请求成功-重试次数达到上限---count=" + MCPExtension2.count);
                  MCPExtension2.access$202(0);
                  MCPExtension2.this.sendEmptyMessage(201);
                }
              }, 20000L);
              return;
            }
            LogM.e("MCPExtension", "getExtension-->GET_EXTENSION_OK_F--msg=" + str);
          }
        }
      });
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static long getLongExpiryDate()
  {
    return System.currentTimeMillis() + 600000L;
  }
  
  public static void getQueueDedail(Context paramContext, Handler paramHandler)
  {
    RequestParams localRequestParams = new RequestParams();
    localRequestParams.put("queueNo", "326302");
    localRequestParams.put("systemId", "521261");
    localRequestParams.put("expiryDate", String.valueOf(expiryDate));
    localRequestParams.put("tokenKey", tokenKey);
    NetHttpUtils.getInstence(paramContext).post(a.b + "common/getQueueDedail.do", localRequestParams, new AsyncHttpResponseHandler()
    {
      public final void onFailure(Throwable paramAnonymousThrowable, String paramAnonymousString)
      {
        LogM.e("-------获取排队人数失败");
        if (MCPExtension2.access$504() > 3) {
          LogM.e("MCPExtension", "MCPExtension---getQueueDedail三次重试失败");
        }
        LogM.e("MCPExtension", paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
      }
      
      public final void onSuccess(int paramAnonymousInt, String paramAnonymousString)
      {
        LogM.d("MCPExtension", "获取排队人数--response -> " + paramAnonymousString);
        MCPExtension2.access$002(new Gson());
        paramAnonymousString = (ExtensionDateBean)MCPExtension2.gson.fromJson(paramAnonymousString, ExtensionDateBean.class);
        if (paramAnonymousString == null)
        {
          LogM.e("MCPExtension", "getQueueDedail-->Json数据解析失败！");
          return;
        }
        String str = paramAnonymousString.message;
        LogM.d("MCPExtension", "getQueueDedail--->message=" + str);
        if ((paramAnonymousString.data == null) || (paramAnonymousString.data.equals("null")) || (paramAnonymousString.data.equals("")))
        {
          LogM.e("MCPExtension", "getQueueDedail-->Json数据--->data为空！");
          return;
        }
        Log.d("MCPExtension", "getQueueDedail---msg=" + paramAnonymousString.data.message);
        Log.d("MCPExtension", "getQueueDedail---queueDetail=" + paramAnonymousString.data.getQueueDetailMap.QUEUINGDETAIL);
        paramAnonymousString = Integer.valueOf(Integer.parseInt(paramAnonymousString.data.getQueueDetailMap.QUEUINGDETAIL));
        if (paramAnonymousString.intValue() <= 0) {}
        for (paramAnonymousInt = 1;; paramAnonymousInt = paramAnonymousString.intValue())
        {
          paramAnonymousString = new Message();
          paramAnonymousString.arg1 = 210;
          paramAnonymousString.obj = String.valueOf(Integer.valueOf(paramAnonymousInt));
          MCPExtension2.this.sendMessage(paramAnonymousString);
          return;
        }
      }
    });
  }
  
  public static void getQueueInfo(Context paramContext, final Handler paramHandler)
  {
    setTempTokenKey();
    RequestParams localRequestParams = new RequestParams();
    localRequestParams.put("callerNum", GlobalVarHolder.account);
    localRequestParams.put("queueNo", GlobalVarHolder.callTo);
    localRequestParams.put("systemId", "521261");
    localRequestParams.put("expiryDate", String.valueOf(tempExpiryDate));
    localRequestParams.put("tokenKey", tempTokenKey);
    LogM.d("MCPExtension", "getQueueInfo--params=" + localRequestParams.toString());
    NetHttpUtils.getInstence(paramContext).post(a.b + "common/queryQueueInfo.do", localRequestParams, new AsyncHttpResponseHandler()
    {
      private Double ceil;
      
      public final void onFailure(Throwable paramAnonymousThrowable, String paramAnonymousString)
      {
        LogM.e("-------获取排队人数失败");
        if (MCPExtension2.access$504() > 3) {
          LogM.e("MCPExtension", "MCPExtension---getQueueInfo三次重试失败");
        }
        LogM.e("MCPExtension", paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
      }
      
      public final void onSuccess(int paramAnonymousInt, String paramAnonymousString)
      {
        LogM.d("MCPExtension", "获取排队人数--response -> " + paramAnonymousString);
        MCPExtension2.access$002(new Gson());
        paramAnonymousString = (ExtensionDateBean)MCPExtension2.gson.fromJson(paramAnonymousString, ExtensionDateBean.class);
        if (paramAnonymousString == null) {
          LogM.e("MCPExtension", "getQueueInfo-->Json数据解析失败！");
        }
        String str;
        do
        {
          return;
          str = paramAnonymousString.message;
          LogM.d("MCPExtension", "getQueueInfo--->message=" + str);
          if ((paramAnonymousString.data == null) || (paramAnonymousString.data.equals("null")) || (paramAnonymousString.data.equals("")))
          {
            LogM.e("MCPExtension", "getQueueInfo-->Json数据--->data为空！");
            return;
          }
          Log.d("MCPExtension", "getQueueInfo--flag=" + paramAnonymousString.data.flag + "-msg=" + paramAnonymousString.data.message);
          Log.d("MCPExtension", "getQueueInfo---queueInfo=" + paramAnonymousString.data.queueInfo.toString());
          str = paramAnonymousString.data.queueInfo.queuePosition;
        } while ((str == null) || ("".equals(str.trim())) || (!"S".equals(paramAnonymousString.data.flag)));
        CommonUtil.TDOnEvent(MCPExtension2.this, "15-视频认证页面", "1506-获取排队位置");
        try
        {
          paramAnonymousInt = Integer.parseInt(paramAnonymousString.data.queueInfo.watingTime);
          try
          {
            d1 = Double.parseDouble(str);
            double d2 = Double.parseDouble(paramAnonymousString.data.queueInfo.agentOnline);
            if (d2 == 0.0D) {
              break label379;
            }
            this.ceil = Double.valueOf(Math.ceil(d1 / d2));
          }
          catch (Exception paramAnonymousString)
          {
            for (;;)
            {
              double d1;
              this.ceil = null;
            }
          }
          paramAnonymousString = new Message();
          paramAnonymousString.arg1 = 210;
          paramAnonymousString.arg2 = paramAnonymousInt;
          d1 = this.ceil.doubleValue();
          paramAnonymousString.obj = ((int)d1);
          paramHandler.sendMessage(paramAnonymousString);
          return;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            localNumberFormatException.printStackTrace();
            paramAnonymousInt = 0;
            continue;
            label379:
            this.ceil = Double.valueOf(1.0D);
          }
        }
      }
    });
  }
  
  public static void refreshByPost()
  {
    RequestParams localRequestParams = new RequestParams();
    localRequestParams.put("extensionNumber", extensionNumber);
    localRequestParams.put("tokenKey", tokenKey);
    NetHttpUtils.getInstence(mContext).post(a.b + "common/registExtension.do", localRequestParams, new AsyncHttpResponseHandler()
    {
      public final void onFailure(Throwable paramAnonymousThrowable, String paramAnonymousString)
      {
        super.onFailure(paramAnonymousThrowable, paramAnonymousString);
        LogM.e("-------刷新分机号获取数据失败");
        if (MCPExtension2.access$404() <= 3) {
          MCPExtension2.refreshByPost();
        }
        for (;;)
        {
          LogM.e("MCPExtension", paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
          return;
          LogM.e("MCPExtension", "MCPExtension---refresh三次重试失败");
        }
      }
      
      public final void onSuccess(int paramAnonymousInt, String paramAnonymousString)
      {
        super.onSuccess(paramAnonymousInt, paramAnonymousString);
        try
        {
          LogM.d("MCPExtension", "刷新分机--response -> " + paramAnonymousString);
          MCPExtension2.access$002(new Gson());
          paramAnonymousString = (ExtensionDateBean)MCPExtension2.gson.fromJson(paramAnonymousString, ExtensionDateBean.class);
          if (paramAnonymousString != null)
          {
            paramAnonymousString = paramAnonymousString.data.flag;
            LogM.d("MCPExtension", "刷新分机号成功--flag=" + paramAnonymousString);
          }
          return;
        }
        catch (JsonSyntaxException paramAnonymousString)
        {
          LogM.d("MCPExtension", "刷新分机号成功--json格式错误");
          paramAnonymousString.printStackTrace();
          return;
        }
        catch (Exception paramAnonymousString)
        {
          LogM.d("MCPExtension", "刷新分机号成功--Exception");
          paramAnonymousString.printStackTrace();
        }
      }
    });
  }
  
  public static void releaseByPost(Handler paramHandler)
  {
    LogM.d("MCPExtension", "releaseByPost start ");
    RequestParams localRequestParams = new RequestParams();
    localRequestParams.put("extensionNumber", extensionNumber);
    localRequestParams.put("tokenKey", tokenKey);
    NetHttpUtils.getInstence(mContext).post(a.b + "common/releaseExtension.do", localRequestParams, new AsyncHttpResponseHandler()
    {
      public final void onFailure(Throwable paramAnonymousThrowable, String paramAnonymousString)
      {
        super.onFailure(paramAnonymousThrowable, paramAnonymousString);
        LogM.e("MCPExtension", paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
        if (MCPExtension2.access$304() <= 3) {
          MCPExtension2.releaseByPost(MCPExtension2.this);
        }
        do
        {
          return;
          LogM.e("MCPExtension", "MCPExtension-->释放分机号三次失败！");
        } while (MCPExtension2.this == null);
        LogM.e("MCPExtension", "释放分机号error--handler send GET_EXTENSION_RELEASE  ");
        MCPExtension2.this.sendEmptyMessage(205);
      }
      
      public final void onSuccess(int paramAnonymousInt, String paramAnonymousString)
      {
        super.onSuccess(paramAnonymousInt, paramAnonymousString);
        try
        {
          MCPExtension2.access$302(0);
          MCPExtension2.access$002(new Gson());
          if ((ExtensionDateBean)MCPExtension2.gson.fromJson(paramAnonymousString, ExtensionDateBean.class) != null)
          {
            LogM.e("MCPExtension", "释放分机号成功--response -> " + paramAnonymousString);
            if (MCPExtension2.this != null)
            {
              LogM.e("MCPExtension", "释放分机号--handler send GET_EXTENSION_RELEASE  ");
              MCPExtension2.this.sendEmptyMessage(205);
            }
          }
          return;
        }
        catch (JsonSyntaxException paramAnonymousString)
        {
          paramAnonymousString.printStackTrace();
          LogM.d("MCPExtension", "释放分机号--json格式错误 ");
          return;
        }
        catch (Exception paramAnonymousString)
        {
          LogM.e("MCPExtension", "释放分机号--->Exception--" + paramAnonymousString.getMessage());
        }
      }
    });
    if ((extensionNumber == null) || (tokenKey == null))
    {
      LogM.e("MCPExtension", "releaseByPost--->extensionNumber==null||tokenKey==null");
      if (paramHandler != null)
      {
        LogM.d("MCPExtension", "释放分机号--handler send GET_EXTENSION_RELEASE  ");
        paramHandler.sendEmptyMessage(205);
      }
    }
  }
  
  public static void setContext(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public static void setExtensionCount(int paramInt)
  {
    count = paramInt;
  }
  
  private static void setParams()
  {
    expiryDate = System.currentTimeMillis() + 600000L;
    try
    {
      tokenKey = createToken("8efaae0430e456e943f1a2b7e436ef7b", "521261", expiryDate);
      LogM.d("MCPExtension", "MCPExtension-----getExtension----->setParams-->tokenKey=" + tokenKey);
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
      tempTokenKey = createToken("8efaae0430e456e943f1a2b7e436ef7b", "521261", tempExpiryDate);
      LogM.d("MCPExtension", "MCPExtension-----getTokenKey--->tokenKey=" + tokenKey);
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
  
  public static void startQueueRefresh(Context paramContext, Handler paramHandler)
  {
    LogM.d("MCPExtension", "startQueueRefresh");
    mContext = paramContext;
    mHandler = paramHandler;
    stopQueueRefresh();
    if (queueDetailTimer == null) {
      queueDetailTimer = new Timer();
    }
    if (taskQueueDetail == null) {
      taskQueueDetail = new MCPExtension2.QueueDetailTask();
    }
    queueDetailTimer.scheduleAtFixedRate(taskQueueDetail, 0L, 30000L);
  }
  
  public static void startTimerRefresh()
  {
    
    if (timeRefresh == null) {
      timeRefresh = new Timer();
    }
    if (taskRefresh == null) {
      taskRefresh = new MCPExtension2.MyTimerTaskRefresh();
    }
    timeRefresh.scheduleAtFixedRate(taskRefresh, 0L, 60000L);
  }
  
  public static void stopQueueRefresh()
  {
    LogM.d("MCPExtension", "stopQueueRefresh");
    if (queueDetailTimer != null)
    {
      queueDetailTimer.cancel();
      queueDetailTimer = null;
    }
    if (taskQueueDetail != null)
    {
      taskQueueDetail.cancel();
      taskQueueDetail = null;
    }
  }
  
  public static void stopTimerRefresh()
  {
    if (timeRefresh != null)
    {
      timeRefresh.cancel();
      timeRefresh = null;
    }
    if (taskRefresh != null)
    {
      taskRefresh.cancel();
      taskRefresh = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\MCPExtension2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */