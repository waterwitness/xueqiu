package com.tencent.tauth.http.RequestListenerImpl;

import com.tencent.tauth.bean.TopicRichInfo;
import com.tencent.tauth.http.BaseRequestListener;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.CommonException;
import com.tencent.tauth.http.ParseResoneJson;
import com.tencent.tauth.http.TDebug;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

public class AddTopicListener
  extends BaseRequestListener
{
  private static final String TAG = "AddShareListener";
  private Callback mCallback;
  
  public AddTopicListener(Callback paramCallback)
  {
    this.mCallback = paramCallback;
  }
  
  public void onComplete(String paramString, Object paramObject)
  {
    super.onComplete(paramString, paramObject);
    try
    {
      localJSONObject = ParseResoneJson.parseJson(paramString);
      i = 0;
      str = "";
      paramObject = str;
    }
    catch (NumberFormatException paramObject)
    {
      for (;;)
      {
        JSONObject localJSONObject;
        int i;
        String str;
        int j;
        this.mCallback.onFail(Integer.MIN_VALUE, ((NumberFormatException)paramObject).getMessage());
        ((NumberFormatException)paramObject).printStackTrace();
      }
    }
    catch (JSONException paramObject)
    {
      for (;;)
      {
        this.mCallback.onFail(Integer.MIN_VALUE, ((JSONException)paramObject).getMessage());
        ((JSONException)paramObject).printStackTrace();
      }
    }
    catch (CommonException paramObject)
    {
      for (;;)
      {
        label67:
        this.mCallback.onFail(Integer.MIN_VALUE, ((CommonException)paramObject).getMessage());
        ((CommonException)paramObject).printStackTrace();
      }
    }
    try
    {
      j = localJSONObject.getInt("ret");
      paramObject = str;
      i = j;
      str = localJSONObject.getString("msg");
      paramObject = str;
      i = j;
      this.mCallback.onFail(j, str);
      i = j;
      paramObject = str;
    }
    catch (JSONException localJSONException)
    {
      break label67;
    }
    if (i == 0)
    {
      paramObject = localJSONObject.getJSONObject("richinfo");
      paramObject = new TopicRichInfo(((JSONObject)paramObject).getInt("rtype"), ((JSONObject)paramObject).getString("url2"), ((JSONObject)paramObject).getString("url3"), ((JSONObject)paramObject).getInt("who"));
      this.mCallback.onSuccess(paramObject);
    }
    for (;;)
    {
      TDebug.i("AddShareListener", paramString);
      return;
      this.mCallback.onFail(i, (String)paramObject);
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\RequestListenerImpl\AddTopicListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */