package com.tencent.tauth.http.RequestListenerImpl;

import com.tencent.tauth.bean.UserProfile;
import com.tencent.tauth.http.BaseRequestListener;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.CommonException;
import com.tencent.tauth.http.ParseResoneJson;
import com.tencent.tauth.http.TDebug;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class UserProfileListener
  extends BaseRequestListener
{
  private static final String TAG = "UserProfileListener";
  private Callback mCallback;
  
  public UserProfileListener(Callback paramCallback)
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
      catch (NumberFormatException paramObject)
      {
        JSONObject localJSONObject;
        int i;
        int j;
        this.mCallback.onFail(Integer.MIN_VALUE, ((NumberFormatException)paramObject).getMessage());
        ((NumberFormatException)paramObject).printStackTrace();
        continue;
      }
      catch (JSONException paramObject)
      {
        this.mCallback.onFail(Integer.MIN_VALUE, ((JSONException)paramObject).getMessage());
        ((JSONException)paramObject).printStackTrace();
        continue;
      }
      catch (CommonException paramObject)
      {
        this.mCallback.onFail(Integer.MIN_VALUE, ((CommonException)paramObject).getMessage());
        ((CommonException)paramObject).printStackTrace();
        continue;
      }
      try
      {
        j = localJSONObject.getInt("ret");
        i = j;
        paramObject = localJSONObject.getString("msg");
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
      paramObject = new UserProfile(localJSONObject.getString("realname"), localJSONObject.getInt("gender"), localJSONObject.getString("figureurl"), localJSONObject.getString("figureurl_1"), localJSONObject.getString("figureurl_2"));
      this.mCallback.onSuccess(paramObject);
      TDebug.i("UserProfileListener", paramString);
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\RequestListenerImpl\UserProfileListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */