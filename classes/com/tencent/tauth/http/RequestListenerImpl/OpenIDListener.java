package com.tencent.tauth.http.RequestListenerImpl;

import com.tencent.tauth.bean.OpenId;
import com.tencent.tauth.http.BaseRequestListener;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.CommonException;
import com.tencent.tauth.http.ParseResoneJson;
import com.tencent.tauth.http.TDebug;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenIDListener
  extends BaseRequestListener
{
  private static final String TAG = "OpenIDListener";
  private Callback mCallback;
  
  public OpenIDListener(Callback paramCallback)
  {
    this.mCallback = paramCallback;
  }
  
  public void onComplete(String paramString, Object paramObject)
  {
    super.onComplete(paramString, paramObject);
    for (;;)
    {
      try
      {
        localJSONObject = ParseResoneJson.parseJson(paramString);
        i = 0;
      }
      catch (CommonException paramObject)
      {
        JSONObject localJSONObject;
        int i;
        int j;
        this.mCallback.onFail(Integer.MIN_VALUE, ((CommonException)paramObject).getMessage());
        ((CommonException)paramObject).printStackTrace();
        continue;
      }
      catch (NumberFormatException paramObject)
      {
        this.mCallback.onFail(Integer.MIN_VALUE, ((NumberFormatException)paramObject).getMessage());
        continue;
      }
      catch (JSONException paramObject)
      {
        this.mCallback.onFail(Integer.MIN_VALUE, ((JSONException)paramObject).getMessage());
        continue;
      }
      try
      {
        j = localJSONObject.getInt("error");
        i = j;
        paramObject = localJSONObject.getString("error_description");
      }
      catch (JSONException paramObject)
      {
        paramObject = "";
        j = i;
        continue;
        this.mCallback.onFail(j, (String)paramObject);
      }
    }
    if (j == 0)
    {
      paramObject = new OpenId(localJSONObject.getString("openid"), localJSONObject.getString("client_id"));
      this.mCallback.onSuccess(paramObject);
      TDebug.i("OpenIDListener", paramString);
      return;
    }
  }
  
  public void onFileNotFoundException(FileNotFoundException paramFileNotFoundException, Object paramObject)
  {
    this.mCallback.onFail(Integer.MIN_VALUE, "Resource not found:" + paramFileNotFoundException.getMessage());
  }
  
  public void onIOException(IOException paramIOException, Object paramObject)
  {
    this.mCallback.onFail(Integer.MIN_VALUE, "Network Error:" + paramIOException.getMessage());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\RequestListenerImpl\OpenIDListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */