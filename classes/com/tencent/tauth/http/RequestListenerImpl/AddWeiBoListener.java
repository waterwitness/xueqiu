package com.tencent.tauth.http.RequestListenerImpl;

import com.tencent.tauth.http.BaseRequestListener;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.CommonException;
import com.tencent.tauth.http.ParseResoneJson;
import com.tencent.tauth.http.TDebug;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class AddWeiBoListener
  extends BaseRequestListener
{
  private static final String TAG = "AddWeiBoListener";
  private Callback mCallback;
  
  public AddWeiBoListener(Callback paramCallback)
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
        paramObject = ParseResoneJson.parseJson(paramString);
        i = 0;
      }
      catch (NumberFormatException paramObject)
      {
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
        j = ((JSONObject)paramObject).getInt("ret");
        i = j;
        paramObject = ((JSONObject)paramObject).getString("msg");
      }
      catch (JSONException paramObject)
      {
        paramObject = "";
        j = i;
      }
    }
    if (j != 0) {
      this.mCallback.onFail(j, (String)paramObject);
    }
    TDebug.i("AddWeiBoListener", paramString);
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\RequestListenerImpl\AddWeiBoListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */