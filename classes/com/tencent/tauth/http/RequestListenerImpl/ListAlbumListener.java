package com.tencent.tauth.http.RequestListenerImpl;

import com.tencent.tauth.bean.Album;
import com.tencent.tauth.http.BaseRequestListener;
import com.tencent.tauth.http.Callback;
import com.tencent.tauth.http.CommonException;
import com.tencent.tauth.http.ParseResoneJson;
import com.tencent.tauth.http.TDebug;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ListAlbumListener
  extends BaseRequestListener
{
  private static final String TAG = "ListAlbumListener";
  private Callback mCallback;
  
  public ListAlbumListener(Callback paramCallback)
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
        localObject = ParseResoneJson.parseJson(paramString);
        i = 0;
      }
      catch (NumberFormatException paramObject)
      {
        Object localObject;
        int i;
        int j;
        JSONObject localJSONObject;
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
        j = ((JSONObject)localObject).getInt("ret");
        i = j;
        paramObject = ((JSONObject)localObject).getString("msg");
      }
      catch (JSONException paramObject)
      {
        paramObject = "";
        j = i;
        continue;
        localJSONObject = ((JSONArray)paramObject).getJSONObject(i);
        ((ArrayList)localObject).add(new Album(localJSONObject.getString("albumid"), localJSONObject.getInt("classid"), localJSONObject.getLong("createtime"), localJSONObject.getString("desc"), localJSONObject.getString("name"), localJSONObject.getInt("picnum"), localJSONObject.getInt("priv")));
        i += 1;
        continue;
        this.mCallback.onFail(j, (String)paramObject);
      }
    }
    if (j == 0)
    {
      j = ((JSONObject)localObject).getInt("albumnum");
      paramObject = ((JSONObject)localObject).getJSONArray("album");
      localObject = new ArrayList();
      i = 0;
      if (i >= j)
      {
        this.mCallback.onSuccess(localObject);
        TDebug.i("ListAlbumListener", paramString);
        return;
      }
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\RequestListenerImpl\ListAlbumListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */